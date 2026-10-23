package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zs0 extends InputStream {
    public final DataInputStream a;
    public final hy1 b;
    public InputStream c;
    public final s51 d;
    public final boolean e;
    public final long f;
    public final long k;
    public final long n;
    public final int p;
    public long q = 0;
    public boolean r = false;
    public final byte[] t = new byte[1];

    public zs0(wu0 wu0Var, s51 s51Var, boolean z, int i, v40 v40Var) throws qb4, IOException {
        this.f = -1L;
        this.k = -1L;
        this.d = s51Var;
        this.e = z;
        DataInputStream dataInputStream = new DataInputStream(wu0Var);
        this.a = dataInputStream;
        int unsignedByte = dataInputStream.readUnsignedByte();
        if (unsignedByte == 0) {
            throw new qb4();
        }
        int i2 = (unsignedByte + 1) * 4;
        this.p = i2;
        byte[] bArr = new byte[i2];
        bArr[0] = (byte) unsignedByte;
        dataInputStream.readFully(bArr, 1, i2 - 1);
        int i3 = i2 - 4;
        if (!bb9.y(0, bArr, i3, i3)) {
            throw new cy1("XZ Block Header is corrupt");
        }
        int i4 = bArr[1];
        if ((i4 & 60) != 0) {
            y5.h("Unsupported options in XZ Block Header");
            throw null;
        }
        int i5 = i4 & 3;
        int i6 = i5 + 1;
        long[] jArr = new long[i6];
        byte[][] bArr2 = new byte[i6][];
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, 2, i2 - 6);
        try {
            long j = (9223372036854775804L - ((long) i2)) - ((long) s51Var.b);
            this.n = j;
            if ((bArr[1] & 64) != 0) {
                long jR = bb9.r(byteArrayInputStream);
                this.k = jR;
                if (jR == 0 || jR > j) {
                    throw new cy1();
                }
                this.n = jR;
            }
            if ((bArr[1] & 128) != 0) {
                this.f = bb9.r(byteArrayInputStream);
            }
            for (int i7 = 0; i7 < i6; i7++) {
                jArr[i7] = bb9.r(byteArrayInputStream);
                long jR2 = bb9.r(byteArrayInputStream);
                if (jR2 > byteArrayInputStream.available()) {
                    throw new cy1();
                }
                byte[] bArr3 = new byte[(int) jR2];
                bArr2[i7] = bArr3;
                byteArrayInputStream.read(bArr3);
            }
            for (int iAvailable = byteArrayInputStream.available(); iAvailable > 0; iAvailable--) {
                if (byteArrayInputStream.read() != 0) {
                    y5.h("Unsupported options in XZ Block Header");
                    throw null;
                }
            }
            zc3[] zc3VarArr = new zc3[i6];
            for (int i8 = 0; i8 < i6; i8++) {
                long j2 = jArr[i8];
                if (j2 == 33) {
                    byte[] bArr4 = bArr2[i8];
                    bq4 bq4Var = new bq4();
                    if (bArr4.length == 1) {
                        byte b = bArr4[0];
                        if ((b & 255) <= 37) {
                            bq4Var.a = ((b & 1) | 2) << ((b >>> 1) + 11);
                            zc3VarArr[i8] = bq4Var;
                        }
                    }
                    y5.h("Unsupported LZMA2 properties");
                    throw null;
                }
                if (j2 == 3) {
                    zc3VarArr[i8] = new ci2(bArr2[i8]);
                } else {
                    if (j2 < 4 || j2 > 11) {
                        throw new hf8("Unknown Filter ID " + jArr[i8]);
                    }
                    zc3VarArr[i8] = new ag0(j2, bArr2[i8]);
                }
            }
            for (int i9 = 0; i9 < i5; i9++) {
                if (!zc3VarArr[i9].a()) {
                    y5.h("Unsupported XZ filter chain");
                    throw null;
                }
            }
            if (!zc3VarArr[i5].c()) {
                y5.h("Unsupported XZ filter chain");
                throw null;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < i6; i11++) {
                if (zc3VarArr[i11].e()) {
                    i10++;
                }
            }
            if (i10 > 3) {
                y5.h("Unsupported XZ filter chain");
                throw null;
            }
            if (i >= 0) {
                int iD = 0;
                for (int i12 = 0; i12 < i6; i12++) {
                    iD += zc3VarArr[i12].d();
                }
                if (iD > i) {
                    throw new yb5(iD, i);
                }
            }
            hy1 hy1Var = new hy1(wu0Var);
            this.b = hy1Var;
            this.c = hy1Var;
            for (int i13 = i5; i13 >= 0; i13--) {
                this.c = zc3VarArr[i13].b(this.c, v40Var);
            }
        } catch (IOException unused) {
            throw new cy1("XZ Block Header is corrupt");
        }
    }

    public final void a() throws IOException {
        long j = this.b.a;
        long j2 = this.k;
        if (j2 == -1 || j2 == j) {
            long j3 = this.f;
            if (j3 == -1 || j3 == this.q) {
                while (true) {
                    long j4 = 1 + j;
                    long j5 = j & 3;
                    DataInputStream dataInputStream = this.a;
                    if (j5 == 0) {
                        s51 s51Var = this.d;
                        byte[] bArr = new byte[s51Var.b];
                        dataInputStream.readFully(bArr);
                        if (this.e && !Arrays.equals(s51Var.a(), bArr)) {
                            throw new cy1(dj7.n(new StringBuilder("Integrity check ("), s51Var.c, ") does not match"));
                        }
                        return;
                    }
                    if (dataInputStream.readUnsignedByte() != 0) {
                        throw new cy1();
                    }
                    j = j4;
                }
            }
        }
        throw new cy1();
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.c.close();
        } catch (IOException unused) {
        }
        this.c = null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.r) {
            return -1;
        }
        int i3 = this.c.read(bArr, i, i2);
        if (i3 > 0) {
            if (this.e) {
                this.d.d(bArr, i, i3);
            }
            long j = this.q + ((long) i3);
            this.q = j;
            long j2 = this.b.a;
            if (j2 >= 0 && j2 <= this.n && j >= 0) {
                long j3 = this.f;
                if (j3 == -1 || j <= j3) {
                    if (i3 < i2 || j == j3) {
                        if (this.c.read() != -1) {
                            throw new cy1();
                        }
                        a();
                        this.r = true;
                        return i3;
                    }
                }
            }
            throw new cy1();
        }
        if (i3 == -1) {
            a();
            this.r = true;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.t;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
