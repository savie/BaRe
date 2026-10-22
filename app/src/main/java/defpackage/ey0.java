package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ey0 extends gy0 {
    public final int e;
    public final int f;

    public ey0(byte[] bArr, int i, int i2) {
        super(bArr);
        gy0.d(i, i + i2, bArr.length);
        this.e = i;
        this.f = i2;
    }

    @Override // defpackage.gy0
    public final byte c(int i) {
        int i2 = this.f;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.b[this.e + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(fz5.j(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(dj7.i("Index > length: ", i, i2, ", "));
    }

    @Override // defpackage.gy0
    public final void f(byte[] bArr, int i) {
        System.arraycopy(this.b, this.e, bArr, 0, i);
    }

    @Override // defpackage.gy0
    public final int g() {
        return this.e;
    }

    @Override // defpackage.gy0
    public final byte i(int i) {
        return this.b[this.e + i];
    }

    @Override // defpackage.gy0
    public final int size() {
        return this.f;
    }
}
