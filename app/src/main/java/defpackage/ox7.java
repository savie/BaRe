package defpackage;

import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ox7 {
    public static final ox7 a = new ox7();

    public static void a(q63 q63Var, String str, ip6 ip6Var, rt3 rt3Var) {
        Object bn6Var;
        iz6 iz6Var;
        q63Var.getClass();
        str.getClass();
        ip6Var.getClass();
        rt3Var.getClass();
        try {
            HashSet hashSet = mz6.a;
            bn6Var = Long.valueOf(mz6.o(q63Var).size());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (bn6Var instanceof bn6) {
            bn6Var = null;
        }
        Long l = (Long) bn6Var;
        if (l != null && l.longValue() > 0) {
            vr6.i$default(vr6.INSTANCE, "Extractor", "Extracting " + l + " files", null, 4, null);
        }
        kh6 kh6Var = new kh6();
        kh6 kh6Var2 = new kh6();
        kh6 kh6Var3 = new kh6();
        HashSet hashSet2 = mz6.a;
        q63 q63Var2 = new q63(str, 2);
        f27 f27Var = f27.Basic;
        long jA = q63Var.A();
        int i = mx7.a[ip6Var.ordinal()];
        if (i == 1) {
            iz6Var = iz6.Local;
        } else if (i == 2) {
            iz6Var = iz6.Root;
        } else if (i != 3) {
            if (i != 4) {
                q.j();
                return;
            }
            iz6Var = iz6.Auto;
        } else if (!mp6.g && aq6.c() == null) {
            iz6Var = mp6.g() ? iz6.Shizuku : iz6.Local;
        } else {
            iz6Var = iz6.Root;
        }
        mz6.k(q63Var, q63Var2, f27Var, jA, iz6Var, new lx7(l, kh6Var3, kh6Var, kh6Var2, rt3Var));
        vr6.i$default(vr6.INSTANCE, "Extractor", "Extracted " + kh6Var.a + " / " + l + " files", null, 4, null);
        if (l == null || l.longValue() <= 0) {
            return;
        }
        rt3Var.a(l, l, 0L);
    }
}
