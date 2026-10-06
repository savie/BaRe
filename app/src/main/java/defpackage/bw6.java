package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class bw6 extends ei0 {
    public final ro c;
    public final w00 d;

    public bw6(aw6 aw6Var, byte[] bArr) {
        super((Object) aw6Var, true);
        int n = aw6Var.c.getN();
        int i = n * 4;
        if (bArr.length != i) {
            c6.f("private key encoding does not match parameters");
            throw null;
        }
        int i2 = n * 2;
        this.c = new ro(13, ms8.t(bArr, 0, n), ms8.t(bArr, n, i2));
        int i3 = n * 3;
        this.d = new w00(7, ms8.t(bArr, i2, i3), ms8.t(bArr, i3, i));
    }

    public final byte[] getEncoded() {
        ro roVar = this.c;
        byte[] bArr = (byte[]) roVar.b;
        byte[] bArr2 = (byte[]) roVar.c;
        w00 w00Var = this.d;
        return ms8.q(new byte[][]{bArr, bArr2, (byte[]) w00Var.b, (byte[]) w00Var.c});
    }

    public bw6(aw6 aw6Var, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super((Object) aw6Var, true);
        this.c = new ro(13, bArr, bArr2);
        this.d = new w00(7, bArr3, bArr4);
    }
}
