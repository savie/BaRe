package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tf6 implements zw0 {
    public final ij7 a;
    public final nw0 b;
    public boolean c;

    public tf6(ij7 ij7Var) {
        ij7Var.getClass();
        this.a = ij7Var;
        this.b = new nw0();
    }

    @Override // defpackage.zw0
    public final String E(long j) throws EOFException {
        if (j < 0) {
            f6.g(u48.l(j, "limit < 0: "));
            return null;
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long jA = a((byte) 10, 0L, j2);
        nw0 nw0Var = this.b;
        if (jA != -1) {
            return b.c(nw0Var, jA);
        }
        if (j2 < Long.MAX_VALUE && request(j2) && nw0Var.h(j2 - 1) == 13 && request(j2 + 1) && nw0Var.h(j2) == 10) {
            return b.c(nw0Var, j2);
        }
        nw0 nw0Var2 = new nw0();
        nw0Var.b(nw0Var2, 0L, Math.min(32L, nw0Var.b));
        throw new EOFException("\\n not found: limit=" + Math.min(nw0Var.b, j) + " content=" + nw0Var2.o(nw0Var2.b).e() + (char) 8230);
    }

    @Override // defpackage.ij7
    public final long H(nw0 nw0Var, long j) {
        nw0Var.getClass();
        if (j < 0) {
            f6.g(u48.l(j, "byteCount < 0: "));
            return 0L;
        }
        if (this.c) {
            l0.e("closed");
            return 0L;
        }
        nw0 nw0Var2 = this.b;
        if (nw0Var2.b == 0) {
            if (j == 0) {
                return 0L;
            }
            if (this.a.H(nw0Var2, 8192L) == -1) {
                return -1L;
            }
        }
        return nw0Var2.H(nw0Var, Math.min(j, nw0Var2.b));
    }

    @Override // defpackage.zw0
    public final String M(Charset charset) {
        charset.getClass();
        ij7 ij7Var = this.a;
        nw0 nw0Var = this.b;
        nw0Var.B(ij7Var);
        return nw0Var.u(nw0Var.b, charset);
    }

    @Override // defpackage.zw0
    public final long T(hy0 hy0Var) {
        hy0Var.getClass();
        long jMax = 0;
        if (this.c) {
            l0.e("closed");
            return 0L;
        }
        while (true) {
            nw0 nw0Var = this.b;
            long jM = nw0Var.m(hy0Var, jMax);
            if (jM != -1) {
                return jM;
            }
            long j = nw0Var.b;
            if (this.a.H(nw0Var, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j);
        }
    }

    @Override // defpackage.zw0
    public final String X() {
        return E(Long.MAX_VALUE);
    }

    public final long a(byte b, long j, long j2) {
        if (this.c) {
            l0.e("closed");
            return 0L;
        }
        if (0 > j2) {
            f6.g(u48.l(j2, "fromIndex=0 toIndex="));
            return 0L;
        }
        long jMax = 0;
        while (jMax < j2) {
            nw0 nw0Var = this.b;
            byte b2 = b;
            long j3 = j2;
            long j4 = nw0Var.j(b2, jMax, j3);
            if (j4 != -1) {
                return j4;
            }
            long j5 = nw0Var.b;
            if (j5 >= j3 || this.a.H(nw0Var, 8192L) == -1) {
                break;
            }
            jMax = Math.max(jMax, j5);
            b = b2;
            j2 = j3;
        }
        return -1L;
    }

    public final int b() {
        j0(4L);
        return k55.A(this.b.readInt());
    }

    @Override // defpackage.zw0, defpackage.yw0
    public final nw0 c() {
        return this.b;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws IOException {
        if (this.c) {
            return;
        }
        this.c = true;
        this.a.close();
        this.b.a();
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return this.a.d();
    }

    public final long g() throws EOFException {
        char c;
        char c2;
        long j;
        j0(8L);
        nw0 nw0Var = this.b;
        if (nw0Var.b >= 8) {
            m67 m67Var = nw0Var.a;
            m67Var.getClass();
            int i = m67Var.b;
            int i2 = m67Var.c;
            if (i2 - i < 8) {
                j = ((((long) nw0Var.readInt()) & 4294967295L) << 32) | (4294967295L & ((long) nw0Var.readInt()));
                c = 24;
                c2 = '(';
            } else {
                byte[] bArr = m67Var.a;
                c = 24;
                c2 = '(';
                int i3 = i + 7;
                long j2 = ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
                int i4 = i + 8;
                long j3 = j2 | (((long) bArr[i3]) & 255);
                nw0Var.b -= 8;
                if (i4 == i2) {
                    nw0Var.a = m67Var.a();
                    o67.a(m67Var);
                } else {
                    m67Var.b = i4;
                }
                j = j3;
            }
        } else {
            c = 24;
            c2 = '(';
            d6.d();
            j = 0;
        }
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> c2) | ((280375465082880L & j) >>> c) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << c) | ((65280 & j) << c2);
    }

    public final short h() {
        j0(2L);
        return this.b.r();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.c;
    }

    public final String j(long j) {
        j0(j);
        return this.b.u(j, f51.a);
    }

    @Override // defpackage.zw0
    public final void j0(long j) {
        if (request(j)) {
            return;
        }
        d6.d();
    }

    @Override // defpackage.zw0
    public final hy0 o(long j) {
        j0(j);
        return this.b.o(j);
    }

    @Override // defpackage.zw0
    public final long o0() {
        nw0 nw0Var;
        j0(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            boolean zRequest = request(i2);
            nw0Var = this.b;
            if (!zRequest) {
                break;
            }
            byte bH = nw0Var.h(i);
            if ((bH < 48 || bH > 57) && ((bH < 97 || bH > 102) && (bH < 65 || bH > 70))) {
                if (i != 0) {
                    break;
                }
                ly8.j(16);
                String string = Integer.toString(bH, 16);
                string.getClass();
                throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(string));
            }
            i = i2;
        }
        return nw0Var.o0();
    }

    @Override // defpackage.zw0
    public final tf6 peek() {
        return new tf6(new sy5(this));
    }

    @Override // defpackage.zw0
    public final InputStream q0() {
        return new sf6(this);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        nw0 nw0Var = this.b;
        if (nw0Var.b == 0 && this.a.H(nw0Var, 8192L) == -1) {
            return -1;
        }
        return nw0Var.read(byteBuffer);
    }

    @Override // defpackage.zw0
    public final byte readByte() {
        j0(1L);
        return this.b.readByte();
    }

    @Override // defpackage.zw0
    public final void readFully(byte[] bArr) throws EOFException {
        nw0 nw0Var = this.b;
        bArr.getClass();
        try {
            j0(bArr.length);
            nw0Var.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                long j = nw0Var.b;
                if (j <= 0) {
                    throw e;
                }
                int i2 = nw0Var.read(bArr, i, (int) j);
                if (i2 == -1) {
                    d6.n();
                    return;
                }
                i += i2;
            }
        }
    }

    @Override // defpackage.zw0
    public final int readInt() {
        j0(4L);
        return this.b.readInt();
    }

    @Override // defpackage.zw0
    public final short readShort() {
        j0(2L);
        return this.b.readShort();
    }

    @Override // defpackage.zw0
    public final boolean request(long j) {
        nw0 nw0Var;
        if (j < 0) {
            f6.g(u48.l(j, "byteCount < 0: "));
            return false;
        }
        if (this.c) {
            l0.e("closed");
            return false;
        }
        do {
            nw0Var = this.b;
            if (nw0Var.b >= j) {
                return true;
            }
        } while (this.a.H(nw0Var, 8192L) != -1);
        return false;
    }

    @Override // defpackage.zw0
    public final void skip(long j) {
        if (this.c) {
            l0.e("closed");
            return;
        }
        while (j > 0) {
            nw0 nw0Var = this.b;
            if (nw0Var.b == 0 && this.a.H(nw0Var, 8192L) == -1) {
                d6.d();
                return;
            } else {
                long jMin = Math.min(j, nw0Var.b);
                nw0Var.skip(jMin);
                j -= jMin;
            }
        }
    }

    @Override // defpackage.zw0
    public final byte[] t() {
        ij7 ij7Var = this.a;
        nw0 nw0Var = this.b;
        nw0Var.B(ij7Var);
        return nw0Var.q(nw0Var.b);
    }

    public final String toString() {
        return "buffer(" + this.a + ')';
    }

    @Override // defpackage.zw0
    public final boolean x() {
        if (this.c) {
            l0.e("closed");
            return false;
        }
        nw0 nw0Var = this.b;
        return nw0Var.x() && this.a.H(nw0Var, 8192L) == -1;
    }

    @Override // defpackage.zw0
    public final int y(nu5 nu5Var) throws EOFException {
        nw0 nw0Var;
        nu5Var.getClass();
        if (this.c) {
            l0.e("closed");
            return 0;
        }
        do {
            nw0Var = this.b;
            int iD = b.d(nw0Var, nu5Var, true);
            if (iD != -2) {
                if (iD == -1) {
                    break;
                }
                nw0Var.skip(nu5Var.a[iD].d());
                return iD;
            }
        } while (this.a.H(nw0Var, 8192L) != -1);
        return -1;
    }
}
