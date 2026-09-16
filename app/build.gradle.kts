plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.compose")
}

val bareVersionCode = System.getenv("BARE_VERSION_CODE")?.toIntOrNull() ?: 1
val bareVersionName = (System.getenv("BARE_VERSION_NAME") ?: "0.1.0").trim()

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

    buildFeatures { compose = true }
}

kotlin { jvmToolchain(17) }

dependencies {
    implementation("androidx.activity:activity-compose:1.11.0")
    implementation("androidx.compose.material3:material3:1.4.0")
}
