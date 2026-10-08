package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sq4 extends InputStream {
    public static final /* synthetic */ int r = 0;
    public InputStream a;
    public final v40 b;
    public zp4 c;
    public final af6 d;
    public final kq4 e;
    public long p;
    public boolean f = false;
    public boolean k = false;
    public final byte[] n = new byte[1];
    public IOException q = null;

    public sq4(InputStream inputStream, long j, byte b, int i) throws cy1, hf8 {
        v40 v40Var = v40.a;
        if (j < -1) {
            y5.h("Uncompressed size is too big");
            throw null;
        }
        int i2 = b & 255;
        if (i2 > 224) {
            throw new cy1("Invalid LZMA properties byte");
        }
        int i3 = i2 / 45;
        int i4 = i2 - (i3 * 45);
        int i5 = i4 / 9;
        int i6 = i4 - (i5 * 9);
        if (i < 0 || i > 2147483632) {
            y5.h("LZMA dictionary is too big for this implementation");
            throw null;
        }
        if (j < -1 || i6 < 0 || i6 > 8 || i5 < 0 || i5 > 4 || i3 < 0 || i3 > 4) {
            c6.b();
            throw null;
        }
        this.a = inputStream;
        this.b = v40Var;
        int iA = a(i);
        if (j >= 0 && iA > j) {
            iA = a((int) j);
        }
        this.c = new zp4(a(iA), v40Var);
        af6 af6Var = new af6(inputStream);
        this.d = af6Var;
        this.e = new kq4(this.c, af6Var, i6, i5, i3);
        this.p = j;
    }

    public static int a(int i) {
        if (i < 0 || i > 2147483632) {
            c6.f("LZMA dictionary is too big for this implementation");
            return 0;
        }
        if (i < 4096) {
            i = 4096;
        }
        return (i + 15) & (-16);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.a != null) {
            zp4 zp4Var = this.c;
            if (zp4Var != null) {
                this.b.c(zp4Var.a);
                this.c = null;
            }
            try {
                this.a.close();
            } finally {
                this.a = null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:93:0x00f7 A[Catch: IOException -> 0x0053, TryCatch #1 {IOException -> 0x0053, blocks: (B:20:0x002c, B:22:0x0034, B:24:0x0039, B:26:0x003c, B:28:0x0046, B:31:0x004d, B:45:0x006f, B:47:0x007d, B:48:0x007f, B:50:0x0091, B:52:0x0099, B:53:0x009b, B:55:0x009f, B:60:0x00aa, B:65:0x00b3, B:67:0x00b9, B:69:0x00bd, B:71:0x00c5, B:73:0x00cb, B:86:0x00e6, B:87:0x00eb, B:76:0x00d0, B:81:0x00db, B:88:0x00ec, B:72:0x00c8, B:89:0x00ed, B:90:0x00f2, B:91:0x00f3, B:93:0x00f7, B:98:0x0106, B:99:0x010b, B:37:0x0059, B:39:0x005f, B:44:0x006a, B:100:0x010c, B:29:0x0049), top: B:111:0x002c, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0103  */
    /* JADX WARN: Code duplicated, block: B:96:0x0104  */
    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j;
        zp4 zp4Var;
        af6 af6Var = this.d;
        kq4 kq4Var = this.e;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            l0.a();
            return 0;
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.a == null) {
            throw new ay8("Stream closed");
        }
        IOException iOException = this.q;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f) {
            return -1;
        }
        int i4 = i;
        int i5 = i2;
        int i6 = 0;
        while (i5 > 0) {
            try {
                long j2 = this.p;
                int i7 = (j2 < 0 || j2 >= ((long) i5)) ? i5 : (int) j2;
                zp4 zp4Var2 = this.c;
                int i8 = zp4Var2.b;
                int i9 = zp4Var2.d;
                if (i8 - i9 <= i7) {
                    zp4Var2.f = i8;
                } else {
                    zp4Var2.f = i9 + i7;
                }
                try {
                    kq4Var.b();
                    j = -1;
                } catch (cy1 e) {
                    j = -1;
                    if (this.p == -1) {
                        if (kq4Var.b[0] == -1) {
                            this.f = true;
                            af6Var.T();
                        }
                    }
                    throw e;
                }
                zp4 zp4Var3 = this.c;
                int i10 = zp4Var3.d;
                int i11 = zp4Var3.c;
                int i12 = i10 - i11;
                if (i10 == zp4Var3.b) {
                    zp4Var3.d = 0;
                }
                System.arraycopy(zp4Var3.a, i11, bArr, i4, i12);
                zp4Var3.c = zp4Var3.d;
                i4 += i12;
                i5 -= i12;
                i6 += i12;
                long j3 = this.p;
                if (j3 >= 0) {
                    long j4 = j3 - ((long) i12);
                    this.p = j4;
                    if (j4 == 0) {
                        this.f = true;
                    }
                }
                if (this.f) {
                    zp4 zp4Var4 = this.c;
                    if (zp4Var4.g > 0) {
                        throw new cy1();
                    }
                    if (!(af6Var.i == 0)) {
                        if (this.p == j || !this.k) {
                            throw new cy1();
                        }
                        int i13 = zp4Var4.b;
                        int i14 = zp4Var4.d;
                        if (i13 - i14 <= 1) {
                            zp4Var4.f = i13;
                        } else {
                            zp4Var4.f = i14 + 1;
                        }
                        try {
                            kq4Var.b();
                        } catch (cy1 e2) {
                            if (!(kq4Var.b[0] == -1)) {
                                throw e2;
                            }
                            af6Var.T();
                            if (af6Var.i == 0) {
                                zp4Var = this.c;
                                if (zp4Var != null) {
                                    this.b.c(zp4Var.a);
                                    this.c = null;
                                }
                                if (i6 == 0) {
                                    return -1;
                                }
                                return i6;
                            }
                        }
                        throw new cy1();
                    }
                    zp4Var = this.c;
                    if (zp4Var != null) {
                        this.b.c(zp4Var.a);
                        this.c = null;
                    }
                    if (i6 == 0) {
                        return -1;
                    }
                    return i6;
                }
            } catch (IOException e3) {
                this.q = e3;
                throw e3;
            }
        }
        return i6;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.n;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
