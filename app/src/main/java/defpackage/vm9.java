package defpackage;

import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vm9 implements Closeable {
    public final ByteArrayInputStream a;
    public sm9 b;
    public final byte[] c = new byte[8];
    public final tx0 d = new tx0(1);

    public vm9(ByteArrayInputStream byteArrayInputStream) {
        this.a = byteArrayInputStream;
    }

    public final long a() {
        q((byte) -128);
        n();
        long jM = m();
        if (jM < 0) {
            g84.j("the maximum supported array length is 9223372036854775807");
            return 0L;
        }
        if (jM > 0) {
            this.d.a.push(Long.valueOf(jM));
        }
        return jM;
    }

    public final long b() {
        boolean z;
        h();
        byte b = this.b.a;
        if (b == 0) {
            z = true;
        } else {
            if (b != 32) {
                l0.e(fz5.j((b >> 5) & 7, "expected major type 0 or 1 but found "));
                return 0L;
            }
            z = false;
        }
        long jM = m();
        if (jM >= 0) {
            return z ? jM : ~jM;
        }
        g84.j("the maximum supported unsigned/negative integer is 9223372036854775807");
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
        this.d.b();
    }

    public final long g() {
        q((byte) -96);
        n();
        long jM = m();
        if (jM < 0 || jM > 4611686018427387903L) {
            g84.j("the maximum supported map length is 4611686018427387903L");
            return 0L;
        }
        if (jM > 0) {
            this.d.a.push(Long.valueOf(jM + jM));
        }
        return jM;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cb  */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008b, code lost:
    
        if (r0 != (-2)) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.sm9 h() {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vm9.h():sm9");
    }

    public final boolean j() {
        q((byte) -32);
        if (this.b.b > 24) {
            l0.e("expected simple value");
            return false;
        }
        int iM = (int) m();
        if (iM == 20) {
            return false;
        }
        if (iM == 21) {
            return true;
        }
        l0.e("expected FALSE or TRUE");
        return false;
    }

    public final long m() throws IOException {
        sm9 sm9Var = this.b;
        byte b = sm9Var.b;
        if (b < 24) {
            long j = b;
            this.b = null;
            return j;
        }
        if (b == 24) {
            int i = this.a.read();
            if (i != -1) {
                this.b = null;
                return ((long) i) & 255;
            }
            d6.d();
            return 0L;
        }
        byte[] bArr = this.c;
        if (b == 25) {
            r(bArr, 2);
            return ((((long) bArr[0]) & 255) << 8) | (((long) bArr[1]) & 255);
        }
        if (b == 26) {
            r(bArr, 4);
            return ((((long) bArr[0]) & 255) << 24) | ((((long) bArr[1]) & 255) << 16) | ((((long) bArr[2]) & 255) << 8) | (((long) bArr[3]) & 255);
        }
        if (b != 27) {
            y5.m(dj7.i("invalid additional information ", b, (sm9Var.a >> 5) & 7, " for major type "));
            return 0L;
        }
        r(bArr, 8);
        long j2 = bArr[0];
        long j3 = bArr[1];
        long j4 = bArr[2];
        long j5 = bArr[3];
        return (((long) bArr[7]) & 255) | ((j3 & 255) << 48) | ((j2 & 255) << 56) | ((j4 & 255) << 40) | ((j5 & 255) << 32) | ((bArr[4] & 255) << 24) | ((bArr[5] & 255) << 16) | ((bArr[6] & 255) << 8);
    }

    public final void n() {
        h();
        byte b = this.b.b;
        if (b != 31) {
            return;
        }
        l0.e(fz5.j(b, "expected definite length but found "));
    }

    public final void q(byte b) {
        h();
        byte b2 = this.b.a;
        if (b2 == b) {
            return;
        }
        l0.e(dj7.i("expected major type ", (b >> 5) & 7, (b2 >> 5) & 7, " but found "));
    }

    public final void r(byte[] bArr, int i) throws IOException {
        int i2 = 0;
        while (i2 != i) {
            int i3 = this.a.read(bArr, i2, i - i2);
            if (i3 == -1) {
                d6.d();
                return;
            }
            i2 += i3;
        }
        this.b = null;
    }

    public final byte[] u() {
        n();
        long jM = m();
        if (jM < 0 || jM > 2147483647L) {
            g84.j("the maximum supported byte/text string length is 2147483647 bytes");
            return null;
        }
        if (this.a.available() < jM) {
            d6.d();
            return null;
        }
        int i = (int) jM;
        byte[] bArr = new byte[i];
        r(bArr, i);
        return bArr;
    }
}
