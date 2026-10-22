package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vf9 extends hg9 {
    public final int d;

    public vf9(byte[] bArr, int i) {
        super(bArr);
        hg9.f(0, i, bArr.length);
        this.d = i;
    }

    @Override // defpackage.hg9
    public final byte c(int i) {
        int i2 = this.d;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.b[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(fz5.j(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(dj7.i("Index > length: ", i, i2, ", "));
    }

    @Override // defpackage.hg9
    public final byte d(int i) {
        return this.b[i];
    }

    @Override // defpackage.hg9
    public final int e() {
        return this.d;
    }
}
