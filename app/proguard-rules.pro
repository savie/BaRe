# Keep app and target-package JNI entry points stable.
-keep class com.bareapps.barebackup.BareApp { *; }
-keep class com.bareapps.barebackup.sba.** { *; }
-keep interface com.bareapps.barebackup.sba.internal.progress.SbaNativeProgressListener { *; }
-keep class com.bareapps.barebackup.sba.internal.tar.SbaTarEntryInfo { *; }
