package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x53 extends ol1 {
    public final wj8 e;

    public x53(String str, int i, int i2) {
        super(str, 8);
        this.e = new wj8(wj8.a(i), wj8.a(i2), wj8.a(0));
    }

    @Override // defpackage.ol1
    public final String s() {
        return ((String) this.b) + " requires YubiKey " + this.e + " or later";
    }

    @Override // defpackage.ol1
    public final boolean u(wj8 wj8Var) {
        if (wj8Var.a == 0) {
            return true;
        }
        wj8 wj8Var2 = this.e;
        return wj8Var.b(wj8Var2.a, wj8Var2.b, wj8Var2.c) >= 0;
    }
}
