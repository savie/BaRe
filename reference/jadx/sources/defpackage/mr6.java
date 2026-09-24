package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class mr6 extends gf2 implements cp7 {
    public final xs0 a;
    public final int b;
    public byte[] c;
    public final byte[] d;
    public final byte[] e;
    public int f;

    public mr6(xs0 xs0Var) {
        this.a = xs0Var;
        int blockSize = xs0Var.getBlockSize();
        this.b = blockSize;
        this.c = new byte[blockSize];
        this.d = new byte[blockSize];
        this.e = new byte[blockSize];
        this.f = 0;
    }

    @Override // defpackage.xs0
    public final void a(boolean z, z61 z61Var) {
        if (!(z61Var instanceof vw5)) {
            c6.f("CTR/SIC mode requires ParametersWithIV");
            return;
        }
        vw5 vw5Var = (vw5) z61Var;
        byte[] bArrK = ms8.k(vw5Var.a);
        this.c = bArrK;
        int length = bArrK.length;
        int i = this.b;
        if (i < length) {
            c6.f(xs1.h(i, "CTR/SIC mode requires IV no greater than: ", " bytes."));
            return;
        }
        int i2 = 8 > i / 2 ? i / 2 : 8;
        if (i - bArrK.length > i2) {
            d6.h("CTR/SIC mode requires IV of at least: ", i - i2, " bytes.");
            return;
        }
        z61 z61Var2 = vw5Var.b;
        if (z61Var2 != null) {
            this.a.a(true, z61Var2);
        }
        reset();
    }

    public final int c(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        byte b;
        byte b2;
        if (i + i2 > bArr.length) {
            throw new ua2("input buffer too small");
        }
        if (i3 + i2 > bArr2.length) {
            throw new dv5("output buffer too short");
        }
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = this.f;
            byte[] bArr3 = this.e;
            byte[] bArr4 = this.d;
            if (i5 == 0) {
                byte[] bArr5 = this.c;
                if (bArr5.length < this.b && bArr4[bArr5.length - 1] != bArr5[bArr5.length - 1]) {
                    l0.e("Counter in CTR/SIC mode out of range.");
                    return 0;
                }
                this.a.j(bArr4, bArr3, 0, 0);
                byte b3 = bArr[i + i4];
                int i6 = this.f;
                this.f = i6 + 1;
                b = (byte) (b3 ^ bArr3[i6]);
            } else {
                byte b4 = bArr[i + i4];
                int i7 = i5 + 1;
                this.f = i7;
                b = (byte) (bArr3[i5] ^ b4);
                if (i7 == bArr4.length) {
                    this.f = 0;
                    int length = bArr4.length;
                    do {
                        length--;
                        if (length < 0) {
                            break;
                        }
                        b2 = (byte) (bArr4[length] + 1);
                        bArr4[length] = b2;
                    } while (b2 == 0);
                }
            }
            bArr2[i3 + i4] = b;
        }
        return i2;
    }

    @Override // defpackage.xs0
    public final String f() {
        return this.a.f().concat("/SIC");
    }

    @Override // defpackage.xs0
    public final int getBlockSize() {
        return this.a.getBlockSize();
    }

    @Override // defpackage.xs0
    public final int j(byte[] bArr, byte[] bArr2, int i, int i2) {
        byte b;
        int i3 = this.f;
        int i4 = this.b;
        if (i3 != 0) {
            c(bArr, i, i4, bArr2, i2);
            return i4;
        }
        if (i + i4 > bArr.length) {
            throw new ua2("input buffer too small");
        }
        if (i2 + i4 > bArr2.length) {
            throw new dv5("output buffer too short");
        }
        xs0 xs0Var = this.a;
        byte[] bArr3 = this.d;
        byte[] bArr4 = this.e;
        xs0Var.j(bArr3, bArr4, 0, 0);
        for (int i5 = 0; i5 < i4; i5++) {
            bArr2[i2 + i5] = (byte) (bArr[i + i5] ^ bArr4[i5]);
        }
        int length = bArr3.length;
        do {
            length--;
            if (length < 0) {
                break;
            }
            b = (byte) (bArr3[length] + 1);
            bArr3[length] = b;
        } while (b == 0);
        return i4;
    }

    @Override // defpackage.xs0
    public final void reset() {
        byte[] bArr = this.d;
        Arrays.fill(bArr, (byte) 0);
        byte[] bArr2 = this.c;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        this.a.reset();
        this.f = 0;
    }
}
