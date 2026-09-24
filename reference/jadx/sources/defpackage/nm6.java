package defpackage;

import android.content.pm.PackageInfo;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nm6 {
    public nm6(jz jzVar) {
    }

    public static boolean a(List list, mt3 mt3Var) {
        if (list == null || list.isEmpty()) {
            return true;
        }
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    list = null;
                    break;
                }
            } while (((Number) it.next()).longValue() <= 0);
        } else {
            list = null;
            break;
        }
        if (list == null) {
            return true;
        }
        g00 g00Var = g00.a;
        SwiftApp.Companion companion = SwiftApp.d;
        PackageInfo packageInfoQ = g00.q(0, SwiftApp.Companion.c().getPackageName());
        if (packageInfoQ == null) {
            return true;
        }
        long jR = jd4.r(packageInfoQ);
        Long lValueOf = Long.valueOf(jR);
        if (jR <= 0) {
            lValueOf = null;
        }
        if (lValueOf == null) {
            return true;
        }
        long jLongValue = lValueOf.longValue();
        Iterator it2 = list.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (((Number) it2.next()).longValue() > jLongValue) {
                break;
            }
            i++;
        }
        Integer numValueOf = i >= 0 ? Integer.valueOf(i) : null;
        if (numValueOf == null) {
            return true;
        }
        long jLongValue2 = ((Number) list.get(numValueOf.intValue())).longValue();
        if (jLongValue2 <= jLongValue) {
            return true;
        }
        StringBuilder sbT = dj7.t("Backup requires a higher version of Swift Backup for restore. Current Swift Backup version: ", ", Required: ", jLongValue);
        sbT.append(jLongValue2);
        sbT.append(".");
        mt3Var.invoke(sbT.toString());
        return false;
    }

    public final boolean b(final iu iuVar, final String str, final long j, final long j2, final long j3) {
        iuVar.getClass();
        return ((Boolean) new gv7(new bt3() { // from class: lm6
            @Override // defpackage.bt3
            public final Object invoke() {
                long j4 = j3;
                boolean zC = true;
                if (j4 > 0) {
                    zC = eq.c(j2, j4, iuVar.toDisplayString(true));
                }
                return Boolean.valueOf(zC);
            }
        }).getValue()).booleanValue() || ((Boolean) new gv7(new bt3() { // from class: mm6
            @Override // defpackage.bt3
            public final Object invoke() {
                String str2 = str;
                return Boolean.valueOf((str2 == null || str2.length() == 0) ? false : eq.b(j, iuVar, str2));
            }
        }).getValue()).booleanValue();
    }
}
