package defpackage;

import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class py8 implements yy8 {
    public static final nz8 f = new nz8(1);
    public uy8 a;
    public uy8 b;
    public uy8 c;
    public lz8 d;
    public byte[] e;

    @Override // defpackage.yy8
    public final nz8 a() {
        return f;
    }

    @Override // defpackage.yy8
    public final nz8 b() {
        return new nz8(this.a != null ? 16 : 0);
    }

    @Override // defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) throws ZipException {
        if (i2 == 0) {
            return;
        }
        if (i2 < 16) {
            throw new ZipException("Zip64 extended information must contain both size values in the local file header.");
        }
        this.a = new uy8(bArr, i);
        this.b = new uy8(bArr, i + 8);
        int i3 = i + 16;
        int i4 = i2 - 16;
        if (i4 >= 8) {
            this.c = new uy8(bArr, i3);
            i3 = i + 24;
            i4 = i2 - 24;
        }
        if (i4 >= 4) {
            this.d = new lz8(bArr, i3);
        }
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        int i;
        uy8 uy8Var = this.a;
        if (uy8Var == null && this.b == null) {
            return wx3.a;
        }
        if (uy8Var == null || this.b == null) {
            c6.f("Zip64 extended information must contain both size values in the local file header.");
            return null;
        }
        byte[] bArr = new byte[16];
        if (uy8Var != null) {
            System.arraycopy(uy8Var.a(), 0, bArr, 0, 8);
            i = 8;
        } else {
            i = 0;
        }
        uy8 uy8Var2 = this.b;
        if (uy8Var2 != null) {
            System.arraycopy(uy8Var2.a(), 0, bArr, i, 8);
        }
        return bArr;
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        int i;
        byte[] bArr = new byte[f().a];
        uy8 uy8Var = this.a;
        if (uy8Var != null) {
            System.arraycopy(uy8Var.a(), 0, bArr, 0, 8);
            i = 8;
        } else {
            i = 0;
        }
        uy8 uy8Var2 = this.b;
        if (uy8Var2 != null) {
            System.arraycopy(uy8Var2.a(), 0, bArr, i, 8);
            i += 8;
        }
        uy8 uy8Var3 = this.c;
        if (uy8Var3 != null) {
            System.arraycopy(uy8Var3.a(), 0, bArr, i, 8);
            i += 8;
        }
        lz8 lz8Var = this.d;
        if (lz8Var != null) {
            System.arraycopy(lz8.a(lz8Var.a), 0, bArr, i, 4);
        }
        return bArr;
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        return new nz8((this.a != null ? 8 : 0) + (this.b != null ? 8 : 0) + (this.c == null ? 0 : 8) + (this.d != null ? 4 : 0));
    }

    @Override // defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) throws ZipException {
        byte[] bArr2 = new byte[i2];
        this.e = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        if (i2 >= 28) {
            c(bArr, i, i2);
            return;
        }
        if (i2 == 24) {
            this.a = new uy8(bArr, i);
            this.b = new uy8(bArr, i + 8);
            this.c = new uy8(bArr, i + 16);
        } else if (i2 % 8 == 4) {
            this.d = new lz8(bArr, (i + i2) - 4);
        }
    }
}
