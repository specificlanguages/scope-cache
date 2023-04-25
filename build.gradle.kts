plugins {
    id("com.specificlanguages.mps") version "1.3.0"
    `maven-publish`
}

repositories {
    maven(url = "https://projects.itemis.de/nexus/content/repositories/mbeddr")
    mavenCentral()
}

dependencies {
    "mps"("com.jetbrains:mps:2021.3.2")
}

group = "com.spclngs"
version = "4.0.0"

publishing {
    publications {
        register<MavenPublication>("mpsPlugin") {
            from(components["mps"])

            // Put resolved versions of dependencies into POM files -- uncomment as soon as we have any dependencies
            // versionMapping { usage("java-runtime") { fromResolutionOf("generation") } }
        }
    }
    repositories {
        if (project.hasProperty("gpr.user")) {
            maven {
                name = "GitHubPackages"
                url = uri("https://maven.pkg.github.com/specificlanguages/" + project.name)
                credentials {
                    username = project.findProperty("gpr.user") as String?
                    password = project.findProperty("gpr.key") as String?
                }
            }
        }
    }
}
