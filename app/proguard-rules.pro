# Keep this file for project-specific R8 rules.
# SDK consumer rules are supplied by the Android Gradle Plugin and library dependencies.
# Add targeted keep rules only if minified runtime testing identifies reflection/JNI requirements.

# YubiKit 3.x removed this legacy internal logger; remaining references are optional legacy paths.
-dontwarn com.yubico.yubikit.core.internal.Logger
