package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b63 extends g3 {
    public final z53 a;
    public String b;
    public final StringBuilder c;

    public b63(int i, int i2, char c) {
        z53 z53Var = new z53();
        this.a = z53Var;
        this.c = new StringBuilder();
        z53Var.f = c;
        z53Var.g = i;
        z53Var.h = i2;
    }

    @Override // defpackage.g3
    public final void a(CharSequence charSequence) {
        if (this.b == null) {
            this.b = charSequence.toString();
            return;
        }
        StringBuilder sb = this.c;
        sb.append(charSequence);
        sb.append('\n');
    }

    @Override // defpackage.g3
    public final void d() {
        String strA = fy2.a(this.b.trim());
        z53 z53Var = this.a;
        z53Var.i = strA;
        z53Var.j = this.c.toString();
    }

    @Override // defpackage.g3
    public final ws0 e() {
        return this.a;
    }

    @Override // defpackage.g3
    public final ys0 h(un2 un2Var) {
        int i = un2Var.e;
        int i2 = un2Var.b;
        CharSequence charSequence = un2Var.a;
        int i3 = un2Var.g;
        z53 z53Var = this.a;
        if (i3 < 4) {
            char c = z53Var.f;
            int i4 = z53Var.g;
            int iA = zm5.A(c, i, charSequence.length(), charSequence) - i;
            if (iA >= i4 && zm5.B(charSequence, i + iA, charSequence.length()) == charSequence.length()) {
                return new ys0(-1, -1, true);
            }
        }
        int length = charSequence.length();
        for (int i5 = z53Var.h; i5 > 0 && i2 < length && charSequence.charAt(i2) == ' '; i5--) {
            i2++;
        }
        return ys0.a(i2);
    }
}
