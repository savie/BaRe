package defpackage;

import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pj7 {
    public static oj7 a(q63 q63Var, long j) {
        long jMax = Math.max(16777216L, j / 100);
        return b(q63Var, j <= Long.MAX_VALUE - jMax ? j + jMax : Long.MAX_VALUE);
    }

    public static oj7 b(q63 q63Var, long j) {
        boolean z;
        long jLongValue;
        p93 p93Var = p93.a;
        String strC = p93.c(Long.valueOf(j));
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("skip_disk_space_checks", false);
            if (z) {
                vr6.INSTANCE.w("SpaceChecker", "Free disk space check is disabled. Path: " + q63Var + ". Needed: " + strC + ".", vr6.a.YELLOW);
                return null;
            }
            if (q63Var == null || q63Var.v().length() <= 0) {
                f6.g(xs1.i(q63Var, "Can't get available memory at invalid path: "));
                return null;
            }
            String str = ry5.u;
            Long lC = qy5.c(q63Var);
            if (lC != null) {
                jLongValue = lC.longValue();
                if (jLongValue > 52428800) {
                    jLongValue -= 52428800;
                }
            } else {
                jLongValue = 0;
            }
            String strC2 = p93.c(Long.valueOf(jLongValue));
            if (jLongValue <= 52428800) {
                String strK = eq3.k("Very low storage space for file read/write operations (", strC2, ")");
                vr6.e$default(vr6.INSTANCE, "SpaceChecker", strK, null, 4, null);
                return new oj7(strK, true);
            }
            boolean z2 = jLongValue < j;
            if (z2) {
                vr6 vr6Var = vr6.INSTANCE;
                StringBuilder sb = new StringBuilder("Insufficient space at ");
                sb.append(q63Var);
                sb.append(". Needed: ");
                sb.append(strC);
                sb.append(", Available: ");
                vr6.e$default(vr6Var, "SpaceChecker", dj7.n(sb, strC2, "."), null, 4, null);
            }
            if (!z2) {
                return null;
            }
            SwiftApp.Companion companion = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(R.string.space_needed_vs_available_error, strC, strC2);
            string.getClass();
            return new oj7(string, false);
        } catch (ClassCastException unused) {
            z = false;
        }
    }
}
