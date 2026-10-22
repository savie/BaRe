package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.apkshare.ApkSharePackageMetadata;
import org.swiftapps.swiftbackup.apkshare.SaiApksMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class cg {
    /* JADX WARN: Code duplicated, block: B:46:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:68:0x00df  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:79:0x00fc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:81:0x0107 A[PHI: r0
      0x0107: PHI (r0v9 java.lang.String) = (r0v8 java.lang.String), (r0v16 java.lang.String), (r0v19 java.lang.String) binds: [B:70:0x00e8, B:78:0x00fa, B:80:0x00fe] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x0109  */
    /* JADX WARN: Code duplicated, block: B:89:0x011c  */
    /* JADX WARN: Code duplicated, block: B:93:0x012f A[LOOP:0: B:91:0x0129->B:93:0x012f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:96:0x0140  */
    public static bg a(List list, List list2) {
        PackageInfo packageInfoP;
        String str;
        String strG;
        String versionName;
        Long versionCode;
        Long l;
        Drawable drawableO;
        String str2;
        String str3;
        Iterator it;
        long jA;
        ApplicationInfo applicationInfo;
        Object bn6Var;
        String packageName;
        String packageName2;
        List listN1 = el1.n1(list, new yg(new xg(0), 0));
        q63 q63Var = (q63) el1.U0(listN1);
        ApkSharePackageMetadata apkSharePackageMetadataB = xh8.B(list2);
        SaiApksMetadata saiApksMetadataA = xh8.A(list2);
        if (q63Var != null) {
            g00 g00Var = g00.a;
            packageInfoP = g00.p(q63Var, 0);
        } else {
            packageInfoP = null;
        }
        ai6 ai6Var = dg.a;
        String strA = dg.a(packageInfoP != null ? packageInfoP.packageName : null);
        String strC = (apkSharePackageMetadataB == null || (packageName2 = apkSharePackageMetadataB.getPackageName()) == null) ? null : dg.c(packageName2, "Swift Backup metadata");
        String strC2 = (saiApksMetadataA == null || (packageName = saiApksMetadataA.getPackageName()) == null) ? null : dg.c(packageName, "SAI metadata");
        dg.b(strC, strA, "Swift Backup metadata");
        dg.b(strC2, strA, "SAI metadata");
        if (strA == null) {
            str = strC == null ? strC2 : strC;
        } else {
            str = strA;
        }
        if (q63Var == null) {
            strG = null;
        } else {
            if (packageInfoP == null || (applicationInfo = packageInfoP.applicationInfo) == null) {
                strG = null;
            } else {
                applicationInfo.sourceDir = q63Var.v();
                applicationInfo.publicSourceDir = q63Var.v();
                try {
                    g00 g00Var2 = g00.a;
                    bn6Var = applicationInfo.loadLabel(g00.r()).toString();
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                if (bn6Var instanceof bn6) {
                    bn6Var = null;
                }
                strG = (String) bn6Var;
            }
            if (strG == null || nq7.j0(strG)) {
                strG = null;
            }
        }
        if (packageInfoP == null || (versionName = packageInfoP.versionName) == null) {
            versionName = apkSharePackageMetadataB != null ? apkSharePackageMetadataB.getVersionName() : null;
            if (versionName == null) {
                versionName = saiApksMetadataA != null ? saiApksMetadataA.getVersionName() : null;
            }
        }
        if (packageInfoP == null) {
            versionCode = apkSharePackageMetadataB != null ? apkSharePackageMetadataB.getVersionCode() : null;
            if (versionCode == null) {
                if (saiApksMetadataA != null) {
                    versionCode = saiApksMetadataA.getVersionCode();
                } else {
                    l = null;
                }
            }
            if (q63Var != null) {
                g00 g00Var3 = g00.a;
                drawableO = g00.o(q63Var);
            } else {
                drawableO = null;
            }
            if (strG != null) {
                str2 = strG;
            } else {
                if (apkSharePackageMetadataB != null || (strG = apkSharePackageMetadataB.getAppName()) == null || nq7.j0(strG)) {
                    strG = null;
                }
                if (strG != null) {
                    str2 = strG;
                } else if (str == null) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    strG = dj7.g(R.string.unknown);
                    str2 = strG;
                } else {
                    str2 = str;
                }
            }
            if (versionName != null || nq7.j0(versionName) || versionName.equals("null")) {
                str3 = null;
            } else {
                str3 = versionName;
            }
            int size = listN1.size();
            it = listN1.iterator();
            jA = 0;
            while (it.hasNext()) {
                jA = ((q63) it.next()).A() + jA;
            }
            ai6 ai6Var2 = dg.a;
            return new bg(drawableO, str2, str, str3, l, size, jA, dg.a(apkSharePackageMetadataB != null ? apkSharePackageMetadataB.getInstallerPackage() : null));
        }
        versionCode = Long.valueOf(jd4.r(packageInfoP));
        l = versionCode;
        if (q63Var != null) {
            g00 g00Var4 = g00.a;
            drawableO = g00.o(q63Var);
        } else {
            drawableO = null;
        }
        if (strG != null) {
            str2 = strG;
        } else {
            if (apkSharePackageMetadataB != null) {
                strG = null;
            } else {
                strG = null;
            }
            if (strG != null) {
                str2 = strG;
            } else if (str == null) {
                SwiftApp.Companion companion2 = SwiftApp.d;
                strG = dj7.g(R.string.unknown);
                str2 = strG;
            } else {
                str2 = str;
            }
        }
        if (versionName != null) {
            str3 = null;
        } else {
            str3 = null;
        }
        int size2 = listN1.size();
        it = listN1.iterator();
        jA = 0;
        while (it.hasNext()) {
            jA = ((q63) it.next()).A() + jA;
        }
        ai6 ai6Var3 = dg.a;
        return new bg(drawableO, str2, str, str3, l, size2, jA, dg.a(apkSharePackageMetadataB != null ? apkSharePackageMetadataB.getInstallerPackage() : null));
    }
}
