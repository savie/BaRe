package defpackage;

import android.content.pm.PackageInfo;
import android.util.Log;
import org.swiftapps.swiftbackup.apkreader.ApkManifestParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ng {
    /* JADX WARN: Code duplicated, block: B:13:0x0031 A[Catch: Exception -> 0x0029, TRY_LEAVE, TryCatch #1 {Exception -> 0x0029, blocks: (B:13:0x0031, B:8:0x0023, B:4:0x0018), top: B:40:0x0016, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:19:0x0043  */
    /* JADX WARN: Code duplicated, block: B:20:0x0045  */
    /* JADX WARN: Code duplicated, block: B:22:0x0048  */
    /* JADX WARN: Code duplicated, block: B:25:0x004c A[Catch: Exception -> 0x0049, TryCatch #0 {Exception -> 0x0049, blocks: (B:17:0x003b, B:28:0x0058, B:29:0x005f, B:25:0x004c), top: B:38:0x003b }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0057  */
    /* JADX WARN: Code duplicated, block: B:28:0x0058 A[Catch: Exception -> 0x0049, TryCatch #0 {Exception -> 0x0049, blocks: (B:17:0x003b, B:28:0x0058, B:29:0x005f, B:25:0x004c), top: B:38:0x003b }] */
    /* JADX WARN: Code duplicated, block: B:38:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static rg a(q63 q63Var, boolean z) {
        Exception exc;
        rg apkInfo;
        PackageInfo packageInfoP;
        boolean z2;
        q63Var.getClass();
        p93 p93Var = p93.a;
        String strC = p93.c(Long.valueOf(q63Var.A()));
        try {
            if (z) {
                packageInfoP = null;
                if (packageInfoP != null) {
                    apkInfo = new qg(packageInfoP);
                } else {
                    apkInfo = null;
                }
                if (apkInfo != null) {
                    if (apkInfo.c() >= 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        apkInfo = new ApkManifestParser(q63Var).getApkInfo();
                    }
                    if (apkInfo != null) {
                        throw new RuntimeException("Unable to get APK info both by system or our own APIs");
                    }
                } else {
                    apkInfo = new ApkManifestParser(q63Var).getApkInfo();
                    if (apkInfo != null) {
                        throw new RuntimeException("Unable to get APK info both by system or our own APIs");
                    }
                }
            } else {
                try {
                    g00 g00Var = g00.a;
                    packageInfoP = g00.p(q63Var, 128);
                } catch (Exception e) {
                    Log.e("ApkInfo", "getApkInfo", e);
                    packageInfoP = null;
                }
                if (packageInfoP != null) {
                    apkInfo = new qg(packageInfoP);
                } else {
                    apkInfo = null;
                }
                if (apkInfo != null) {
                    try {
                        if (apkInfo.c() >= 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (!z2) {
                            apkInfo = new ApkManifestParser(q63Var).getApkInfo();
                        }
                        if (apkInfo != null) {
                            throw new RuntimeException("Unable to get APK info both by system or our own APIs");
                        }
                    } catch (Exception e2) {
                        exc = e2;
                        vr6.e$default(vr6.INSTANCE, "ApkInfo", "getApkInfo: apk=" + q63Var + " (" + strC + ")", exc, null, 8, null);
                    }
                } else {
                    apkInfo = new ApkManifestParser(q63Var).getApkInfo();
                    if (apkInfo != null) {
                        throw new RuntimeException("Unable to get APK info both by system or our own APIs");
                    }
                }
            }
        } catch (Exception e3) {
            exc = e3;
            apkInfo = null;
        }
        if (apkInfo != null) {
            rg rgVar = apkInfo.c() >= 0 ? apkInfo : null;
            if (rgVar != null) {
                return rgVar;
            }
        }
        return og.a;
    }
}
