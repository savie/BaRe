# Keep application and native entry points stable for JNI symbol/method lookup.
-keep class com.bareapps.barebackup.BareApp { *; }
-keep class com.swiftapps.sba.** { *; }
-keep interface com.swiftapps.sba.internal.progress.SbaNativeProgressListener { *; }
-keep class com.swiftapps.sba.internal.tar.SbaTarEntryInfo { *; }
