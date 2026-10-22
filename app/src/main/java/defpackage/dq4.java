package defpackage;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dq4 extends InputStream {
    public final v40 a;
    public DataInputStream b;
    public zp4 c;
    public ze6 d;
    public kq4 e;
    public int f = 0;
    public boolean k = false;
    public boolean n = true;
    public boolean p = true;
    public boolean q = false;
    public IOException r = null;
    public final byte[] t = new byte[1];

    public dq4(InputStream inputStream, int i, v40 v40Var) {
        inputStream.getClass();
        this.a = v40Var;
        this.b = new DataInputStream(inputStream);
        this.d = new ze6(v40Var);
        this.c = new zp4(b(i), v40Var);
    }

    public static int b(int i) {
        if (i >= 4096 && i <= 2147483632) {
            return (i + 15) & (-16);
        }
        c6.f(fz5.j(i, "Unsupported dictionary size "));
        return 0;
    }

    public final void a() throws IOException {
        int unsignedByte = this.b.readUnsignedByte();
        if (unsignedByte == 0) {
            this.q = true;
            zp4 zp4Var = this.c;
            if (zp4Var != null) {
                byte[] bArr = zp4Var.a;
                v40 v40Var = this.a;
                v40Var.c(bArr);
                this.c = null;
                v40Var.c(this.d.j);
                this.d = null;
                return;
            }
            return;
        }
        if (unsignedByte >= 224 || unsignedByte == 1) {
            this.p = true;
            this.n = false;
            zp4 zp4Var2 = this.c;
            zp4Var2.c = 0;
            zp4Var2.d = 0;
            zp4Var2.e = 0;
            zp4Var2.f = 0;
            zp4Var2.a[zp4Var2.b - 1] = 0;
        } else if (this.n) {
            throw new cy1();
        }
        if (unsignedByte < 128) {
            if (unsignedByte > 2) {
                throw new cy1();
            }
            this.k = false;
            this.f = this.b.readUnsignedShort() + 1;
            return;
        }
        this.k = true;
        int i = (unsignedByte & 31) << 16;
        this.f = i;
        this.f = this.b.readUnsignedShort() + 1 + i;
        int unsignedShort = this.b.readUnsignedShort();
        int i2 = unsignedShort + 1;
        if (unsignedByte >= 192) {
            this.p = false;
            int unsignedByte2 = this.b.readUnsignedByte();
            if (unsignedByte2 > 224) {
                throw new cy1();
            }
            int i3 = unsignedByte2 / 45;
            int i4 = unsignedByte2 - (i3 * 45);
            int i5 = i4 / 9;
            int i6 = i4 - (i5 * 9);
            if (i6 + i5 > 4) {
                throw new cy1();
            }
            this.e = new kq4(this.c, this.d, i6, i5, i3);
        } else {
            if (this.p) {
                throw new cy1();
            }
            if (unsignedByte >= 160) {
                this.e.a();
            }
        }
        ze6 ze6Var = this.d;
        DataInputStream dataInputStream = this.b;
        ze6Var.getClass();
        if (i2 < 5) {
            throw new cy1();
        }
        if (dataInputStream.readUnsignedByte() != 0) {
            throw new cy1();
        }
        ze6Var.i = dataInputStream.readInt();
        ze6Var.h = -1;
        int i7 = unsignedShort - 4;
        byte[] bArr2 = ze6Var.j;
        int length = bArr2.length - i7;
        ze6Var.k = length;
        dataInputStream.readFully(bArr2, length, i7);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        DataInputStream dataInputStream = this.b;
        if (dataInputStream == null) {
            throw new ay8("Stream closed");
        }
        IOException iOException = this.r;
        if (iOException != null) {
            throw iOException;
        }
        boolean z = this.k;
        int i = this.f;
        return z ? i : Math.min(i, dataInputStream.available());
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.b != null) {
            zp4 zp4Var = this.c;
            if (zp4Var != null) {
                byte[] bArr = zp4Var.a;
                v40 v40Var = this.a;
                v40Var.c(bArr);
                this.c = null;
                v40Var.c(this.d.j);
                this.d = null;
            }
            try {
                this.b.close();
            } finally {
                this.b = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            l0.a();
            return 0;
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.b == null) {
            throw new ay8("Stream closed");
        }
        IOException iOException = this.r;
        if (iOException != null) {
            throw iOException;
        }
        if (this.q) {
            return -1;
        }
        int i4 = 0;
        while (i2 > 0) {
            try {
                if (this.f == 0) {
                    a();
                    if (this.q) {
                        if (i4 == 0) {
                            return -1;
                        }
                    }
                }
                int iMin = Math.min(this.f, i2);
                boolean z = this.k;
                zp4 zp4Var = this.c;
                if (z) {
                    int i5 = zp4Var.b;
                    int i6 = zp4Var.d;
                    if (i5 - i6 <= iMin) {
                        zp4Var.f = i5;
                    } else {
                        zp4Var.f = i6 + iMin;
                    }
                    this.e.b();
                } else {
                    DataInputStream dataInputStream = this.b;
                    int iMin2 = Math.min(zp4Var.b - zp4Var.d, iMin);
                    dataInputStream.readFully(zp4Var.a, zp4Var.d, iMin2);
                    int i7 = zp4Var.d + iMin2;
                    zp4Var.d = i7;
                    if (zp4Var.e < i7) {
                        zp4Var.e = i7;
                    }
                }
                zp4 zp4Var2 = this.c;
                int i8 = zp4Var2.d;
                int i9 = zp4Var2.c;
                int i10 = i8 - i9;
                if (i8 == zp4Var2.b) {
                    zp4Var2.d = 0;
                }
                System.arraycopy(zp4Var2.a, i9, bArr, i, i10);
                zp4Var2.c = zp4Var2.d;
                i += i10;
                i2 -= i10;
                i4 += i10;
                int i11 = this.f - i10;
                this.f = i11;
                if (i11 == 0) {
                    ze6 ze6Var = this.d;
                    if (ze6Var.k == ze6Var.j.length && ze6Var.i == 0) {
                        if (!(this.c.g > 0)) {
                        }
                    }
                    throw new cy1();
                }
            } catch (IOException e) {
                this.r = e;
                throw e;
            }
        }
        return i4;
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
