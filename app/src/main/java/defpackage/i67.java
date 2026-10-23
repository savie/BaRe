package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class i67 {
    public final byte[] a;
    public final byte[] b;
    public final hl2 c;
    public int d;
    public int e;

    public i67(byte[] bArr, byte[] bArr2, hl2 hl2Var) {
        this.a = bArr;
        this.b = bArr2;
        this.c = hl2Var;
    }

    public final void a(int i, boolean z, byte[] bArr) {
        int length = bArr.length - i;
        hl2 hl2Var = this.c;
        if (length < hl2Var.c()) {
            c6.f("target length is less than digest size.");
            return;
        }
        byte[] bArr2 = this.a;
        hl2Var.update(bArr2, 0, bArr2.length);
        hl2Var.a((byte) (this.d >>> 24));
        hl2Var.a((byte) (this.d >>> 16));
        hl2Var.a((byte) (this.d >>> 8));
        hl2Var.a((byte) this.d);
        hl2Var.a((byte) (this.e >>> 8));
        hl2Var.a((byte) this.e);
        hl2Var.a((byte) -1);
        byte[] bArr3 = this.b;
        hl2Var.update(bArr3, 0, bArr3.length);
        hl2Var.doFinal(bArr, i);
        if (z) {
            this.e++;
        }
    }
}
