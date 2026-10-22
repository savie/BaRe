package defpackage;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gh7 extends InputStream {
    public wu0 a;
    public final v40 b;
    public final int c;
    public final ep7 d;
    public final s51 e;
    public final boolean f;
    public zs0 k;
    public final pb4 n;
    public boolean p;
    public IOException q;
    public final byte[] r;

    public gh7(wu0 wu0Var, int i, v40 v40Var) throws IOException {
        s51 do5Var;
        byte[] bArr = new byte[12];
        new DataInputStream(wu0Var).readFully(bArr);
        this.k = null;
        this.n = new pb4();
        this.p = false;
        this.q = null;
        this.r = new byte[1];
        this.b = v40Var;
        this.a = wu0Var;
        this.c = i;
        this.f = true;
        int i2 = 0;
        while (true) {
            byte[] bArr2 = ji8.f;
            if (i2 >= 6) {
                if (!bb9.y(6, bArr, 2, 8)) {
                    throw new cy1("XZ Stream Header is corrupt");
                }
                try {
                    ep7 ep7VarQ = bb9.q(bArr, 6);
                    this.d = ep7VarQ;
                    int i3 = ep7VarQ.a;
                    if (i3 == 0) {
                        do5Var = new do5();
                        do5Var.b = 0;
                        do5Var.c = "None";
                    } else if (i3 == 1) {
                        do5Var = new bz0();
                    } else {
                        if (i3 != 4) {
                            if (i3 == 10) {
                                try {
                                    do5Var = new gr6();
                                } catch (NoSuchAlgorithmException unused) {
                                }
                            }
                            y5.h(fz5.j(i3, "Unsupported Check ID "));
                            throw null;
                        }
                        cz0 cz0Var = new cz0();
                        cz0Var.d = -1L;
                        cz0Var.b = 8;
                        cz0Var.c = "CRC64";
                        do5Var = cz0Var;
                    }
                    this.e = do5Var;
                    return;
                } catch (hf8 unused2) {
                    y5.h("Unsupported options in XZ Stream Header");
                    throw null;
                }
            }
            if (bArr[i2] != bArr2[i2]) {
                throw new zx8("Input is not in the XZ format");
            }
            i2++;
        }
    }

    public final void a(boolean z) {
        if (this.a != null) {
            zs0 zs0Var = this.k;
            if (zs0Var != null) {
                zs0Var.close();
                this.k = null;
            }
            if (z) {
                try {
                    this.a.close();
                } finally {
                    this.a = null;
                }
            }
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        if (this.a == null) {
            throw new ay8("Stream closed");
        }
        IOException iOException = this.q;
        if (iOException != null) {
            throw iOException;
        }
        zs0 zs0Var = this.k;
        if (zs0Var == null) {
            return 0;
        }
        return zs0Var.c.available();
    }

    public final void b() throws IOException {
        long j;
        byte[] bArr = new byte[12];
        new DataInputStream(this.a).readFully(bArr);
        byte b = bArr[10];
        byte[] bArr2 = ji8.k;
        int i = 0;
        if (b != bArr2[0] || bArr[11] != bArr2[1]) {
            throw new cy1("XZ Stream Footer is corrupt");
        }
        if (!bb9.y(4, bArr, 6, 0)) {
            throw new cy1("XZ Stream Footer is corrupt");
        }
        try {
            ep7 ep7VarQ = bb9.q(bArr, 8);
            ep7VarQ.b = 0L;
            while (true) {
                j = ep7VarQ.b;
                if (i >= 4) {
                    break;
                }
                ep7VarQ.b = j | ((long) ((bArr[i + 4] & 255) << (i * 8)));
                i++;
            }
            ep7VarQ.b = (j + 1) * 4;
            if (this.d.a == ep7VarQ.a) {
                pb4 pb4Var = this.n;
                if (((((long) (bb9.v(pb4Var.e) + 1)) + pb4Var.d + 7) & (-4)) == ep7VarQ.b) {
                    return;
                }
            }
            throw new cy1("XZ Stream Footer does not match Stream Header");
        } catch (hf8 unused) {
            y5.h("Unsupported options in XZ Stream Footer");
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a(true);
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
        if (this.a == null) {
            throw new ay8("Stream closed");
        }
        IOException iOException = this.q;
        if (iOException != null) {
            throw iOException;
        }
        if (this.p) {
            return -1;
        }
        int i4 = 0;
        while (i2 > 0) {
            try {
                zs0 zs0Var = this.k;
                pb4 pb4Var = this.n;
                if (zs0Var == null) {
                    try {
                        this.k = new zs0(this.a, this.e, this.f, this.c, this.b);
                    } catch (qb4 unused) {
                        pb4Var.b(this.a);
                        b();
                        this.p = true;
                        if (i4 > 0) {
                            return i4;
                        }
                        return -1;
                    }
                }
                int i5 = this.k.read(bArr, i, i2);
                if (i5 > 0) {
                    i4 += i5;
                    i += i5;
                    i2 -= i5;
                } else if (i5 == -1) {
                    zs0 zs0Var2 = this.k;
                    pb4Var.a(((long) zs0Var2.p) + zs0Var2.b.a + ((long) zs0Var2.d.b), zs0Var2.q);
                    this.k = null;
                }
            } catch (IOException e) {
                this.q = e;
                if (i4 == 0) {
                    throw e;
                }
            }
        }
        return i4;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.r;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
