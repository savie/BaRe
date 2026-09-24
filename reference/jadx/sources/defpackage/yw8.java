package defpackage;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public final class yw8 extends n60 {
    public final byte[] b;

    public yw8(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[32];
        this.b = bArr;
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & 248);
        byte b = (byte) (bArr[31] & 127);
        bArr[31] = b;
        bArr[31] = (byte) (b | 64);
    }

    public final void a(zw8 zw8Var, byte[] bArr) {
        byte[] bArr2 = new byte[32];
        System.arraycopy(zw8Var.b, 0, bArr2, 0, 32);
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            int i2 = i * 4;
            byte[] bArr3 = this.b;
            iArr[i] = ((bArr3[i2 + 2] & 255) << 16) | (bArr3[i2] & 255) | ((bArr3[i2 + 1] & 255) << 8) | (bArr3[i2 + 3] << 24);
        }
        iArr[0] = iArr[0] & (-8);
        int i3 = iArr[7] & Integer.MAX_VALUE;
        iArr[7] = i3;
        iArr[7] = i3 | 1073741824;
        int[] iArr2 = new int[10];
        nc8.s(0, 0, bArr2, iArr2);
        nc8.s(16, 5, bArr2, iArr2);
        iArr2[9] = iArr2[9] & 16777215;
        int[] iArr3 = new int[10];
        nc8.n(0, 0, iArr2, iArr3);
        int[] iArr4 = new int[10];
        boolean z = true;
        iArr4[0] = 1;
        int[] iArr5 = new int[10];
        iArr5[0] = 1;
        int[] iArr6 = new int[10];
        int[] iArr7 = new int[10];
        int[] iArr8 = new int[10];
        int i4 = 254;
        int i5 = 1;
        while (true) {
            nc8.c(iArr5, iArr6, iArr7, iArr5);
            nc8.c(iArr3, iArr4, iArr6, iArr3);
            nc8.K(iArr7, iArr3, iArr7);
            nc8.K(iArr5, iArr6, iArr5);
            nc8.i0(iArr6, iArr6);
            nc8.i0(iArr3, iArr3);
            nc8.l0(iArr6, iArr3, iArr8);
            nc8.J(iArr8, iArr4);
            nc8.b(iArr4, iArr3, iArr4);
            nc8.K(iArr4, iArr8, iArr4);
            nc8.K(iArr3, iArr6, iArr3);
            nc8.c(iArr7, iArr5, iArr5, iArr6);
            nc8.i0(iArr5, iArr5);
            nc8.i0(iArr6, iArr6);
            nc8.K(iArr6, iArr2, iArr6);
            boolean z2 = z;
            int i6 = i4 - 1;
            int i7 = (iArr[i6 >>> 5] >>> (i6 & 31)) & 1;
            int i8 = i5 ^ i7;
            nc8.q(i8, iArr3, iArr5);
            nc8.q(i8, iArr4, iArr6);
            if (i6 < 3) {
                break;
            }
            i5 = i7;
            i4 = i6;
            z = z2;
        }
        for (int i9 = 0; i9 < 3; i9++) {
            int[] iArr9 = new int[10];
            int[] iArr10 = new int[10];
            nc8.c(iArr3, iArr4, iArr9, iArr10);
            nc8.i0(iArr9, iArr9);
            nc8.i0(iArr10, iArr10);
            nc8.K(iArr9, iArr10, iArr3);
            nc8.l0(iArr9, iArr10, iArr9);
            nc8.J(iArr9, iArr4);
            nc8.b(iArr4, iArr10, iArr4);
            nc8.K(iArr4, iArr9, iArr4);
        }
        nc8.E(iArr4, iArr4);
        nc8.K(iArr3, iArr4, iArr3);
        nc8.M(iArr3);
        nc8.x(0, 0, bArr, iArr3);
        nc8.x(5, 16, bArr, iArr3);
        int i10 = 0;
        for (int i11 = 0; i11 < 32; i11++) {
            i10 |= bArr[i11];
        }
        if (i10 != 0) {
            return;
        }
        l0.e("X25519 agreement failed");
    }
}
