import java.io.File

plugins {
    id("com.android.application")
}

android {
    namespace = "com.bare"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.bare"
        minSdk = 26
        targetSdk = 35
        versionCode = System.getenv("BARE_VERSION_CODE")?.toIntOrNull() ?: 1
        versionName = System.getenv("BARE_VERSION_NAME") ?: "5.1.0"
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

    packaging {
        resources.excludes += "/META-INF/{AL2.0,LGPL2.1}"
    }
}

dependencies {
    implementation("androidx.core:core-ktx:1.15.0")
    implementation("androidx.appcompat:appcompat:1.7.0")
    implementation("androidx.constraintlayout:constraintlayout:2.2.0")
    implementation("com.google.android.material:material:1.12.0")
    implementation("androidx.documentfile:documentfile:1.0.1")
    implementation("org.apache.commons:commons-compress:1.27.1")
    implementation("com.github.luben:zstd-jni:1.5.7-4@aar")
    testImplementation("junit:junit:4.13.2")
}
