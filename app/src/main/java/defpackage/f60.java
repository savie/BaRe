package defpackage;

import java.nio.charset.Charset;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f60 implements yy8, Cloneable {
    public static final nz8 k = new nz8(30062);
    public int a;
    public int b;
    public int c;
    public String d;
    public boolean e;
    public CRC32 f;

    @Override // defpackage.yy8
    public final nz8 a() {
        return k;
    }

    @Override // defpackage.yy8
    public final nz8 b() {
        return new nz8(this.d.getBytes(Charset.defaultCharset()).length + 14);
    }

    @Override // defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) throws ZipException {
        if (i2 < 14) {
            throw new ZipException(xs1.h(i2, "The length is too short, only ", " bytes, expected at least 14"));
        }
        long j = wx3.j(bArr, i, 4);
        int i3 = i2 - 4;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i + 4, bArr2, 0, i3);
        this.f.reset();
        this.f.update(bArr2);
        long value = this.f.getValue();
        if (j != value) {
            throw new ZipException("Bad CRC checksum, expected " + Long.toHexString(j) + " instead of " + Long.toHexString(value));
        }
        int iJ = (int) wx3.j(bArr2, 0, 2);
        int iJ2 = (int) wx3.j(bArr2, 2, 4);
        if (iJ2 < 0 || iJ2 > i2 - 14) {
            throw new ZipException(xs1.h(iJ2, "Bad symbolic link name length ", " in ASI extra field"));
        }
        this.b = (int) wx3.j(bArr2, 6, 2);
        this.c = (int) wx3.j(bArr2, 8, 2);
        if (iJ2 == 0) {
            this.d = "";
        } else {
            byte[] bArr3 = new byte[iJ2];
            System.arraycopy(bArr2, 10, bArr3, 0, iJ2);
            this.d = new String(bArr3, Charset.defaultCharset());
        }
        this.e = (iJ & 16384) != 0;
        this.a = i(this.a);
        this.a = i(iJ);
    }

    public final Object clone() {
        try {
            f60 f60Var = (f60) super.clone();
            f60Var.f = new CRC32();
            return f60Var;
        } catch (CloneNotSupportedException e) {
            throw new UnsupportedOperationException(e);
        }
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        int i = b().a;
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        byte[] bArr2 = new byte[2];
        wx3.C(this.a, bArr2, 0, 2);
        System.arraycopy(bArr2, 0, bArr, 0, 2);
        byte[] bytes = this.d.getBytes(Charset.defaultCharset());
        System.arraycopy(lz8.a(bytes.length), 0, bArr, 2, 4);
        byte[] bArr3 = new byte[2];
        wx3.C(this.b, bArr3, 0, 2);
        System.arraycopy(bArr3, 0, bArr, 6, 2);
        byte[] bArr4 = new byte[2];
        wx3.C(this.c, bArr4, 0, 2);
        System.arraycopy(bArr4, 0, bArr, 8, 2);
        System.arraycopy(bytes, 0, bArr, 10, bytes.length);
        this.f.reset();
        this.f.update(bArr);
        long value = this.f.getValue();
        byte[] bArr5 = new byte[i];
        System.arraycopy(lz8.a(value), 0, bArr5, 0, 4);
        System.arraycopy(bArr, 0, bArr5, 4, i2);
        return bArr5;
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        return d();
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        return b();
    }

    @Override // defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) throws ZipException {
        c(bArr, i, i2);
    }

    public final int i(int i) {
        int i2;
        if (this.d.isEmpty()) {
            i2 = (this.e && this.d.isEmpty()) ? 16384 : 32768;
        } else {
            i2 = 40960;
        }
        return i2 | (i & 4095);
    }
}
