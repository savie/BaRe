package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class sh0 extends u {
    public final int d;
    public final u[] e;

    public sh0(u[] uVarArr) {
        super(E(uVarArr));
        this.e = uVarArr;
        this.d = PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;
    }

    public static byte[] E(u[] uVarArr) {
        int length = uVarArr.length;
        if (length == 0) {
            return new byte[]{0};
        }
        if (length == 1) {
            return uVarArr[0].a;
        }
        int i = length - 1;
        int length2 = 0;
        for (int i2 = 0; i2 < i; i2++) {
            byte[] bArr = uVarArr[i2].a;
            if (bArr[0] != 0) {
                c6.f("only the last nested bitstring can have padding");
                return null;
            }
            length2 += bArr.length - 1;
        }
        byte[] bArr2 = uVarArr[i].a;
        byte b = bArr2[0];
        byte[] bArr3 = new byte[length2 + bArr2.length];
        bArr3[0] = b;
        int i3 = 1;
        for (u uVar : uVarArr) {
            byte[] bArr4 = uVar.a;
            int length3 = bArr4.length - 1;
            System.arraycopy(bArr4, 1, bArr3, i3, length3);
            i3 += length3;
        }
        return bArr3;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        boolean zO = o();
        byte[] bArr = this.a;
        if (!zO) {
            int length = bArr.length;
            m1Var.n(3, z);
            m1Var.i(length);
            m1Var.g(bArr, 0, length);
            return;
        }
        m1Var.n(35, z);
        m1Var.f(128);
        u[] uVarArr = this.e;
        if (uVarArr != null) {
            m1Var.p(uVarArr);
        } else if (bArr.length >= 2) {
            byte b = bArr[0];
            int length2 = bArr.length;
            int i = length2 - 1;
            int i2 = this.d;
            int i3 = i2 - 1;
            while (i > i3) {
                m1Var.f(3);
                m1Var.i(i2);
                m1Var.f(0);
                m1Var.g(bArr, length2 - i, i3);
                i -= i3;
            }
            m1Var.f(3);
            m1Var.i(i + 1);
            m1Var.f(b);
            m1Var.g(bArr, length2 - i, i);
        }
        m1Var.f(0);
        m1Var.f(0);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return this.e != null || this.a.length > this.d;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        boolean zO = o();
        byte[] bArr = this.a;
        if (!zO) {
            return m1.d(bArr.length, z);
        }
        int iP = z ? 4 : 3;
        u[] uVarArr = this.e;
        if (uVarArr != null) {
            for (u uVar : uVarArr) {
                iP += uVar.p(true);
            }
            return iP;
        }
        if (bArr.length < 2) {
            return iP;
        }
        int length = bArr.length - 2;
        int i = this.d;
        int i2 = i - 1;
        int i3 = length / i2;
        return m1.d(bArr.length - (i2 * i3), true) + (m1.d(i, true) * i3) + iP;
    }

    public sh0(byte[] bArr, int i) {
        super(bArr, i);
        this.e = null;
        this.d = PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;
    }
}
