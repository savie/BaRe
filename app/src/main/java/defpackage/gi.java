package defpackage;

import android.content.pm.PackageInfo;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.swiftapps.swiftbackup.apkshare.ApkSharePackageMetadata;
import org.swiftapps.swiftbackup.apkshare.SaiApksMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gi {
    /* JADX WARN: Code duplicated, block: B:103:0x0193  */
    /* JADX WARN: Code duplicated, block: B:18:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x006e  */
    public static fi a(bi biVar) throws Throwable {
        String strC;
        tg tgVar;
        List list;
        List list2;
        Object bn6Var;
        String packageName;
        String packageName2;
        List list3 = biVar.b;
        mp6 mp6Var = mp6.a;
        if (!mp6.f()) {
            return di.a;
        }
        List listN1 = el1.n1(biVar.a, new yg(new xg(0), 0));
        if (listN1.isEmpty()) {
            return new ci(c("No APK files provided"));
        }
        ApkSharePackageMetadata apkSharePackageMetadataB = xh8.B(list3);
        SaiApksMetadata saiApksMetadataA = xh8.A(list3);
        String str = biVar.c;
        List listI = null;
        if (str == null) {
            strC = null;
        } else {
            if (nq7.j0(str)) {
                str = null;
            }
            if (str != null) {
                strC = dg.c(str, "APK import request");
            } else {
                strC = null;
            }
        }
        if (strC == null) {
            q63 q63Var = (q63) el1.U0(listN1);
            if (q63Var != null) {
                g00 g00Var = g00.a;
                PackageInfo packageInfoP = g00.p(q63Var, 0);
                String str2 = packageInfoP != null ? packageInfoP.packageName : null;
                if (str2 != null) {
                    strC = dg.a(str2);
                } else {
                    strC = null;
                }
            } else {
                strC = null;
            }
            e(apkSharePackageMetadataB, saiApksMetadataA, strC);
            if (strC == null) {
                strC = (apkSharePackageMetadataB == null || (packageName2 = apkSharePackageMetadataB.getPackageName()) == null) ? null : dg.c(packageName2, "Swift Backup metadata");
                if (strC == null) {
                    strC = (saiApksMetadataA == null || (packageName = saiApksMetadataA.getPackageName()) == null) ? null : dg.c(packageName, "SAI metadata");
                }
            }
            if (strC == null) {
                return new ci(c("Unable to read package name from APK set"));
            }
        }
        String str3 = strC;
        e(apkSharePackageMetadataB, saiApksMetadataA, str3);
        ai6 ai6Var = dg.a;
        String strA = dg.a(apkSharePackageMetadataB != null ? apkSharePackageMetadataB.getInstallerPackage() : null);
        g00 g00Var2 = g00.a;
        String strValueOf = String.valueOf(g00.i());
        boolean z = mp6.g;
        boolean zF = mp6.f();
        String string = strA != null ? nq7.H0(strA).toString() : null;
        if (string == null) {
            string = "";
        }
        if (z && string.equals("com.android.vending")) {
            tgVar = tg.SourcePreserving;
        } else {
            tgVar = zF ? tg.Shell : tg.Interactive;
        }
        if (tgVar == tg.SourcePreserving && mp6.g && pe4.d(strA, "com.android.vending")) {
            try {
                ai6 ai6Var2 = nj7.a;
                try {
                    bn6Var = nj7.a(new lj7(str3, strA, strValueOf, listN1, d(listN1), 0L, new dq(13)));
                } catch (Throwable th) {
                    th = th;
                    strA = strA;
                    bn6Var = new bn6(th);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            Throwable thA = en6.a(bn6Var);
            if (thA != null) {
                String message = thA.getMessage();
                bn6Var = nc8.I("Failure [Preferred install path unavailable: " + (message != null ? message : "") + "]");
            }
            list = (List) bn6Var;
        } else {
            list = null;
        }
        if (list != null) {
            if (!sd7.e(list)) {
                return new ei(str3, list);
            }
            if (b(list)) {
                if (b(list)) {
                    g00 g00Var3 = g00.a;
                    if (g00.q(0, str3) != null) {
                        list2 = list;
                        vr6.w$default(vr6.INSTANCE, "ApksRootInstaller", dj7.l("Source-preserving install verification failed, but ", str3, " is installed; continuing APKS import. Output=", el1.Y0(list2, null, null, null, null, 63)), null, 4, null);
                        listI = nc8.I("Warning [Source-preserving install verification failed after package install; continuing APKS import]");
                    } else {
                        list2 = list;
                    }
                } else {
                    list2 = list;
                }
                return listI != null ? new ei(str3, listI) : new ci(c(el1.Y0(list2, "\n", null, null, null, 62)));
            }
        }
        List listD = sd7.d(new qd7(d(listN1), false, strValueOf, strA, 0L, null, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS));
        return sd7.e(listD) ? new ci(c(el1.Y0(listD, "\n", null, null, null, 62))) : new ei(str3, listD);
    }

    public static boolean b(List list) {
        if (list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (nq7.Z((String) it.next(), "Install verification failed", true)) {
                return true;
            }
        }
        return false;
    }

    public static cw5 c(String str) {
        ar arVar;
        String upperCase = str.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        if (nq7.Z(upperCase, "INSUFFICIENT_STORAGE", false)) {
            arVar = ar.STATUS_FAILURE_STORAGE;
        } else if (nq7.Z(upperCase, "UPDATE_INCOMPATIBLE", false) || nq7.Z(upperCase, "CONFLICT", false)) {
            arVar = ar.STATUS_FAILURE_CONFLICT;
        } else if (nq7.Z(upperCase, "ABORT", false) || nq7.Z(upperCase, "CANCEL", false)) {
            arVar = ar.STATUS_FAILURE_ABORTED;
        } else {
            arVar = (nq7.Z(upperCase, "INVALID", false) || nq7.Z(upperCase, "MISSING_SPLIT", false) || nq7.Z(upperCase, "NO_MATCHING_ABIS", false)) ? ar.STATUS_FAILURE_INVALID : ar.STATUS_FAILURE;
        }
        return pe4.w(arVar, str, false);
    }

    public static ArrayList d(List list) {
        int i = 0;
        List listN1 = el1.n1(list, new yg(new xg(0), 0));
        ArrayList arrayList = new ArrayList(hl1.G0(listN1, 10));
        for (Object obj : listN1) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            q63 q63Var = (q63) obj;
            arrayList.add(new sg(q63Var.A(), q63Var, i == 0 ? "base" : q63Var.p()));
            i = i2;
        }
        return arrayList;
    }

    public static void e(ApkSharePackageMetadata apkSharePackageMetadata, SaiApksMetadata saiApksMetadata, String str) {
        String packageName;
        String packageName2;
        if (apkSharePackageMetadata != null && (packageName2 = apkSharePackageMetadata.getPackageName()) != null) {
            dg.b(dg.c(packageName2, "Swift Backup metadata"), str, "Swift Backup metadata");
        }
        if (saiApksMetadata == null || (packageName = saiApksMetadata.getPackageName()) == null) {
            return;
        }
        dg.b(dg.c(packageName, "SAI metadata"), str, "SAI metadata");
    }
}
