package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class eq {
    public static boolean a(long j, Long l, pg pgVar, rg rgVar, boolean z, boolean z2) {
        String str = pgVar.a;
        long j2 = pgVar.b;
        if (l == null || j != l.longValue()) {
            d(io4.h(l), j, "APK size changed");
            return true;
        }
        if (j2 != rgVar.c()) {
            vr6 vr6Var = vr6.INSTANCE;
            StringBuilder sbT = dj7.t("APK version code changed: Backup: ", ", Current: ", rgVar.c());
            sbT.append(j2);
            vr6.i$default(vr6Var, "AppDataChangeChecker", sbT.toString(), null, 4, null);
            return true;
        }
        if (!str.equals(rgVar.d())) {
            vr6.i$default(vr6.INSTANCE, "AppDataChangeChecker", dj7.l("APK version name changed: Backup: ", rgVar.d(), ", Current: ", str), null, 4, null);
            return true;
        }
        if (pgVar.c != (rgVar.b() && z)) {
            vr6.i$default(vr6.INSTANCE, "AppDataChangeChecker", "Split APKs changed", null, 4, null);
            return true;
        }
        if (pgVar.d != (rgVar.a() && z2)) {
            vr6.i$default(vr6.INSTANCE, "AppDataChangeChecker", "Shared Libs changed", null, 4, null);
            return true;
        }
        vr6.i$default(vr6.INSTANCE, "AppDataChangeChecker", "No change in APKs size, version name or version code", null, 4, null);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.ArrayList] */
    public static boolean b(long j, iu iuVar, String str) {
        boolean z;
        iuVar.getClass();
        str.getClass();
        if (j <= 0) {
            return true;
        }
        int i = 2;
        ?? arrayList = 0;
        List listH = (str.length() != 0 && new jr7(str).b("[ -e @@ ]")) ? mp6.a.h(new String[]{String.format((String) g42.u.getValue(), Arrays.copyOf(new Object[]{str, Long.valueOf((System.currentTimeMillis() - j) / 1000)}, 2))}, ip6.SHIZUKU) : null;
        List listC0 = listH != null ? h77.C0(new me3(new me3(new ll1(listH), false, new d7(str, i)), false, new dq(0))) : null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("KEY_BACKUP_APP_CACHE", false);
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z = sharedPreferences2.getBoolean("backup_app_cache", z);
                if (z) {
                    arrayList = listC0;
                } else if (listC0 != null) {
                    arrayList = new ArrayList();
                    for (Object obj : listC0) {
                        if (!nq7.Z((String) obj, str.concat("/cache"), false)) {
                            arrayList.add(obj);
                        }
                    }
                }
                if (arrayList != 0 && !arrayList.isEmpty()) {
                    vr6.i$default(vr6.INSTANCE, "AppDataChangeChecker", iuVar + " modified files: " + arrayList.size(), null, 4, null);
                }
                return ((arrayList == 0 || arrayList.isEmpty()) ? 1 : 0) ^ 1;
            } catch (ClassCastException unused) {
            }
        } catch (ClassCastException unused2) {
            z = false;
        }
    }

    public static boolean c(long j, long j2, String str) {
        str.getClass();
        boolean z = j2 != j;
        if (z) {
            d(j2, j, str);
            return z;
        }
        vr6.i$default(vr6.INSTANCE, "AppDataChangeChecker", eq3.k("No change in ", str, " size"), null, 4, null);
        return z;
    }

    public static void d(long j, long j2, String str) {
        Long lValueOf = Long.valueOf(j);
        p93 p93Var = p93.a;
        vr6.i$default(vr6.INSTANCE, "AppDataChangeChecker", str + ": Backup: " + ((Object) p93.c(lValueOf)) + ", Current: " + ((Object) p93.c(Long.valueOf(j2))) + ", Diff: " + ((Object) p93.c(Long.valueOf(Math.abs(j - j2)))), null, 4, null);
    }
}
