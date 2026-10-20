# Keep app and target-package JNI entry points stable.
-keep class com.bareapps.barebackup.BareApp { *; }
-keep class com.bareapps.sba.** { *; }
-keep interface com.bareapps.sba.internal.progress.SbaNativeProgressListener { *; }
-keep class com.bareapps.sba.internal.tar.SbaTarEntryInfo { *; }
-keep class com.bareapps.rootservice.** { *; }
-keep class com.bareapps.barebackup.apptasks.sba.SbaRootServiceClient { *; }

# AndroidX instrumentation runner resolves Kotlin stdlib APIs from the target/test APKs.
# Keep these runtime classes through the debug and androidTest R8 passes (e.g. kotlin.LazyKt).
-keep class kotlin.** { *; }
-keep class kotlin.Metadata { *; }

# Keep the test-only SwiftBackup JNI oracle's exact exported JNI package/class names.
-keep class com.swiftapps.sba.** { *; }
