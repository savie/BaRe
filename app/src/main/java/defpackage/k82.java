package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class k82 extends j0 {
    @Override // defpackage.j0, defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        m1Var.k(24, z, y());
    }

    @Override // defpackage.j0, defpackage.q1
    public final int p(boolean z) {
        return m1.d(y().length, z);
    }

    public final byte[] y() {
        byte[] bArr = this.a;
        if (bArr[bArr.length - 1] != 90) {
            return bArr;
        }
        if (!x(10) || !x(11)) {
            byte[] bArr2 = new byte[bArr.length + 4];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length - 1);
            System.arraycopy(lq7.b("0000Z"), 0, bArr2, bArr.length - 1, 5);
            return bArr2;
        }
        if (!x(12) || !x(13)) {
            byte[] bArr3 = new byte[bArr.length + 2];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length - 1);
            System.arraycopy(lq7.b("00Z"), 0, bArr3, bArr.length - 1, 3);
            return bArr3;
        }
        for (int i = 0; i != bArr.length; i++) {
            if (bArr[i] == 46 && i == 14) {
                int length = bArr.length - 2;
                while (length > 0 && bArr[length] == 48) {
                    length--;
                }
                if (bArr[length] == 46) {
                    byte[] bArr4 = new byte[length + 1];
                    System.arraycopy(bArr, 0, bArr4, 0, length);
                    bArr4[length] = 90;
                    return bArr4;
                }
                byte[] bArr5 = new byte[length + 2];
                int i2 = length + 1;
                System.arraycopy(bArr, 0, bArr5, 0, i2);
                bArr5[i2] = 90;
                return bArr5;
            }
        }
        return bArr;
    }

    @Override // defpackage.j0, defpackage.q1
    public final q1 u() {
        return this;
    }

    @Override // defpackage.q1
    public final q1 w() {
        return this;
    }
}
