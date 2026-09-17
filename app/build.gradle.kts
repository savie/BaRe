import java.io.File

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.compose")
}

android {
    namespace = "com.savie.bare"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.savie.bare"
        minSdk = 26
        targetSdk = 35
        versionCode = System.getenv("BARE_VERSION_CODE")?.toIntOrNull() ?: 1
        versionName = System.getenv("BARE_VERSION_NAME") ?: "1.0"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"
    }

    val stableDebugKeystorePath = System.getenv("BARE_DEBUG_KEYSTORE_PATH")
    if (!stableDebugKeystorePath.isNullOrBlank()) {
        signingConfigs {
            create("stableDebug") {
                storeFile = File(stableDebugKeystorePath)
                storePassword = System.getenv("BARE_DEBUG_KEYSTORE_PASSWORD") ?: "android"
                keyAlias = System.getenv("BARE_DEBUG_KEY_ALIAS") ?: "androiddebugkey"
                keyPassword = System.getenv("BARE_DEBUG_KEY_PASSWORD") ?: "android"
            }
        }
        buildTypes.getByName("debug") {
            signingConfig = signingConfigs.getByName("stableDebug")
        }
    }

    buildFeatures {
        compose = true
    }

    packaging {
        resources.excludes += "/META-INF/{AL2.0,LGPL2.1}"
    }
}

dependencies {
    implementation(platform("androidx.compose:compose-bom:2025.01.00"))
    implementation("androidx.activity:activity-compose:1.10.0")
    implementation("androidx.compose.material3:material3")
    implementation("androidx.compose.material:material-icons-extended")
    implementation("androidx.lifecycle:lifecycle-runtime-compose:2.8.7")
}
