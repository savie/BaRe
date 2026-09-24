package defpackage;

import java.text.ParseException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jm5 extends pr1 {
    @Override // defpackage.h23
    public final g23 b(String str) {
        g23 g23Var = new g23();
        if (!h(str)) {
            return null;
        }
        String strG = g(1);
        String strG2 = g(2);
        g(3);
        String strG3 = g(4);
        String strG4 = g(5);
        String strG5 = g(9);
        try {
            g23Var.e = this.d.d(strG4);
        } catch (ParseException unused) {
        }
        if (strG.trim().equals("d")) {
            g23Var.a = 1;
        } else {
            g23Var.a = 0;
        }
        g23Var.d = strG5.trim();
        g23Var.b = Long.parseLong(strG3.trim());
        if (strG2.indexOf(82) != -1) {
            g23Var.a(0, 0, true);
        }
        if (strG2.indexOf(87) != -1) {
            g23Var.a(0, 1, true);
        }
        return g23Var;
    }

    @Override // defpackage.pr1
    public final e23 f() {
        return new e23("NETWARE", "MMM dd yyyy", "MMM dd HH:mm");
    }
}
