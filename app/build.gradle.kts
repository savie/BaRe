plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.compose")
}

val bareVersionCode = System.getenv("BARE_VERSION_CODE")?.toIntOrNull() ?: 1
val bareVersionName = (System.getenv("BARE_VERSION_NAME") ?: "0.1.0").trim()
val stableDebugKeystore = file("${System.getProperty("user.home")}/.android/debug.keystore")

require(bareVersionCode in 1..2_100_000_000) {
    "BARE_VERSION_CODE must be between 1 and 2100000000"
}
require(bareVersionName.isNotBlank()) { "BARE_VERSION_NAME must not be blank" }
require(bareVersionName.matches(Regex("\\d+\\.\\d+\\.\\d+"))) {
    "BARE_VERSION_NAME must use MAJOR.MINOR.PATCH format"
}

android {
    namespace = "com.bare"
    compileSdk = 36

    defaultConfig {
        applicationId = "com.bare"
        minSdk = 26
        targetSdk = 36
        versionCode = bareVersionCode
        versionName = bareVersionName
    }

    buildFeatures {
        compose = true
        aidl = true
    }

    // CI injects this exact development identity so APK updates remain installable in-place.
    // The CI workflow independently verifies the resulting APK certificate fingerprint.
    // Keep the signing configuration deterministic across every update build.
    if (stableDebugKeystore.exists()) {
        signingConfigs {
            create("stableDebug") {
                storeFile = stableDebugKeystore
                storePassword = "android"
                keyAlias = "androiddebugkey"
                keyPassword = "android"
            }
        }

        buildTypes {
            getByName("debug") {
                signingConfig = signingConfigs.getByName("stableDebug")
            }
        }
    }
}

kotlin { jvmToolchain(17) }

dependencies {
    implementation(project(":core:domain"))
    implementation("androidx.activity:activity-compose:1.11.0")
    implementation("androidx.compose.material3:material3:1.4.0")
    implementation("dev.rikka.shizuku:api:13.1.5")
    implementation("dev.rikka.shizuku:provider:13.1.5")
    implementation("dev.mobile:dadb:2.0.0")
    testImplementation("junit:junit:4.13.2")
    testImplementation("org.json:json:20250517")
}
