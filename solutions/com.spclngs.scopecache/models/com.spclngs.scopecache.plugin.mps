<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:48d8a843-878c-4a52-916f-bc912e17ff63(com.spclngs.scopecache.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
  </languages>
  <imports>
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="nvd4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.repository(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239360506533" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleDeclaration" flags="ng" index="2fD8I5">
        <child id="1239529553065" name="component" index="2pHZQ9" />
      </concept>
      <concept id="1239462176079" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentDeclaration" flags="ng" index="2lGYhJ">
        <child id="1239462974287" name="type" index="2lK19J" />
      </concept>
      <concept id="1239559992092" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleLiteral" flags="nn" index="2ry78W">
        <reference id="1239560008022" name="tupleDeclaration" index="2ryb1Q" />
        <child id="1239560910577" name="componentRef" index="2r_Bvh" />
      </concept>
      <concept id="1239560581441" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentReference" flags="ng" index="2r$n1x">
        <reference id="1239560595302" name="componentDeclaration" index="2r$qp6" />
        <child id="1239560837729" name="value" index="2r_lH1" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="1eve2$FfoCx" />
  <node concept="312cEu" id="1eve2$FfOop">
    <property role="TrG5h" value="ScopeCache" />
    <node concept="Wx3nA" id="4_WQqUQnf6I" role="jymVt">
      <property role="TrG5h" value="CACHE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4_WQqUQnf6L" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
        <node concept="3uibUv" id="4_WQqUQnf6M" role="11_B2D">
          <ref role="3uigEE" to="33ny:~HashMap" resolve="HashMap" />
          <node concept="3uibUv" id="4_WQqUQnf6N" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="4_WQqUQnf6O" role="11_B2D">
            <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="4_WQqUQnf6P" role="33vP2m">
        <ref role="37wK5l" to="wyt6:~ThreadLocal.withInitial(java.util.function.Supplier)" resolve="withInitial" />
        <ref role="1Pybhc" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
        <node concept="1bVj0M" id="4_WQqUQnf6Q" role="37wK5m">
          <node concept="3clFbS" id="4_WQqUQnf6R" role="1bW5cS">
            <node concept="3clFbF" id="4_WQqUQnf6S" role="3cqZAp">
              <node concept="2ShNRf" id="4_WQqUQnf6T" role="3clFbG">
                <node concept="1pGfFk" id="4_WQqUQnf6U" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                  <node concept="3uibUv" id="4_WQqUQnf6V" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="3uibUv" id="4_WQqUQnf6W" role="1pMfVU">
                    <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4_WQqUQnf6K" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="65TFuzVs76E" role="jymVt">
      <property role="TrG5h" value="ACTIVE" />
      <node concept="3Tm6S6" id="65TFuzVs6rg" role="1B3o_S" />
      <node concept="10P_77" id="65TFuzVs75m" role="1tU5fm" />
      <node concept="3clFbT" id="65TFuzVs7CS" role="33vP2m" />
    </node>
    <node concept="3Tm1VV" id="1eve2$FfOoq" role="1B3o_S" />
    <node concept="2YIFZL" id="4_WQqUQnfRU" role="jymVt">
      <property role="TrG5h" value="readStarted" />
      <node concept="3clFbS" id="4_WQqUQnfRY" role="3clF47">
        <node concept="3clFbF" id="65TFuzVs7Jl" role="3cqZAp">
          <node concept="37vLTI" id="65TFuzVs81X" role="3clFbG">
            <node concept="3clFbT" id="65TFuzVs82R" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="65TFuzVs7Jk" role="37vLTJ">
              <ref role="3cqZAo" node="65TFuzVs76E" resolve="ACTIVE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4_WQqUQnfRX" role="3clF45" />
      <node concept="3Tm1VV" id="4_WQqUQnfRW" role="1B3o_S" />
      <node concept="P$JXv" id="4_WQqUQnfS3" role="lGtFl">
        <node concept="TZ5HA" id="4_WQqUQnfS4" role="TZ5H$">
          <node concept="1dT_AC" id="4_WQqUQnfS5" role="1dT_Ay">
            <property role="1dT_AB" value="Called by read action listeners" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1eve2$FgaJy" role="jymVt" />
    <node concept="2YIFZL" id="4_WQqUQngx1" role="jymVt">
      <property role="TrG5h" value="readFinished" />
      <node concept="3clFbS" id="4_WQqUQngx5" role="3clF47">
        <node concept="3clFbF" id="4_WQqUQngx6" role="3cqZAp">
          <node concept="2OqwBi" id="4_WQqUQngx7" role="3clFbG">
            <node concept="37vLTw" id="4_WQqUQngx8" role="2Oq$k0">
              <ref role="3cqZAo" node="4_WQqUQnf6I" resolve="CACHE" />
            </node>
            <node concept="liA8E" id="4_WQqUQngx9" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ThreadLocal.remove()" resolve="remove" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65TFuzVs8cC" role="3cqZAp">
          <node concept="37vLTI" id="65TFuzVs8wf" role="3clFbG">
            <node concept="3clFbT" id="65TFuzVs8xS" role="37vLTx" />
            <node concept="37vLTw" id="65TFuzVs8cA" role="37vLTJ">
              <ref role="3cqZAo" node="65TFuzVs76E" resolve="ACTIVE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4_WQqUQngx4" role="3clF45" />
      <node concept="3Tm1VV" id="4_WQqUQngx3" role="1B3o_S" />
      <node concept="P$JXv" id="4_WQqUQngxe" role="lGtFl">
        <node concept="TZ5HA" id="4_WQqUQngxf" role="TZ5H$">
          <node concept="1dT_AC" id="4_WQqUQngxg" role="1dT_Ay">
            <property role="1dT_AB" value="Called by read action listeners" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1eve2$Fgbsu" role="jymVt" />
    <node concept="2YIFZL" id="4_WQqUQnoS$" role="jymVt">
      <property role="TrG5h" value="cache" />
      <node concept="3clFbS" id="4_WQqUQnoSA" role="3clF47">
        <node concept="3clFbJ" id="65TFuzVs8Qx" role="3cqZAp">
          <node concept="3clFbS" id="65TFuzVs8Qz" role="3clFbx">
            <node concept="3SKdUt" id="65TFuzVsbQG" role="3cqZAp">
              <node concept="1PaTwC" id="65TFuzVsbQH" role="1aUNEU">
                <node concept="3oM_SD" id="65TFuzVsbQI" role="1PaTwD">
                  <property role="3oM_SC" value="Cache" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsc7C" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsc7H" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsc7O" role="1PaTwD">
                  <property role="3oM_SC" value="active" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsc7X" role="1PaTwD">
                  <property role="3oM_SC" value="outside" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsc8g" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsc8t" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsc8O" role="1PaTwD">
                  <property role="3oM_SC" value="read" />
                </node>
                <node concept="3oM_SD" id="65TFuzVscfs" role="1PaTwD">
                  <property role="3oM_SC" value="action," />
                </node>
                <node concept="3oM_SD" id="65TFuzVscc9" role="1PaTwD">
                  <property role="3oM_SC" value="evaluate" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsccw" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsce9" role="1PaTwD">
                  <property role="3oM_SC" value="factory" />
                </node>
                <node concept="3oM_SD" id="65TFuzVsceG" role="1PaTwD">
                  <property role="3oM_SC" value="then." />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="65TFuzVs9AN" role="3cqZAp">
              <node concept="2OqwBi" id="65TFuzVs9Lv" role="3cqZAk">
                <node concept="37vLTw" id="65TFuzVs9Bx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_WQqUQnoT3" resolve="factory" />
                </node>
                <node concept="liA8E" id="65TFuzVsb9t" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Supplier.get()" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="65TFuzVs9jn" role="3clFbw">
            <node concept="37vLTw" id="65TFuzVs9jp" role="3fr31v">
              <ref role="3cqZAo" node="65TFuzVs76E" resolve="ACTIVE" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_WQqUQnoSB" role="3cqZAp">
          <node concept="2OqwBi" id="4_WQqUQnoSC" role="3clFbG">
            <node concept="2OqwBi" id="4_WQqUQnoSD" role="2Oq$k0">
              <node concept="37vLTw" id="4_WQqUQnoSE" role="2Oq$k0">
                <ref role="3cqZAo" node="4_WQqUQnf6I" resolve="CACHE" />
              </node>
              <node concept="liA8E" id="4_WQqUQnoSF" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
              </node>
            </node>
            <node concept="liA8E" id="4_WQqUQnoSG" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~HashMap.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
              <node concept="37vLTw" id="4_WQqUQnoSH" role="37wK5m">
                <ref role="3cqZAo" node="4_WQqUQnoT1" resolve="key" />
              </node>
              <node concept="2ShNRf" id="4_WQqUQnoSI" role="37wK5m">
                <node concept="YeOm9" id="4_WQqUQnoSJ" role="2ShVmc">
                  <node concept="1Y3b0j" id="4_WQqUQnoSK" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="82uw:~Function" resolve="Function" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="4_WQqUQnoSL" role="1B3o_S" />
                    <node concept="3clFb_" id="4_WQqUQnoSM" role="jymVt">
                      <property role="TrG5h" value="apply" />
                      <node concept="3Tm1VV" id="4_WQqUQnoSN" role="1B3o_S" />
                      <node concept="3uibUv" id="4_WQqUQnoSO" role="3clF45">
                        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
                      </node>
                      <node concept="37vLTG" id="4_WQqUQnoSP" role="3clF46">
                        <property role="TrG5h" value="p1" />
                        <node concept="3uibUv" id="4_WQqUQnoSQ" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4_WQqUQnoSR" role="3clF47">
                        <node concept="3cpWs6" id="4_WQqUQnoSS" role="3cqZAp">
                          <node concept="2OqwBi" id="4_WQqUQnoST" role="3cqZAk">
                            <node concept="37vLTw" id="4_WQqUQnoSU" role="2Oq$k0">
                              <ref role="3cqZAo" node="4_WQqUQnoT3" resolve="factory" />
                            </node>
                            <node concept="liA8E" id="4_WQqUQnoSV" role="2OqNvi">
                              <ref role="37wK5l" to="82uw:~Supplier.get()" resolve="get" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4_WQqUQnoSW" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="4_WQqUQnoSX" role="2Ghqu4">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="3uibUv" id="4_WQqUQnoSY" role="2Ghqu4">
                      <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4_WQqUQnoT0" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="4_WQqUQnoT1" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="4_WQqUQnoT2" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4_WQqUQnoT3" role="3clF46">
        <property role="TrG5h" value="factory" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4_WQqUQnoT4" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
          <node concept="3qUE_q" id="4_WQqUQnoT5" role="11_B2D">
            <node concept="3uibUv" id="4_WQqUQnoT6" role="3qUE_r">
              <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4_WQqUQnyzw" role="1B3o_S" />
      <node concept="P$JXv" id="4_WQqUQn_qT" role="lGtFl">
        <node concept="TZ5HA" id="4_WQqUQn_qU" role="TZ5H$">
          <node concept="1dT_AC" id="4_WQqUQn_qV" role="1dT_Ay">
            <property role="1dT_AB" value="Look up the scope under the given key, or compute it if absent and store under the given key for later lookup." />
          </node>
        </node>
        <node concept="TUZQ0" id="4_WQqUQn_qW" role="3nqlJM">
          <property role="TUZQ4" value="lookup key, used as a map key" />
          <node concept="zr_55" id="4_WQqUQn_qY" role="zr_5Q">
            <ref role="zr_51" node="4_WQqUQnoT1" resolve="key" />
          </node>
        </node>
        <node concept="TUZQ0" id="4_WQqUQn_qZ" role="3nqlJM">
          <property role="TUZQ4" value="the code to compute the return value if not computed previously" />
          <node concept="zr_55" id="4_WQqUQn_r1" role="zr_5Q">
            <ref role="zr_51" node="4_WQqUQnoT3" resolve="factory" />
          </node>
        </node>
        <node concept="x79VA" id="4_WQqUQn_r2" role="3nqlJM">
          <property role="x79VB" value="the computed or looked up value." />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65TFuzVrgmE" role="jymVt" />
    <node concept="3UR2Jj" id="4_WQqUQmSCl" role="lGtFl">
      <node concept="TZ5HA" id="4_WQqUQmSCm" role="TZ5H$">
        <node concept="1dT_AC" id="4_WQqUQmSCn" role="1dT_Ay">
          <property role="1dT_AB" value="Caches scopes computed during a single read action in a single thread. The cache is disabled during a write action." />
        </node>
      </node>
      <node concept="TZ5HA" id="4_WQqUQmTmk" role="TZ5H$">
        <node concept="1dT_AC" id="4_WQqUQmTml" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="4_WQqUQmTmq" role="TZ5H$">
        <node concept="1dT_AC" id="4_WQqUQmTmr" role="1dT_Ay">
          <property role="1dT_AB" value="Even though it is short-lived, the scope cache can be used to significantly speed up reference checks on large models." />
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="3wU$4$NarJ$">
    <property role="TrG5h" value="BindCacheListener" />
    <node concept="2BZ0e9" id="65TFuzVuSoJ" role="2uRRBG">
      <property role="TrG5h" value="globalModelAccess" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="65TFuzVuSoK" role="1B3o_S" />
      <node concept="3uibUv" id="65TFuzVuUOa" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
      </node>
      <node concept="2OqwBi" id="65TFuzVuUB3" role="33vP2m">
        <node concept="2YIFZM" id="65TFuzVuUB4" role="2Oq$k0">
          <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
          <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
        </node>
        <node concept="liA8E" id="65TFuzVuUB5" role="2OqNvi">
          <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="3wU$4$NarLd" role="2uRRBG">
      <property role="TrG5h" value="listener" />
      <node concept="3Tm6S6" id="3wU$4$NarLe" role="1B3o_S" />
      <node concept="3uibUv" id="3wU$4$NarLf" role="1tU5fm">
        <ref role="3uigEE" to="nvd4:~ReadActionListener" resolve="ReadActionListener" />
      </node>
      <node concept="2ShNRf" id="3wU$4$NarLg" role="33vP2m">
        <node concept="YeOm9" id="3wU$4$NarLh" role="2ShVmc">
          <node concept="1Y3b0j" id="3wU$4$NarLi" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="nvd4:~ReadActionListener" resolve="ReadActionListener" />
            <node concept="3Tm1VV" id="3wU$4$NarLj" role="1B3o_S" />
            <node concept="3clFb_" id="3wU$4$NarLk" role="jymVt">
              <property role="TrG5h" value="readStarted" />
              <node concept="3Tm1VV" id="3wU$4$NarLl" role="1B3o_S" />
              <node concept="3cqZAl" id="3wU$4$NarLm" role="3clF45" />
              <node concept="3clFbS" id="3wU$4$NarLn" role="3clF47">
                <node concept="3clFbF" id="3wU$4$NarLo" role="3cqZAp">
                  <node concept="2YIFZM" id="3wU$4$NarLp" role="3clFbG">
                    <ref role="1Pybhc" node="1eve2$FfOop" resolve="ScopeCache" />
                    <ref role="37wK5l" node="4_WQqUQnfRU" resolve="readStarted" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3wU$4$NarLq" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3wU$4$NarLr" role="jymVt" />
            <node concept="3clFb_" id="3wU$4$NarLs" role="jymVt">
              <property role="TrG5h" value="readFinished" />
              <node concept="3Tm1VV" id="3wU$4$NarLt" role="1B3o_S" />
              <node concept="3cqZAl" id="3wU$4$NarLu" role="3clF45" />
              <node concept="3clFbS" id="3wU$4$NarLv" role="3clF47">
                <node concept="3clFbF" id="3wU$4$NarLw" role="3cqZAp">
                  <node concept="2YIFZM" id="3wU$4$NarLx" role="3clFbG">
                    <ref role="1Pybhc" node="1eve2$FfOop" resolve="ScopeCache" />
                    <ref role="37wK5l" node="4_WQqUQngx1" resolve="readFinished" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3wU$4$NarLy" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="3wU$4$NaxvI" role="lGtFl">
        <node concept="TZ5HA" id="3wU$4$NaxvJ" role="TZ5H$">
          <node concept="1dT_AC" id="3wU$4$NaxvK" role="1dT_Ay">
            <property role="1dT_AB" value="Once MPSModuleRepository is deprecated and goes away this application plugin can be replaced with a project plugin" />
          </node>
        </node>
        <node concept="TZ5HA" id="65TFuzVuQM_" role="TZ5H$">
          <node concept="1dT_AC" id="65TFuzVuQMA" role="1dT_Ay">
            <property role="1dT_AB" value="that would add a listener for each open project." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBj" id="3wU$4$NarQH" role="2uRRBE">
      <node concept="3clFbS" id="3wU$4$NarQI" role="2VODD2">
        <node concept="3clFbF" id="3wU$4$Nasbc" role="3cqZAp">
          <node concept="2OqwBi" id="3wU$4$NawML" role="3clFbG">
            <node concept="2OqwBi" id="65TFuzVuUPz" role="2Oq$k0">
              <node concept="2WthIp" id="65TFuzVuUPA" role="2Oq$k0" />
              <node concept="2BZ7hE" id="65TFuzVuUPC" role="2OqNvi">
                <ref role="2WH_rO" node="65TFuzVuSoJ" resolve="globalModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="3wU$4$NawWw" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.addReadActionListener(org.jetbrains.mps.openapi.repository.ReadActionListener)" resolve="addReadActionListener" />
              <node concept="2OqwBi" id="3wU$4$NawXF" role="37wK5m">
                <node concept="2WthIp" id="3wU$4$NawXI" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3wU$4$NawXK" role="2OqNvi">
                  <ref role="2WH_rO" node="3wU$4$NarLd" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="3wU$4$NawZh" role="2uRRBF">
      <node concept="3clFbS" id="3wU$4$NawZi" role="2VODD2">
        <node concept="3clFbF" id="3wU$4$Nax3d" role="3cqZAp">
          <node concept="2OqwBi" id="3wU$4$Nax3e" role="3clFbG">
            <node concept="2OqwBi" id="65TFuzVuURJ" role="2Oq$k0">
              <node concept="2WthIp" id="65TFuzVuURM" role="2Oq$k0" />
              <node concept="2BZ7hE" id="65TFuzVuURO" role="2OqNvi">
                <ref role="2WH_rO" node="65TFuzVuSoJ" resolve="globalModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="3wU$4$Nax3i" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.removeReadActionListener(org.jetbrains.mps.openapi.repository.ReadActionListener)" resolve="removeReadActionListener" />
              <node concept="2OqwBi" id="3wU$4$Nax3j" role="37wK5m">
                <node concept="2WthIp" id="3wU$4$Nax3k" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3wU$4$Nax3l" role="2OqNvi">
                  <ref role="2WH_rO" node="3wU$4$NarLd" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="65TFuzVridp">
    <property role="TrG5h" value="ScopeCacheKeys" />
    <node concept="2YIFZL" id="65TFuzVriw6" role="jymVt">
      <property role="TrG5h" value="forScopeProvider" />
      <node concept="3clFbS" id="65TFuzVriw9" role="3clF47">
        <node concept="3clFbF" id="65TFuzVuKi1" role="3cqZAp">
          <node concept="2ry78W" id="65TFuzVuKi0" role="3clFbG">
            <ref role="2ryb1Q" node="1eve2$FjnZz" resolve="ScopeCacheKeys.ScopeProviderKey" />
            <node concept="2r$n1x" id="65TFuzVuKhW" role="2r_Bvh">
              <ref role="2r$qp6" node="1eve2$FjoPd" resolve="anchor" />
              <node concept="37vLTw" id="65TFuzVuKrK" role="2r_lH1">
                <ref role="3cqZAo" node="65TFuzVriEP" resolve="anchor" />
              </node>
            </node>
            <node concept="2r$n1x" id="65TFuzVuKhY" role="2r_Bvh">
              <ref role="2r$qp6" node="1eve2$FjoVi" resolve="kind" />
              <node concept="37vLTw" id="65TFuzVuKuM" role="2r_lH1">
                <ref role="3cqZAo" node="65TFuzVriFD" resolve="kind" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="65TFuzVriic" role="1B3o_S" />
      <node concept="3uibUv" id="65TFuzVrioP" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="65TFuzVriEP" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="65TFuzVrj1m" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="65TFuzVriFD" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="65TFuzVriQ0" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="65TFuzVuZ9s" role="lGtFl">
        <node concept="TZ5HA" id="65TFuzVuZ9t" role="TZ5H$">
          <node concept="1dT_AC" id="65TFuzVuZ9u" role="1dT_Ay">
            <property role="1dT_AB" value="A key for caching scopes returned by a ScopeProvider.getScope(kind)." />
          </node>
        </node>
        <node concept="TUZQ0" id="65TFuzVuZ9v" role="3nqlJM">
          <property role="TUZQ4" value="scope anchor node (part of the key). Usually the current node but may be another node that the scope depends on " />
          <node concept="zr_55" id="65TFuzVuZ9x" role="zr_5Q">
            <ref role="zr_51" node="65TFuzVriEP" resolve="anchor" />
          </node>
        </node>
        <node concept="TUZQ0" id="65TFuzVuZ9y" role="3nqlJM">
          <property role="TUZQ4" value="concept of scope elements (part of the key). Serves to differentiate between scopes for the same anchor node" />
          <node concept="zr_55" id="65TFuzVuZ9$" role="zr_5Q">
            <ref role="zr_51" node="65TFuzVriFD" resolve="kind" />
          </node>
        </node>
        <node concept="x79VA" id="65TFuzVuZ9_" role="3nqlJM">
          <property role="x79VB" value="the cache key combining all the input parameters" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65TFuzVrj7b" role="jymVt" />
    <node concept="2YIFZL" id="65TFuzVrjpj" role="jymVt">
      <property role="TrG5h" value="forInlineScope" />
      <node concept="3clFbS" id="65TFuzVrjpm" role="3clF47">
        <node concept="3clFbF" id="65TFuzVuHN4" role="3cqZAp">
          <node concept="2ry78W" id="65TFuzVuJSN" role="3clFbG">
            <ref role="2ryb1Q" node="4_WQqUOMlhN" resolve="ScopeCacheKeys.InlineScopeKey" />
            <node concept="2r$n1x" id="65TFuzVuJSJ" role="2r_Bvh">
              <ref role="2r$qp6" node="4_WQqUOMlUU" resolve="link" />
              <node concept="37vLTw" id="65TFuzVuK2a" role="2r_lH1">
                <ref role="3cqZAo" node="65TFuzVrj$o" resolve="link" />
              </node>
            </node>
            <node concept="2r$n1x" id="65TFuzVuJSL" role="2r_Bvh">
              <ref role="2r$qp6" node="4_WQqUOMm5F" resolve="anchor" />
              <node concept="37vLTw" id="65TFuzVuK3H" role="2r_lH1">
                <ref role="3cqZAo" node="65TFuzVrjGH" resolve="anchor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="65TFuzVrjaZ" role="1B3o_S" />
      <node concept="3uibUv" id="65TFuzVrjhY" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="65TFuzVrj$o" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="65TFuzVrHT$" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="37vLTG" id="65TFuzVrjGH" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="65TFuzVrjL2" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="65TFuzVuZlb" role="lGtFl">
        <node concept="TZ5HA" id="65TFuzVuZlc" role="TZ5H$">
          <node concept="1dT_AC" id="65TFuzVuZld" role="1dT_Ay">
            <property role="1dT_AB" value="A key for caching scopes computed by an inline scope concept function in the constraints aspect." />
          </node>
        </node>
        <node concept="TUZQ0" id="65TFuzVuZle" role="3nqlJM">
          <property role="TUZQ4" value="the reference link (part of the key). Serves to differentiate between scopes for the same anchor node." />
          <node concept="zr_55" id="65TFuzVuZlg" role="zr_5Q">
            <ref role="zr_51" node="65TFuzVrj$o" resolve="link" />
          </node>
        </node>
        <node concept="TUZQ0" id="65TFuzVuZlh" role="3nqlJM">
          <property role="TUZQ4" value="scope anchor node (part of the key). Usually the current node but may be another node that the scope depends on " />
          <node concept="zr_55" id="65TFuzVuZlj" role="zr_5Q">
            <ref role="zr_51" node="65TFuzVrjGH" resolve="anchor" />
          </node>
        </node>
        <node concept="x79VA" id="65TFuzVuZlk" role="3nqlJM">
          <property role="x79VB" value="the cache key combining all the input parameters" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65TFuzVuHyb" role="jymVt" />
    <node concept="2fD8I5" id="1eve2$FjnZz" role="jymVt">
      <property role="TrG5h" value="ScopeProviderKey" />
      <node concept="2lGYhJ" id="1eve2$FjoPd" role="2pHZQ9">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="1eve2$FjoVf" role="2lK19J" />
      </node>
      <node concept="2lGYhJ" id="1eve2$FjoVi" role="2pHZQ9">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="1eve2$Fjp4_" role="2lK19J" />
      </node>
      <node concept="3Tm6S6" id="1eve2$FjpCC" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4_WQqUOMgN5" role="jymVt" />
    <node concept="2fD8I5" id="4_WQqUOMlhN" role="jymVt">
      <property role="TrG5h" value="InlineScopeKey" />
      <node concept="2lGYhJ" id="4_WQqUOMlUU" role="2pHZQ9">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="65TFuzVuHJ9" role="2lK19J">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="2lGYhJ" id="4_WQqUOMm5F" role="2pHZQ9">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="4_WQqUOMmdc" role="2lK19J" />
      </node>
      <node concept="3Tm6S6" id="4_WQqUQnz0v" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="65TFuzVuHyL" role="jymVt" />
    <node concept="3Tm1VV" id="65TFuzVridq" role="1B3o_S" />
    <node concept="3UR2Jj" id="65TFuzVrieB" role="lGtFl">
      <node concept="TZ5HA" id="65TFuzVrieC" role="TZ5H$">
        <node concept="1dT_AC" id="65TFuzVrieD" role="1dT_Ay">
          <property role="1dT_AB" value="Convenience methods for creating scope cache keys. You are free to use your own keys if these are not suitable." />
        </node>
      </node>
      <node concept="TZ5HA" id="65TFuzVuZfB" role="TZ5H$">
        <node concept="1dT_AC" id="65TFuzVuZfC" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="65TFuzVuZg3" role="TZ5H$">
        <node concept="1dT_AC" id="65TFuzVuZg4" role="1dT_Ay">
          <property role="1dT_AB" value="Be careful, reusing the same cache key for two different scopes will of course lead to bugs." />
        </node>
      </node>
    </node>
  </node>
</model>

