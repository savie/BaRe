package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uk9 extends wk9 {
    public final int d;
    public final int e;

    public uk9(byte[] bArr, int i, int i2) {
        super(bArr);
        wk9.k(i, i + i2, bArr.length);
        this.d = i;
        this.e = i2;
    }

    @Override // defpackage.wk9
    public final byte c(int i) {
        int i2 = this.e;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.b[this.d + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(fz5.j(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(dj7.i("Index > length: ", i, i2, ", "));
    }

    @Override // defpackage.wk9
    public final byte d(int i) {
        return this.b[this.d + i];
    }

    @Override // defpackage.wk9
    public final int e() {
        return this.d;
    }

    @Override // defpackage.wk9
    public final int f() {
        return this.e;
    }

    @Override // defpackage.wk9
    public final void g(byte[] bArr, int i) {
        System.arraycopy(this.b, this.d, bArr, 0, i);
    }
}
