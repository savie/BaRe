# Keep app and target-package JNI entry points stable.
-keep class com.bareapps.barebackup.BareApp { *; }
-keep class com.bareapps.sba.** { *; }
-keep interface com.bareapps.sba.internal.progress.SbaNativeProgressListener { *; }
-keep class com.bareapps.sba.internal.tar.SbaTarEntryInfo { *; }
