plugins {
    id("org.jetbrains.kotlin.jvm") version "2.2.20"
}

kotlin {
    jvmToolchain(17)
}

dependencies {
    testImplementation(kotlin("test"))
}
