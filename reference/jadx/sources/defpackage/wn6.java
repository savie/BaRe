package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wn6 {
    public byte[] a;
    public int b;
    public int c;
    public int d;

    public final void a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.a;
        if (bArr.length - i < i2) {
            c6.f("Bytes to write do not exist in source");
            return;
        }
        if (i2 > bArr2.length - this.d) {
            a6.d("Size of bytes to be written is greater than available buffer space");
            return;
        }
        int i3 = this.b;
        if (i3 + i2 <= bArr2.length) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
        } else {
            int length = bArr2.length - i3;
            System.arraycopy(bArr, i, bArr2, i3, length);
            System.arraycopy(bArr, i + length, bArr2, 0, i2 - length);
        }
        this.b = (this.b + i2) % bArr2.length;
        this.d += i2;
    }
}
