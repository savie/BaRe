package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gk4 extends cv3 {
    public static final int[] y = a51.f;
    public final mp7 n;
    public int[] p;
    public int q;
    public z77 r;
    public boolean t;
    public boolean x;

    public gk4(int i, c84 c84Var) {
        super(i, c84Var);
        this.p = y;
        this.r = wj4.r;
        this.n = c84Var.d;
        if (ek4.ESCAPE_NON_ASCII.a(i)) {
            this.q = 127;
        }
        this.x = ek4.WRITE_HEX_UPPER_CASE.a(i);
        this.t = !ek4.QUOTE_FIELD_NAMES.a(i);
    }

    public final void m0(String str) {
        a(eq3.l("Can not ", str, ", expecting field name (context: ", this.e.h(), ")"));
        throw null;
    }

    public final gk4 r0(ek4 ek4Var) {
        int i = ek4Var.b;
        this.b &= ~i;
        if ((i & cv3.k) != 0) {
            if (ek4Var == ek4.WRITE_NUMBERS_AS_STRINGS) {
                this.d = false;
            } else if (ek4Var == ek4.ESCAPE_NON_ASCII) {
                this.q = 0;
            } else if (ek4Var == ek4.STRICT_DUPLICATE_DETECTION) {
                v08 v08Var = this.e;
                v08Var.h = null;
                this.e = v08Var;
            }
        }
        if (ek4Var == ek4.QUOTE_FIELD_NAMES) {
            this.t = true;
            return this;
        }
        if (ek4Var == ek4.WRITE_HEX_UPPER_CASE) {
            this.x = false;
        }
        return this;
    }
}
