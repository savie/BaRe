package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class cw6 extends ei0 {
    public final w00 c;

    public cw6(aw6 aw6Var, byte[] bArr) {
        super((Object) aw6Var, false);
        int n = aw6Var.c.getN();
        int i = n * 2;
        if (bArr.length == i) {
            this.c = new w00(7, ms8.t(bArr, 0, n), ms8.t(bArr, n, i));
        } else {
            c6.f("public key encoding does not match parameters");
            throw null;
        }
    }
}
