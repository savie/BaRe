package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class sr6 extends ei0 {
    public final nr6 c;
    public final oe d;

    public sr6(rr6 rr6Var, byte[] bArr) {
        super((Object) rr6Var, true);
        int n = rr6Var.a.getN();
        int i = n * 4;
        if (bArr.length != i) {
            c6.f("private key encoding does not match parameters");
            throw null;
        }
        int i2 = n * 2;
        this.c = new nr6(0, ms8.t(bArr, 0, n), ms8.t(bArr, n, i2));
        int i3 = n * 3;
        this.d = new oe(10, ms8.t(bArr, i2, i3), ms8.t(bArr, i3, i));
    }
}
