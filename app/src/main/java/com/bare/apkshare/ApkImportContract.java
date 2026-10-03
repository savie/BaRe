package com.bare.apkshare;
import java.util.Locale;
public final class ApkImportContract {
 public enum InputKind{SINGLE_APK,APKS_ARCHIVE,UNSUPPORTED}
 public static InputKind classify(String name,String mime){String n=name==null?"":name.toLowerCase(Locale.ROOT);if(n.endsWith(".apks"))return InputKind.APKS_ARCHIVE;if(n.endsWith(".apk")||"application/vnd.android.package-archive".equals(mime))return InputKind.SINGLE_APK;return InputKind.UNSUPPORTED;}
 public static boolean acceptsAction(String action){return "android.intent.action.VIEW".equals(action)||"android.intent.action.SEND".equals(action);}
 public static boolean validPackageMetadata(String packageName,String appName){return packageName!=null&&!packageName.trim().isEmpty()&&appName!=null&&!appName.trim().isEmpty();}
}