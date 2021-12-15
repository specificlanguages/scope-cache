[![](https://jitpack.io/v/com.spclngs/scope-cache.svg)](https://jitpack.io/#com.spclngs/scope-cache)

# Scope Cache for MPS 2020.3

Speed up reference checks on large models by caching scopes. Inspired by the scope cache in MPS 2021.2
(`EvaluateScopeContext`) but different.

# How to use it?

The library is available as a Maven package from
[GitHub Packages](https://github.com/orgs/specificlanguages/packages?repo_name=scope-cache) and
[JitPack](https://jitpack.io/#com.spclngs/scope-cache) under the
following coordinates:

```xml
<groupId>com.spclngs</groupId>
<artifactId>scope-cache</artifactId>
<version>1.0.0</version>
<type>zip</type>
```

`com.spclngs.ScopeCache` is a static class that contains one method, `cache`, that takes a key and a function to compute
the scope. The cache is only active during a read action and is cleared when the read action finishes. If the cache is
not active, the provided function is called and its value is returned.

While the cache is active, the `cache` method will check for an existing entry and will return the previously computed
value, if found. Otherwise, the function is called and its value is cached and returned.

The cache has no eviction mechanism apart from being cleared after the read action completes.

## Tips

* Avoid `ListScope` class in MPS 2020.3 and use `NamedElementsScope` instead as its `contains` implementation is faster.
* It might make sense to convert a sequence into a set to speed up `Scope#contains` even more.

## Example code

The `com.spclngs.ScopeCacheKeys` class provides some convenience cache keys for use in scope providers or inline scopes.
You are also free to use your own keys. Take care when choosing keys as reusing the same key for two scopes will lead to
bugs.

In a `ScopeProvider`:

```
public virtual Scope getScope(concept<> kind, node<> child) 
  overrides ScopeProvider.getScope { 
  if (kind.isSubConceptOf(ChildA)) { 
    return ScopeCache.cache(ScopeCacheKeys.forScopeProvider(this, concept/ChildA/), { => 
      new NamedElementsScope(this.childrenA); 
    });
  }
  if (kind.isSubConceptOf(ChildB)) { 
    return ScopeCache.cache(ScopeCacheKeys.forScopeProvider(this, concept/ChildA/), { => 
      new NamedElementsScope(this.childrenB); 
    });
  }
  ...
}
```

In the constraints aspect:

```java
link {item} 
  referent set handler <none> 
  scope (referenceNode, contextNode, containmentLink, position, linkTarget)->Scope {
    node<Container> container = contextNode.ancestor<concept = DotExpression, +>.expr.type:ContainerType.container; 
    ScopeCache.cache(ScopeCacheKeys.forInlineScope(link/ItemDotTarget : item/, container), { =>
      new NamedElementsScope(container.items); }); 
  } 
  <no presentation (deprecated)> 
```

# Why cache scopes?

## Checking a reference often requires computing all elements of its scope

One of the checks that are executed during model checking is the reference scope check. This check is simple: go through
each reference, compute its scope (as specified by the constraints aspect) and call `Scope#contains(SNode)` to check
whether the current target of the reference is in scope.

For this check to be fast, the implementation of `contains` should be fast for each scope. In some cases it is simple
to tell whether a given node should be in scope or not, based just on the properties of that node. For example,
`ModelPlusImportedScope` can directly check whether a given node is part of a given model and extends a given concept,
rather than first computing the sequence of all eligible nodes and checking whether the sequence contains the given
node.

MPS provides many `Scope` implementations such as `ListScope`, `SimpleRoleScope`, or `CompositeScope`. Unfortunately,
all of them use a default, non-optimal, implementation of `contains()` which computes the sequence of available
(eligible) nodes by calling `getAvailableElements()` and then calls `contains()` on that sequence. Often,
`getAvailableElements()` produces a new sequence every time, so every call to `contains()` builds the sequence anew.
(`ListScope` was optimized in MPS 2021.2 to perform slightly better in this scenario and avoid rebuilding the sequence.)

In other cases, it may even be the only feasible way of working with the scope. An optimized `contains()` may be more
difficult to write than `getAvailableElements()`, and both have to be kept in sync.

To summarize, when checking whether a reference points to a target in scope, we often compute the available elements for
the scope, check whether the sequence of elements contains a single reference target, and then throw it away.

## Many references have the same scope

When we consider the scopes of all references in a model, we inevitably find that many of them are exactly the same.
In Java, the same set of classes can be used for a method parameter, as for declaring a variable inside the method, or
a field inside the method's containing class. And Java is a programming language with complicated scoping rules, many
business DSLs have simpler rules and many more references with identical scopes.

## MPS 2021.2: scope caching to the rescue! Or not?

If checking a reference means computing all the elements of its scope, and the scope is the same for many references,
an obvious conclusion is to cache the scopes, at least for the duration of a model check. In fact, MPS 2021.2 comes
with such a scope cache. It is only active during a single read action and gets cleared afterwards but this is enough
to speed up model checking on large models.

The MPS 2021.2 scope cache is however not usable in lower MPS versions. What's more, it is only usable in the
constraints aspect, and not when implementing a `ScopeProvider`.

**This project aims to bring the benefits of scope caching to earlier MPS versions and `ScopeProvider`s.**
