package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eb2 {
    public final sb4 a;
    public final zc2 b;

    public eb2(zc2 zc2Var, sb4 sb4Var) {
        this.a = sb4Var;
        this.b = zc2Var;
    }

    public final eb2 a(String str) {
        return new eb2(this.b.d(str), sb4.d(this.a.a.U(new gy5(str))));
    }

    public final db2 b() {
        return new db2(0, this, this.a.iterator());
    }

    public final Object c(Class cls) {
        return t62.b(cls, this.a.a.getValue());
    }

    public final String toString() {
        return "DataSnapshot { key = " + this.b.e() + ", value = " + this.a.a.g0(true) + " }";
    }
}
