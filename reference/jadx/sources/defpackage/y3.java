package defpackage;

import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y3 extends z3 implements RandomAccess {
    public final z3 a;
    public final int b;
    public final int c;

    public y3(z3 z3Var, int i, int i2) {
        this.a = z3Var;
        this.b = i;
        zm5.g(i, i2, z3Var.d());
        this.c = i2 - i;
    }

    @Override // defpackage.l3
    public final int d() {
        return this.c;
    }

    @Override // java.util.List
    public final Object get(int i) {
        int i2 = this.c;
        if (i < 0 || i >= i2) {
            a6.d(dj7.i("index: ", i, i2, ", size: "));
            return null;
        }
        return this.a.get(this.b + i);
    }

    @Override // defpackage.z3, java.util.List
    public final List subList(int i, int i2) {
        zm5.g(i, i2, this.c);
        int i3 = this.b;
        return new y3(this.a, i + i3, i3 + i2);
    }
}
