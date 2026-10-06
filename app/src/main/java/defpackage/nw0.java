package defpackage;

import com.nimbusds.jose.crypto.impl.XC20P;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nw0 implements zw0, yw0, Cloneable, ByteChannel {
    public m67 a;
    public long b;

    public final m67 A(int i) {
        if (i < 1 || i > 8192) {
            c6.f("unexpected capacity");
            return null;
        }
        m67 m67Var = this.a;
        if (m67Var == null) {
            m67 m67VarB = o67.b();
            this.a = m67VarB;
            m67VarB.g = m67VarB;
            m67VarB.f = m67VarB;
            return m67VarB;
        }
        m67 m67Var2 = m67Var.g;
        m67Var2.getClass();
        if (m67Var2.c + i <= 8192 && m67Var2.e) {
            return m67Var2;
        }
        m67 m67VarB2 = o67.b();
        m67Var2.b(m67VarB2);
        return m67VarB2;
    }

    @Override // defpackage.yw0
    public final long B(ij7 ij7Var) {
        ij7Var.getClass();
        long j = 0;
        while (true) {
            long jH = ij7Var.H(this, 8192L);
            if (jH == -1) {
                return j;
            }
            j += jH;
        }
    }

    public final void D(hy0 hy0Var) {
        hy0Var.getClass();
        hy0Var.x(this, hy0Var.d());
    }

    @Override // defpackage.zw0
    public final String E(long j) throws EOFException {
        if (j < 0) {
            f6.g(u48.l(j, "limit < 0: "));
            return null;
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long j3 = j((byte) 10, 0L, j2);
        if (j3 != -1) {
            return b.c(this, j3);
        }
        if (j2 < this.b && h(j2 - 1) == 13 && h(j2) == 10) {
            return b.c(this, j2);
        }
        nw0 nw0Var = new nw0();
        b(nw0Var, 0L, Math.min(32L, this.b));
        throw new EOFException("\\n not found: limit=" + Math.min(this.b, j) + " content=" + nw0Var.o(nw0Var.b).e() + (char) 8230);
    }

    public final void G(ij7 ij7Var, long j) {
        while (j > 0) {
            long jH = ij7Var.H(this, j);
            if (jH == -1) {
                d6.d();
                return;
            }
            j -= jH;
        }
    }

    @Override // defpackage.ij7
    public final long H(nw0 nw0Var, long j) {
        nw0Var.getClass();
        if (j < 0) {
            f6.g(u48.l(j, "byteCount < 0: "));
            return 0L;
        }
        long j2 = this.b;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        nw0Var.f0(this, j);
        return j;
    }

    public final void J(int i) {
        m67 m67VarA = A(1);
        byte[] bArr = m67VarA.a;
        int i2 = m67VarA.c;
        m67VarA.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.b++;
    }

    @Override // defpackage.yw0
    public final /* bridge */ /* synthetic */ yw0 K(String str) {
        Z(str);
        return this;
    }

    @Override // defpackage.zw0
    public final String M(Charset charset) {
        charset.getClass();
        return u(this.b, charset);
    }

    public final void O(long j) {
        boolean z;
        if (j == 0) {
            J(48);
            return;
        }
        if (j < 0) {
            j = -j;
            if (j < 0) {
                Z("-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        byte[] bArr = b.a;
        int iNumberOfLeadingZeros = ((64 - Long.numberOfLeadingZeros(j)) * 10) >>> 5;
        int i = iNumberOfLeadingZeros + (j > b.b[iNumberOfLeadingZeros] ? 1 : 0);
        if (z) {
            i++;
        }
        m67 m67VarA = A(i);
        byte[] bArr2 = m67VarA.a;
        int i2 = m67VarA.c + i;
        while (j != 0) {
            i2--;
            bArr2[i2] = b.a[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr2[i2 - 1] = 45;
        }
        m67VarA.c += i;
        this.b += (long) i;
    }

    @Override // defpackage.yw0
    public final /* bridge */ /* synthetic */ yw0 P(hy0 hy0Var) {
        D(hy0Var);
        return this;
    }

    @Override // defpackage.yw0
    public final /* bridge */ /* synthetic */ yw0 Q(long j) {
        S(j);
        return this;
    }

    public final void S(long j) {
        if (j == 0) {
            J(48);
            return;
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        m67 m67VarA = A(i);
        byte[] bArr = m67VarA.a;
        int i2 = m67VarA.c;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = b.a[(int) (15 & j)];
            j >>>= 4;
        }
        m67VarA.c += i;
        this.b += (long) i;
    }

    @Override // defpackage.zw0
    public final long T(hy0 hy0Var) {
        hy0Var.getClass();
        return m(hy0Var, 0L);
    }

    public final void U(int i) {
        m67 m67VarA = A(4);
        byte[] bArr = m67VarA.a;
        int i2 = m67VarA.c;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        m67VarA.c = i2 + 4;
        this.b += 4;
    }

    @Override // defpackage.yw0
    public final /* bridge */ /* synthetic */ yw0 V(rc4 rc4Var, long j) {
        G(rc4Var, j);
        return this;
    }

    public final void W(int i) {
        m67 m67VarA = A(2);
        byte[] bArr = m67VarA.a;
        int i2 = m67VarA.c;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        m67VarA.c = i2 + 2;
        this.b += 2;
    }

    @Override // defpackage.zw0
    public final String X() {
        return E(Long.MAX_VALUE);
    }

    public final void Y(int i, int i2, String str) {
        char cCharAt;
        str.getClass();
        if (i < 0) {
            f6.g(fz5.j(i, "beginIndex < 0: "));
            return;
        }
        if (i2 < i) {
            f6.g(dj7.i("endIndex < beginIndex: ", i2, i, " < "));
            return;
        }
        if (i2 > str.length()) {
            b6.b(str.length(), dj7.r(i2, "endIndex > string.length: ", " > "));
            return;
        }
        while (i < i2) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 < 128) {
                m67 m67VarA = A(1);
                byte[] bArr = m67VarA.a;
                int i3 = m67VarA.c - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt2;
                while (true) {
                    i = i4;
                    if (i >= iMin || (cCharAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) cCharAt;
                }
                int i5 = m67VarA.c;
                int i6 = (i3 + i) - i5;
                m67VarA.c = i5 + i6;
                this.b += (long) i6;
            } else {
                if (cCharAt2 < 2048) {
                    m67 m67VarA2 = A(2);
                    byte[] bArr2 = m67VarA2.a;
                    int i7 = m67VarA2.c;
                    bArr2[i7] = (byte) ((cCharAt2 >> 6) | XC20P.IV_BIT_LENGTH);
                    bArr2[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    m67VarA2.c = i7 + 2;
                    this.b += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    m67 m67VarA3 = A(3);
                    byte[] bArr3 = m67VarA3.a;
                    int i8 = m67VarA3.c;
                    bArr3[i8] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    m67VarA3.c = i8 + 3;
                    this.b += 3;
                } else {
                    int i9 = i + 1;
                    char cCharAt3 = i9 < i2 ? str.charAt(i9) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        J(63);
                        i = i9;
                    } else {
                        int i10 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        m67 m67VarA4 = A(4);
                        byte[] bArr4 = m67VarA4.a;
                        int i11 = m67VarA4.c;
                        bArr4[i11] = (byte) ((i10 >> 18) | 240);
                        bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                        bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                        bArr4[i11 + 3] = (byte) ((i10 & 63) | 128);
                        m67VarA4.c = i11 + 4;
                        this.b += 4;
                        i += 2;
                    }
                }
                i++;
            }
        }
    }

    public final void Z(String str) {
        str.getClass();
        Y(0, str.length(), str);
    }

    public final void a() throws EOFException {
        skip(this.b);
    }

    public final void b(nw0 nw0Var, long j, long j2) {
        nw0Var.getClass();
        long j3 = j;
        k55.c(this.b, j3, j2);
        if (j2 == 0) {
            return;
        }
        nw0Var.b += j2;
        m67 m67Var = this.a;
        while (true) {
            m67Var.getClass();
            long j4 = m67Var.c - m67Var.b;
            if (j3 < j4) {
                break;
            }
            j3 -= j4;
            m67Var = m67Var.f;
        }
        long j5 = j2;
        while (j5 > 0) {
            m67Var.getClass();
            m67 m67VarC = m67Var.c();
            int i = m67VarC.b + ((int) j3);
            m67VarC.b = i;
            m67VarC.c = Math.min(i + ((int) j5), m67VarC.c);
            m67 m67Var2 = nw0Var.a;
            if (m67Var2 == null) {
                m67VarC.g = m67VarC;
                m67VarC.f = m67VarC;
                nw0Var.a = m67VarC;
            } else {
                m67 m67Var3 = m67Var2.g;
                m67Var3.getClass();
                m67Var3.b(m67VarC);
            }
            j5 -= (long) (m67VarC.c - m67VarC.b);
            m67Var = m67Var.f;
            j3 = 0;
        }
    }

    public final void b0(int i) {
        if (i < 128) {
            J(i);
            return;
        }
        if (i < 2048) {
            m67 m67VarA = A(2);
            byte[] bArr = m67VarA.a;
            int i2 = m67VarA.c;
            bArr[i2] = (byte) ((i >> 6) | XC20P.IV_BIT_LENGTH);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            m67VarA.c = i2 + 2;
            this.b += 2;
            return;
        }
        if (55296 <= i && i < 57344) {
            J(63);
            return;
        }
        if (i < 65536) {
            m67 m67VarA2 = A(3);
            byte[] bArr2 = m67VarA2.a;
            int i3 = m67VarA2.c;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            m67VarA2.c = i3 + 3;
            this.b += 3;
            return;
        }
        if (i > 1114111) {
            c6.f("Unexpected code point: 0x".concat(k55.G(i)));
            return;
        }
        m67 m67VarA3 = A(4);
        byte[] bArr3 = m67VarA3.a;
        int i4 = m67VarA3.c;
        bArr3[i4] = (byte) ((i >> 18) | 240);
        bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
        bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
        bArr3[i4 + 3] = (byte) ((i & 63) | 128);
        m67VarA3.c = i4 + 4;
        this.b += 4;
    }

    public final Object clone() {
        nw0 nw0Var = new nw0();
        if (this.b == 0) {
            return nw0Var;
        }
        m67 m67Var = this.a;
        m67Var.getClass();
        m67 m67VarC = m67Var.c();
        nw0Var.a = m67VarC;
        m67VarC.g = m67VarC;
        m67VarC.f = m67VarC;
        for (m67 m67Var2 = m67Var.f; m67Var2 != m67Var; m67Var2 = m67Var2.f) {
            m67 m67Var3 = m67VarC.g;
            m67Var3.getClass();
            m67Var2.getClass();
            m67Var3.b(m67Var2.c());
        }
        nw0Var.b = this.b;
        return nw0Var;
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return f48.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nw0)) {
            return false;
        }
        long j = this.b;
        nw0 nw0Var = (nw0) obj;
        if (j != nw0Var.b) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        m67 m67Var = this.a;
        m67Var.getClass();
        m67 m67Var2 = nw0Var.a;
        m67Var2.getClass();
        int i = m67Var.b;
        int i2 = m67Var2.b;
        long j2 = 0;
        while (j2 < this.b) {
            long jMin = Math.min(m67Var.c - i, m67Var2.c - i2);
            long j3 = 0;
            while (j3 < jMin) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (m67Var.a[i] != m67Var2.a[i2]) {
                    return false;
                }
                j3++;
                i = i3;
                i2 = i4;
            }
            if (i == m67Var.c) {
                m67Var = m67Var.f;
                m67Var.getClass();
                i = m67Var.b;
            }
            if (i2 == m67Var2.c) {
                m67Var2 = m67Var2.f;
                m67Var2.getClass();
                i2 = m67Var2.b;
            }
            j2 += jMin;
        }
        return true;
    }

    @Override // defpackage.nh7
    public final void f0(nw0 nw0Var, long j) {
        m67 m67VarB;
        nw0Var.getClass();
        if (nw0Var == this) {
            c6.f("source == this");
            return;
        }
        k55.c(nw0Var.b, 0L, j);
        while (j > 0) {
            m67 m67Var = nw0Var.a;
            m67Var.getClass();
            int i = m67Var.c;
            m67 m67Var2 = nw0Var.a;
            m67Var2.getClass();
            long j2 = i - m67Var2.b;
            int i2 = 0;
            if (j < j2) {
                m67 m67Var3 = this.a;
                m67 m67Var4 = m67Var3 != null ? m67Var3.g : null;
                if (m67Var4 != null && m67Var4.e) {
                    if ((((long) m67Var4.c) + j) - ((long) (m67Var4.d ? 0 : m67Var4.b)) <= 8192) {
                        m67 m67Var5 = nw0Var.a;
                        m67Var5.getClass();
                        m67Var5.d(m67Var4, (int) j);
                        nw0Var.b -= j;
                        this.b += j;
                        return;
                    }
                }
                m67 m67Var6 = nw0Var.a;
                m67Var6.getClass();
                int i3 = (int) j;
                if (i3 <= 0 || i3 > m67Var6.c - m67Var6.b) {
                    c6.f("byteCount out of range");
                    return;
                }
                if (i3 >= 1024) {
                    m67VarB = m67Var6.c();
                } else {
                    m67VarB = o67.b();
                    byte[] bArr = m67Var6.a;
                    byte[] bArr2 = m67VarB.a;
                    int i4 = m67Var6.b;
                    x50.j0(bArr, bArr2, 0, i4, i4 + i3, 2);
                }
                m67VarB.c = m67VarB.b + i3;
                m67Var6.b += i3;
                m67 m67Var7 = m67Var6.g;
                m67Var7.getClass();
                m67Var7.b(m67VarB);
                nw0Var.a = m67VarB;
            }
            m67 m67Var8 = nw0Var.a;
            m67Var8.getClass();
            long j3 = m67Var8.c - m67Var8.b;
            nw0Var.a = m67Var8.a();
            m67 m67Var9 = this.a;
            if (m67Var9 == null) {
                this.a = m67Var8;
                m67Var8.g = m67Var8;
                m67Var8.f = m67Var8;
            } else {
                m67 m67Var10 = m67Var9.g;
                m67Var10.getClass();
                m67Var10.b(m67Var8);
                m67 m67Var11 = m67Var8.g;
                if (m67Var11 == m67Var8) {
                    l0.e("cannot compact");
                    return;
                }
                m67Var11.getClass();
                if (m67Var11.e) {
                    int i5 = m67Var8.c - m67Var8.b;
                    m67 m67Var12 = m67Var8.g;
                    m67Var12.getClass();
                    int i6 = 8192 - m67Var12.c;
                    m67 m67Var13 = m67Var8.g;
                    m67Var13.getClass();
                    if (!m67Var13.d) {
                        m67 m67Var14 = m67Var8.g;
                        m67Var14.getClass();
                        i2 = m67Var14.b;
                    }
                    if (i5 <= i6 + i2) {
                        m67 m67Var15 = m67Var8.g;
                        m67Var15.getClass();
                        m67Var8.d(m67Var15, i5);
                        m67Var8.a();
                        o67.a(m67Var8);
                    }
                }
            }
            nw0Var.b -= j3;
            this.b += j3;
            j -= j3;
        }
    }

    public final byte h(long j) {
        k55.c(this.b, j, 1L);
        m67 m67Var = this.a;
        m67Var.getClass();
        long j2 = this.b;
        if (j2 - j < j) {
            while (j2 > j) {
                m67Var = m67Var.g;
                m67Var.getClass();
                j2 -= (long) (m67Var.c - m67Var.b);
            }
            return m67Var.a[(int) ((((long) m67Var.b) + j) - j2)];
        }
        long j3 = 0;
        while (true) {
            int i = m67Var.c;
            int i2 = m67Var.b;
            long j4 = ((long) (i - i2)) + j3;
            if (j4 > j) {
                return m67Var.a[(int) ((((long) i2) + j) - j3)];
            }
            m67Var = m67Var.f;
            m67Var.getClass();
            j3 = j4;
        }
    }

    public final int hashCode() {
        m67 m67Var = this.a;
        if (m67Var == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = m67Var.c;
            for (int i3 = m67Var.b; i3 < i2; i3++) {
                i = (i * 31) + m67Var.a[i3];
            }
            m67Var = m67Var.f;
            m67Var.getClass();
        } while (m67Var != this.a);
        return i;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    public final long j(byte b, long j, long j2) {
        m67 m67Var;
        long j3 = 0;
        if (0 > j || j > j2) {
            StringBuilder sb = new StringBuilder("size=");
            sb.append(this.b);
            fz5.r(sb, " fromIndex=", j, " toIndex=");
            sb.append(j2);
            throw new IllegalArgumentException(sb.toString().toString());
        }
        long j4 = this.b;
        if (j2 > j4) {
            j2 = j4;
        }
        if (j == j2 || (m67Var = this.a) == null) {
            return -1L;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                m67Var = m67Var.g;
                m67Var.getClass();
                j4 -= (long) (m67Var.c - m67Var.b);
            }
            while (j4 < j2) {
                byte[] bArr = m67Var.a;
                int iMin = (int) Math.min(m67Var.c, (((long) m67Var.b) + j2) - j4);
                for (int i = (int) ((((long) m67Var.b) + j) - j4); i < iMin; i++) {
                    if (bArr[i] == b) {
                        return ((long) (i - m67Var.b)) + j4;
                    }
                }
                j4 += (long) (m67Var.c - m67Var.b);
                m67Var = m67Var.f;
                m67Var.getClass();
                j = j4;
            }
            return -1L;
        }
        while (true) {
            long j5 = ((long) (m67Var.c - m67Var.b)) + j3;
            if (j5 > j) {
                break;
            }
            m67Var = m67Var.f;
            m67Var.getClass();
            j3 = j5;
        }
        while (j3 < j2) {
            byte[] bArr2 = m67Var.a;
            int iMin2 = (int) Math.min(m67Var.c, (((long) m67Var.b) + j2) - j3);
            for (int i2 = (int) ((((long) m67Var.b) + j) - j3); i2 < iMin2; i2++) {
                if (bArr2[i2] == b) {
                    return ((long) (i2 - m67Var.b)) + j3;
                }
            }
            j3 += (long) (m67Var.c - m67Var.b);
            m67Var = m67Var.f;
            m67Var.getClass();
            j = j3;
        }
        return -1L;
    }

    @Override // defpackage.zw0
    public final void j0(long j) throws EOFException {
        if (this.b >= j) {
            return;
        }
        d6.d();
    }

    public final long m(hy0 hy0Var, long j) {
        hy0Var.getClass();
        long j2 = 0;
        if (j < 0) {
            f6.g(u48.l(j, "fromIndex < 0: "));
            return 0L;
        }
        m67 m67Var = this.a;
        if (m67Var == null) {
            return -1L;
        }
        long j3 = this.b;
        if (j3 - j < j) {
            while (j3 > j) {
                m67Var = m67Var.g;
                m67Var.getClass();
                j3 -= (long) (m67Var.c - m67Var.b);
            }
            if (hy0Var.d() == 2) {
                byte bI = hy0Var.i(0);
                byte bI2 = hy0Var.i(1);
                while (j3 < this.b) {
                    byte[] bArr = m67Var.a;
                    int i = m67Var.c;
                    for (int i2 = (int) ((((long) m67Var.b) + j) - j3); i2 < i; i2++) {
                        byte b = bArr[i2];
                        if (b == bI || b == bI2) {
                            return ((long) (i2 - m67Var.b)) + j3;
                        }
                    }
                    j3 += (long) (m67Var.c - m67Var.b);
                    m67Var = m67Var.f;
                    m67Var.getClass();
                    j = j3;
                }
            } else {
                byte[] bArrH = hy0Var.h();
                while (j3 < this.b) {
                    byte[] bArr2 = m67Var.a;
                    int i3 = m67Var.c;
                    for (int i4 = (int) ((((long) m67Var.b) + j) - j3); i4 < i3; i4++) {
                        byte b2 = bArr2[i4];
                        for (byte b3 : bArrH) {
                            if (b2 == b3) {
                                return ((long) (i4 - m67Var.b)) + j3;
                            }
                        }
                    }
                    j3 += (long) (m67Var.c - m67Var.b);
                    m67Var = m67Var.f;
                    m67Var.getClass();
                    j = j3;
                }
            }
            return -1L;
        }
        while (true) {
            long j4 = ((long) (m67Var.c - m67Var.b)) + j2;
            if (j4 > j) {
                break;
            }
            m67Var = m67Var.f;
            m67Var.getClass();
            j2 = j4;
        }
        if (hy0Var.d() == 2) {
            byte bI3 = hy0Var.i(0);
            byte bI4 = hy0Var.i(1);
            while (j2 < this.b) {
                byte[] bArr3 = m67Var.a;
                int i5 = m67Var.c;
                for (int i6 = (int) ((((long) m67Var.b) + j) - j2); i6 < i5; i6++) {
                    byte b4 = bArr3[i6];
                    if (b4 == bI3 || b4 == bI4) {
                        return ((long) (i6 - m67Var.b)) + j2;
                    }
                }
                j2 += (long) (m67Var.c - m67Var.b);
                m67Var = m67Var.f;
                m67Var.getClass();
                j = j2;
            }
        } else {
            byte[] bArrH2 = hy0Var.h();
            while (j2 < this.b) {
                byte[] bArr4 = m67Var.a;
                int i7 = m67Var.c;
                for (int i8 = (int) ((((long) m67Var.b) + j) - j2); i8 < i7; i8++) {
                    byte b5 = bArr4[i8];
                    for (byte b6 : bArrH2) {
                        if (b5 == b6) {
                            return ((long) (i8 - m67Var.b)) + j2;
                        }
                    }
                }
                j2 += (long) (m67Var.c - m67Var.b);
                m67Var = m67Var.f;
                m67Var.getClass();
                j = j2;
            }
        }
        return -1L;
    }

    public final boolean n(long j, hy0 hy0Var, int i) {
        hy0Var.getClass();
        if (i >= 0 && j >= 0 && ((long) i) + j <= this.b && i <= hy0Var.d()) {
            return i == 0 || b.a(this, hy0Var, j, j + 1, i) != -1;
        }
        return false;
    }

    @Override // defpackage.yw0
    public final OutputStream n0() {
        return new mw0(this);
    }

    @Override // defpackage.zw0
    public final hy0 o(long j) throws EOFException {
        if (j < 0 || j > 2147483647L) {
            f6.g(u48.l(j, "byteCount: "));
            return null;
        }
        if (this.b < j) {
            d6.d();
            return null;
        }
        if (j < 4096) {
            return new hy0(q(j));
        }
        hy0 hy0VarZ = z((int) j);
        skip(j);
        return hy0VarZ;
    }

    @Override // defpackage.zw0
    public final long o0() throws EOFException {
        int i;
        if (this.b == 0) {
            d6.d();
            return 0L;
        }
        int i2 = 0;
        boolean z = false;
        long j = 0;
        do {
            m67 m67Var = this.a;
            m67Var.getClass();
            byte[] bArr = m67Var.a;
            int i3 = m67Var.b;
            int i4 = m67Var.c;
            while (i3 < i4) {
                byte b = bArr[i3];
                if (b >= 48 && b <= 57) {
                    i = b - 48;
                } else if (b >= 97 && b <= 102) {
                    i = b - 87;
                } else {
                    if (b < 65 || b > 70) {
                        if (i2 == 0) {
                            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(k55.F(b)));
                        }
                        z = true;
                        break;
                    }
                    i = b - 55;
                }
                if (((-1152921504606846976L) & j) != 0) {
                    nw0 nw0Var = new nw0();
                    nw0Var.S(j);
                    nw0Var.J(b);
                    throw new NumberFormatException("Number too large: ".concat(nw0Var.v()));
                }
                j = (j << 4) | ((long) i);
                i3++;
                i2++;
            }
            if (i3 == i4) {
                this.a = m67Var.a();
                o67.a(m67Var);
            } else {
                m67Var.b = i3;
            }
            if (z) {
                break;
            }
        } while (this.a != null);
        this.b -= (long) i2;
        return j;
    }

    @Override // defpackage.zw0
    public final tf6 peek() {
        return new tf6(new sy5(this));
    }

    public final byte[] q(long j) throws EOFException {
        if (j < 0 || j > 2147483647L) {
            f6.g(u48.l(j, "byteCount: "));
            return null;
        }
        if (this.b < j) {
            d6.d();
            return null;
        }
        byte[] bArr = new byte[(int) j];
        readFully(bArr);
        return bArr;
    }

    @Override // defpackage.zw0
    public final InputStream q0() {
        return new lw0(this);
    }

    public final short r() throws EOFException {
        short s = readShort();
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        k55.c(bArr.length, i, i2);
        m67 m67Var = this.a;
        if (m67Var == null) {
            return -1;
        }
        int iMin = Math.min(i2, m67Var.c - m67Var.b);
        byte[] bArr2 = m67Var.a;
        int i3 = m67Var.b;
        x50.h0(bArr2, i, i3, bArr, i3 + iMin);
        int i4 = m67Var.b + iMin;
        m67Var.b = i4;
        this.b -= (long) iMin;
        if (i4 == m67Var.c) {
            this.a = m67Var.a();
            o67.a(m67Var);
        }
        return iMin;
    }

    @Override // defpackage.zw0
    public final byte readByte() throws EOFException {
        if (this.b == 0) {
            d6.d();
            return (byte) 0;
        }
        m67 m67Var = this.a;
        m67Var.getClass();
        int i = m67Var.b;
        int i2 = m67Var.c;
        int i3 = i + 1;
        byte b = m67Var.a[i];
        this.b--;
        if (i3 != i2) {
            m67Var.b = i3;
            return b;
        }
        this.a = m67Var.a();
        o67.a(m67Var);
        return b;
    }

    @Override // defpackage.zw0
    public final void readFully(byte[] bArr) throws EOFException {
        bArr.getClass();
        int i = 0;
        while (i < bArr.length) {
            int i2 = read(bArr, i, bArr.length - i);
            if (i2 == -1) {
                d6.d();
                return;
            }
            i += i2;
        }
    }

    @Override // defpackage.zw0
    public final int readInt() throws EOFException {
        if (this.b < 4) {
            d6.d();
            return 0;
        }
        m67 m67Var = this.a;
        m67Var.getClass();
        int i = m67Var.b;
        int i2 = m67Var.c;
        if (i2 - i < 4) {
            return (readByte() & 255) | ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8);
        }
        byte[] bArr = m67Var.a;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & 255) | i4;
        this.b -= 4;
        if (i5 != i2) {
            m67Var.b = i5;
            return i6;
        }
        this.a = m67Var.a();
        o67.a(m67Var);
        return i6;
    }

    @Override // defpackage.zw0
    public final short readShort() throws EOFException {
        if (this.b < 2) {
            d6.d();
            return (short) 0;
        }
        m67 m67Var = this.a;
        m67Var.getClass();
        int i = m67Var.b;
        int i2 = m67Var.c;
        if (i2 - i < 2) {
            return (short) ((readByte() & 255) | ((readByte() & 255) << 8));
        }
        byte[] bArr = m67Var.a;
        int i3 = i + 1;
        int i4 = (bArr[i] & 255) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & 255) | i4;
        this.b -= 2;
        if (i5 == i2) {
            this.a = m67Var.a();
            o67.a(m67Var);
        } else {
            m67Var.b = i5;
        }
        return (short) i6;
    }

    @Override // defpackage.zw0
    public final boolean request(long j) {
        return this.b >= j;
    }

    @Override // defpackage.zw0
    public final void skip(long j) throws EOFException {
        while (j > 0) {
            m67 m67Var = this.a;
            if (m67Var == null) {
                d6.d();
                return;
            }
            int iMin = (int) Math.min(j, m67Var.c - m67Var.b);
            long j2 = iMin;
            this.b -= j2;
            j -= j2;
            int i = m67Var.b + iMin;
            m67Var.b = i;
            if (i == m67Var.c) {
                this.a = m67Var.a();
                o67.a(m67Var);
            }
        }
    }

    @Override // defpackage.zw0
    public final byte[] t() {
        return q(this.b);
    }

    public final String toString() {
        long j = this.b;
        if (j <= 2147483647L) {
            return z((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.b).toString());
    }

    public final String u(long j, Charset charset) throws EOFException {
        charset.getClass();
        if (j < 0 || j > 2147483647L) {
            f6.g(u48.l(j, "byteCount: "));
            return null;
        }
        if (this.b < j) {
            d6.d();
            return null;
        }
        if (j == 0) {
            return "";
        }
        m67 m67Var = this.a;
        m67Var.getClass();
        int i = m67Var.b;
        if (((long) i) + j > m67Var.c) {
            return new String(q(j), charset);
        }
        int i2 = (int) j;
        String str = new String(m67Var.a, i, i2, charset);
        int i3 = m67Var.b + i2;
        m67Var.b = i3;
        this.b -= j;
        if (i3 == m67Var.c) {
            this.a = m67Var.a();
            o67.a(m67Var);
        }
        return str;
    }

    public final String v() {
        return u(this.b, f51.a);
    }

    /* JADX INFO: renamed from: write, reason: collision with other method in class */
    public final void m75write(byte[] bArr, int i, int i2) {
        bArr.getClass();
        long j = i2;
        k55.c(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            m67 m67VarA = A(1);
            int iMin = Math.min(i3 - i, 8192 - m67VarA.c);
            int i4 = i + iMin;
            x50.h0(bArr, m67VarA.c, i, m67VarA.a, i4);
            m67VarA.c += iMin;
            i = i4;
        }
        this.b += j;
    }

    @Override // defpackage.yw0
    public final /* bridge */ /* synthetic */ yw0 writeByte(int i) {
        J(i);
        return this;
    }

    @Override // defpackage.yw0
    public final /* bridge */ /* synthetic */ yw0 writeInt(int i) {
        U(i);
        return this;
    }

    @Override // defpackage.yw0
    public final /* bridge */ /* synthetic */ yw0 writeShort(int i) {
        W(i);
        return this;
    }

    @Override // defpackage.zw0
    public final boolean x() {
        return this.b == 0;
    }

    @Override // defpackage.zw0
    public final int y(nu5 nu5Var) throws EOFException {
        nu5Var.getClass();
        int iD = b.d(this, nu5Var, false);
        if (iD == -1) {
            return -1;
        }
        skip(nu5Var.a[iD].d());
        return iD;
    }

    public final hy0 z(int i) {
        if (i == 0) {
            return hy0.d;
        }
        k55.c(this.b, 0L, i);
        m67 m67Var = this.a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            m67Var.getClass();
            int i5 = m67Var.c;
            int i6 = m67Var.b;
            if (i5 == i6) {
                e6.e("s.limit == s.pos");
                return null;
            }
            i3 += i5 - i6;
            i4++;
            m67Var = m67Var.f;
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        m67 m67Var2 = this.a;
        int i7 = 0;
        while (i2 < i) {
            m67Var2.getClass();
            bArr[i7] = m67Var2.a;
            i2 += m67Var2.c - m67Var2.b;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = m67Var2.b;
            m67Var2.d = true;
            i7++;
            m67Var2 = m67Var2.f;
        }
        return new p67(bArr, iArr);
    }

    @Override // defpackage.zw0, defpackage.yw0
    public final nw0 c() {
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, defpackage.nh7
    public final void close() {
    }

    @Override // defpackage.yw0, defpackage.nh7, java.io.Flushable
    public final void flush() {
    }

    @Override // defpackage.yw0
    public final /* bridge */ /* synthetic */ yw0 write(byte[] bArr, int i, int i2) {
        m75write(bArr, i, i2);
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining;
        while (i > 0) {
            m67 m67VarA = A(1);
            int iMin = Math.min(i, 8192 - m67VarA.c);
            byteBuffer.get(m67VarA.a, m67VarA.c, iMin);
            i -= iMin;
            m67VarA.c += iMin;
        }
        this.b += (long) iRemaining;
        return iRemaining;
    }

    @Override // defpackage.yw0
    public final yw0 write(byte[] bArr) {
        bArr.getClass();
        m75write(bArr, 0, bArr.length);
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        m67 m67Var = this.a;
        if (m67Var == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), m67Var.c - m67Var.b);
        byteBuffer.put(m67Var.a, m67Var.b, iMin);
        int i = m67Var.b + iMin;
        m67Var.b = i;
        this.b -= (long) iMin;
        if (i == m67Var.c) {
            this.a = m67Var.a();
            o67.a(m67Var);
        }
        return iMin;
    }
}
