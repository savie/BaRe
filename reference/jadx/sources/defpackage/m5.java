package defpackage;

import java.util.Arrays;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m5 implements yy8 {
    public long a;
    public byte[] b;
    public byte[] c;

    @Override // defpackage.yy8
    public final nz8 b() {
        return f();
    }

    @Override // defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) throws ZipException {
        if (i2 < 5) {
            throw new ZipException("UniCode path extra data must have at least 5 bytes.");
        }
        byte b = bArr[i];
        if (b != 1) {
            throw new ZipException(xs1.h(b, "Unsupported version [", "] for UniCode path extra data."));
        }
        this.a = wx3.j(bArr, i + 1, 4);
        int i3 = i2 - 5;
        byte[] bArr2 = new byte[i3];
        this.b = bArr2;
        System.arraycopy(bArr, i + 5, bArr2, 0, i3);
        this.c = null;
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        return e();
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        if (this.c == null) {
            g();
        }
        byte[] bArr = this.c;
        if (bArr != null) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        return null;
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        if (this.c == null) {
            g();
        }
        return nz8.b(this.c);
    }

    public final void g() {
        byte[] bArr = this.b;
        if (bArr == null) {
            return;
        }
        byte[] bArr2 = new byte[bArr.length + 5];
        this.c = bArr2;
        bArr2[0] = 1;
        System.arraycopy(lz8.a(this.a), 0, this.c, 1, 4);
        byte[] bArr3 = this.b;
        System.arraycopy(bArr3, 0, this.c, 5, bArr3.length);
    }

    @Override // defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) throws ZipException {
        c(bArr, i, i2);
    }
}
