package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p96 {
    public final byte[] a;
    public int b;

    public p96(byte[] bArr) {
        bArr.getClass();
        this.a = bArr;
    }

    public final void a(rt3 rt3Var) throws GeneralSecurityException {
        while (this.b < this.a.length) {
            long jC = c();
            rt3Var.a(Integer.valueOf((int) (jC >>> 3)), Integer.valueOf((int) (jC & 7)), this);
        }
    }

    public final byte[] b(int i) {
        if (i != 2) {
            l0.e("Expected length-delimited field");
            return null;
        }
        int iC = (int) c();
        if (iC >= 0) {
            int i2 = this.b;
            int i3 = i2 + iC;
            byte[] bArr = this.a;
            if (i3 <= bArr.length) {
                byte[] bArrK0 = x50.k0(bArr, i2, i2 + iC);
                this.b += iC;
                return bArrK0;
            }
        }
        l0.e("Invalid length-delimited size");
        return null;
    }

    public final long c() throws GeneralSecurityException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.b;
            byte[] bArr = this.a;
            if (i2 >= bArr.length) {
                l0.e("Truncated varint");
                return 0L;
            }
            this.b = i2 + 1;
            byte b = bArr[i2];
            j |= ((long) (b & 127)) << i;
            if ((b & 128) == 0) {
                return j;
            }
        }
        m0.h("Malformed varint");
        return 0L;
    }

    public final long d(int i) {
        if (i == 0) {
            return c();
        }
        l0.e("Expected varint field");
        return 0L;
    }

    public final void e(int i) throws GeneralSecurityException {
        if (i == 0) {
            c();
        } else if (i == 1) {
            this.b += 8;
        } else if (i == 2) {
            this.b += (int) c();
        } else {
            if (i != 5) {
                throw new GeneralSecurityException(fz5.j(i, "Unsupported wire type: "));
            }
            this.b += 4;
        }
        if (this.b <= this.a.length) {
            return;
        }
        l0.e("Skipped past proto end");
    }
}
