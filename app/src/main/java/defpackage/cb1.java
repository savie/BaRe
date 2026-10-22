package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class cb1 {
    public static final Set a = x50.A0(new String[]{"app", "splits", "libs", "dat", "extdat", "med", "exp", "extra"});
    public static final Set b = x50.A0(new String[]{"fld", "flm"});

    /* JADX WARN: Code duplicated, block: B:9:0x001c  */
    public static va1 a(String str, boolean z) {
        int iH0;
        str.getClass();
        if (!z && !uq7.V(str, "cloud-diagnostics", true)) {
            va1 va1VarB = b(str);
            if (va1VarB == null) {
                va1VarB = null;
            } else {
                String strSubstring = str.substring(0, nq7.k0('.', 0, 6, str));
                int iH1 = nq7.h0(strSubstring, " (", 0, false, 6);
                int iL0 = nq7.l0(6, strSubstring, " (id-");
                if (iH1 <= 0 || iL0 <= iH1 || strSubstring.charAt(iL0 - 1) != ')' || !nq7.b0(strSubstring, ')') || iL0 + 5 >= strSubstring.length() - 1) {
                    va1VarB = null;
                }
            }
            if (va1VarB != null) {
                return va1VarB;
            }
            if (nq7.b0(str, ')') && (iH0 = nq7.h0(str, " (", 0, false, 6)) > 0) {
                return b(str.substring(0, iH0));
            }
        }
        return null;
    }

    public static va1 b(String str) {
        int iK0 = nq7.k0('.', 0, 6, str);
        if (iK0 <= 0 || iK0 == str.length() - 1) {
            return null;
        }
        String strSubstring = str.substring(iK0 + 1);
        if (a.contains(strSubstring)) {
            return va1.APPS;
        }
        if (b.contains(strSubstring)) {
            return va1.FOLDERS;
        }
        return null;
    }
}
