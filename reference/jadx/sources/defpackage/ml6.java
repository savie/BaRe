package defpackage;

import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ml6 implements yy8 {
    public static final nz8 d = new nz8(41246);
    public short a;
    public boolean b;
    public int c;

    @Override // defpackage.yy8
    public final nz8 a() {
        return d;
    }

    @Override // defpackage.yy8
    public final nz8 b() {
        return new nz8(this.c + 2);
    }

    @Override // defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) throws ZipException {
        h(bArr, i, i2);
        this.c = i2 - 2;
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        byte[] bArr = new byte[this.c + 2];
        wx3.C((this.b ? Short.MIN_VALUE : (short) 0) | this.a, bArr, 0, 2);
        return bArr;
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        byte[] bArr = new byte[2];
        wx3.C((this.b ? Short.MIN_VALUE : (short) 0) | this.a, bArr, 0, 2);
        return bArr;
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        return new nz8(2);
    }

    @Override // defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) throws ZipException {
        if (i2 < 2) {
            throw new ZipException(fz5.j(i2, "Too short content for ResourceAlignmentExtraField (0xa11e): "));
        }
        int iJ = (int) wx3.j(bArr, i, 2);
        this.a = (short) (iJ & 32767);
        this.b = (iJ & 32768) != 0;
    }
}
