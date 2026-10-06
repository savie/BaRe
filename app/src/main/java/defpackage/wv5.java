package defpackage;

import java.util.Arrays;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class wv5 implements yy8 {
    public final nz8 a;
    public byte[] b;
    public byte[] c;

    public wv5(nz8 nz8Var) {
        this.a = nz8Var;
    }

    @Override // defpackage.yy8
    public final nz8 a() {
        return this.a;
    }

    @Override // defpackage.yy8
    public final nz8 b() {
        return nz8.b(this.b);
    }

    @Override // defpackage.yy8
    public void c(byte[] bArr, int i, int i2) {
        this.b = pz8.a(Arrays.copyOfRange(bArr, i, i2 + i));
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        return pz8.a(this.b);
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        byte[] bArr = this.c;
        return bArr != null ? pz8.a(bArr) : pz8.a(this.b);
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        byte[] bArr = this.c;
        return bArr != null ? new nz8(bArr.length) : nz8.b(this.b);
    }

    public final void g(int i, int i2) throws ZipException {
        if (i2 >= i) {
            return;
        }
        throw new ZipException(getClass().getName() + " is too short, only " + i2 + " bytes, expected at least " + i);
    }

    @Override // defpackage.yy8
    public void h(byte[] bArr, int i, int i2) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i, i2 + i);
        this.c = pz8.a(bArrCopyOfRange);
        if (this.b == null) {
            this.b = pz8.a(bArrCopyOfRange);
        }
    }
}
