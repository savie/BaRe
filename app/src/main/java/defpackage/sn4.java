package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class sn4 {
    public final h24 a;
    public final int b;
    public byte[] c;
    public byte[] d;
    public int e;
    public byte[] f;
    public int g;
    public final byte[] h;

    public sn4(h24 h24Var) {
        this.a = h24Var;
        int i = h24Var.b;
        this.b = i;
        this.h = new byte[i];
    }

    public final void a() {
        int i = (this.g / this.b) + 1;
        byte[] bArr = this.f;
        int length = bArr.length;
        if (length != 1) {
            if (length != 2) {
                if (length != 3) {
                    if (length != 4) {
                        l0.e("Unsupported size of counter i");
                        return;
                    }
                    bArr[0] = (byte) (i >>> 24);
                }
                bArr[bArr.length - 3] = (byte) (i >>> 16);
            }
            bArr[bArr.length - 2] = (byte) (i >>> 8);
        }
        bArr[bArr.length - 1] = (byte) i;
        byte[] bArr2 = this.c;
        int length2 = bArr2.length;
        h24 h24Var = this.a;
        h24Var.update(bArr2, 0, length2);
        byte[] bArr3 = this.f;
        h24Var.update(bArr3, 0, bArr3.length);
        byte[] bArr4 = this.d;
        h24Var.update(bArr4, 0, bArr4.length);
        h24Var.doFinal(this.h, 0);
    }
}
