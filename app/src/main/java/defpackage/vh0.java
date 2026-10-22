package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class vh0 extends j1 {
    public final int d;
    public final j1[] e;

    public vh0(byte[] bArr, j1[] j1VarArr) {
        super(bArr);
        this.e = j1VarArr;
        this.d = PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;
    }

    public static byte[] y(j1[] j1VarArr) {
        int length = j1VarArr.length;
        if (length == 0) {
            return j1.c;
        }
        if (length == 1) {
            return j1VarArr[0].a;
        }
        int length2 = 0;
        for (j1 j1Var : j1VarArr) {
            length2 += j1Var.a.length;
        }
        byte[] bArr = new byte[length2];
        int length3 = 0;
        for (j1 j1Var2 : j1VarArr) {
            byte[] bArr2 = j1Var2.a;
            System.arraycopy(bArr2, 0, bArr, length3, bArr2.length);
            length3 += bArr2.length;
        }
        return bArr;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        m1Var.n(36, z);
        m1Var.f(128);
        j1[] j1VarArr = this.e;
        if (j1VarArr == null) {
            int i = 0;
            while (true) {
                byte[] bArr = this.a;
                if (i >= bArr.length) {
                    break;
                }
                int iMin = Math.min(bArr.length - i, this.d);
                m1Var.n(4, true);
                m1Var.i(iMin);
                m1Var.g(bArr, i, iMin);
                i += iMin;
            }
        } else {
            m1Var.p(j1VarArr);
        }
        m1Var.f(0);
        m1Var.f(0);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return true;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        int iP = z ? 4 : 3;
        j1[] j1VarArr = this.e;
        if (j1VarArr != null) {
            for (j1 j1Var : j1VarArr) {
                iP += j1Var.p(true);
            }
            return iP;
        }
        byte[] bArr = this.a;
        int length = bArr.length;
        int i = this.d;
        int i2 = length / i;
        int iD = (m1.d(i, true) * i2) + iP;
        int length2 = bArr.length - (i2 * i);
        return length2 > 0 ? m1.d(length2, true) + iD : iD;
    }
}
