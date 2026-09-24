package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class tr6 extends ei0 {
    public final oe c;

    public tr6(rr6 rr6Var, byte[] bArr) {
        super((Object) rr6Var, false);
        int n = rr6Var.a.getN();
        int i = n * 2;
        if (bArr.length == i) {
            this.c = new oe(10, ms8.t(bArr, 0, n), ms8.t(bArr, n, i));
        } else {
            c6.f("public key encoding does not match parameters");
            throw null;
        }
    }
}
