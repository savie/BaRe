package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uw7 {
    public final ex7 a;
    public ArrayList b;
    public boolean c;
    public int d;

    public uw7(ex7 ex7Var) {
        this.a = ex7Var;
    }

    public static void a(uw7 uw7Var, bs2 bs2Var, z62 z62Var) {
        wj7 wj7Var = (wj7) bs2Var.d;
        int iG = bs2Var.g();
        bs2Var.j(z62Var);
        if (uw7Var.b != null) {
            StringBuilder sb = wj7Var.a;
            int length = sb.length();
            boolean z = length > 0 && '\n' != sb.charAt(length - 1);
            if (z) {
                wj7Var.a('\n');
            }
            wj7Var.a((char) 160);
            ax7 ax7Var = new ax7(uw7Var.a, uw7Var.b, uw7Var.c, uw7Var.d % 2 == 1);
            uw7Var.d = uw7Var.c ? 0 : uw7Var.d + 1;
            if (z) {
                iG++;
            }
            wj7.c(wj7Var, ax7Var, iG, wj7Var.a.length());
            uw7Var.b = null;
        }
    }
}
