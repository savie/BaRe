package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pr7 implements f77, iq2 {
    public final f77 a;
    public final int b;
    public final int c;

    public pr7(f77 f77Var, int i, int i2) {
        f77Var.getClass();
        this.a = f77Var;
        this.b = i;
        this.c = i2;
        if (i < 0) {
            f6.g(fz5.j(i, "startIndex should be non-negative, but is "));
            throw null;
        }
        if (i2 < 0) {
            f6.g(fz5.j(i2, "endIndex should be non-negative, but is "));
            throw null;
        }
        if (i2 >= i) {
            return;
        }
        f6.g(dj7.i("endIndex should be not less than startIndex, but was ", i2, i, " < "));
        throw null;
    }

    @Override // defpackage.iq2
    public final f77 a(int i) {
        int i2 = this.c;
        int i3 = this.b;
        return i >= i2 - i3 ? this : new pr7(this.a, i3, i + i3);
    }

    @Override // defpackage.iq2
    public final f77 b(int i) {
        int i2 = this.c;
        int i3 = this.b;
        return i >= i2 - i3 ? rv2.a : new pr7(this.a, i3 + i, i2);
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        return new or7(this);
    }
}
