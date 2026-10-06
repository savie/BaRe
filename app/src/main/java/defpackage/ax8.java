package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public final class ax8 extends n60 {
    public final byte[] b;

    public ax8(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[56];
        this.b = bArr;
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & 252);
        bArr[55] = (byte) (bArr[55] | 128);
    }

    public final void a(bx8 bx8Var, byte[] bArr) {
        byte[] bArr2 = new byte[56];
        System.arraycopy(bx8Var.b, 0, bArr2, 0, 56);
        int[] iArr = new int[14];
        for (int i = 0; i < 14; i++) {
            int i2 = i * 4;
            byte[] bArr3 = this.b;
            iArr[i] = ((bArr3[i2 + 1] & 255) << 8) | (bArr3[i2] & 255) | ((bArr3[i2 + 2] & 255) << 16) | (bArr3[i2 + 3] << 24);
        }
        iArr[0] = iArr[0] & (-4);
        iArr[13] = iArr[13] | SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        int[] iArr2 = new int[16];
        zh8.j(0, 0, bArr2, iArr2);
        zh8.j(7, 2, bArr2, iArr2);
        zh8.j(14, 4, bArr2, iArr2);
        zh8.j(21, 6, bArr2, iArr2);
        zh8.j(28, 8, bArr2, iArr2);
        zh8.j(35, 10, bArr2, iArr2);
        zh8.j(42, 12, bArr2, iArr2);
        zh8.j(49, 14, bArr2, iArr2);
        int[] iArr3 = new int[16];
        zh8.g(0, 0, iArr2, iArr3);
        int[] iArr4 = new int[16];
        iArr4[0] = 1;
        int[] iArr5 = new int[16];
        iArr5[0] = 1;
        int[] iArr6 = new int[16];
        int[] iArr7 = new int[16];
        int[] iArr8 = new int[16];
        int i3 = 447;
        int i4 = 1;
        while (true) {
            zh8.b(iArr5, iArr6, iArr7);
            zh8.M(iArr5, iArr6, iArr5);
            zh8.b(iArr3, iArr4, iArr6);
            zh8.M(iArr3, iArr4, iArr3);
            zh8.z(iArr7, iArr3, iArr7);
            zh8.z(iArr5, iArr6, iArr5);
            zh8.L(iArr6, iArr6);
            zh8.L(iArr3, iArr3);
            zh8.M(iArr6, iArr3, iArr8);
            zh8.y(39082, iArr8, iArr4);
            zh8.b(iArr4, iArr3, iArr4);
            zh8.z(iArr4, iArr8, iArr4);
            zh8.z(iArr3, iArr6, iArr3);
            zh8.M(iArr7, iArr5, iArr6);
            zh8.b(iArr7, iArr5, iArr5);
            zh8.L(iArr5, iArr5);
            zh8.L(iArr6, iArr6);
            zh8.z(iArr6, iArr2, iArr6);
            i3--;
            int i5 = (iArr[i3 >>> 5] >>> (i3 & 31)) & 1;
            int i6 = i4 ^ i5;
            zh8.h(i6, iArr3, iArr5);
            zh8.h(i6, iArr4, iArr6);
            if (i3 < 2) {
                break;
            } else {
                i4 = i5;
            }
        }
        for (int i7 = 0; i7 < 2; i7++) {
            int[] iArr9 = new int[16];
            int[] iArr10 = new int[16];
            zh8.b(iArr3, iArr4, iArr9);
            zh8.M(iArr3, iArr4, iArr10);
            zh8.L(iArr9, iArr9);
            zh8.L(iArr10, iArr10);
            zh8.z(iArr9, iArr10, iArr3);
            zh8.M(iArr9, iArr10, iArr9);
            zh8.y(39082, iArr9, iArr4);
            zh8.b(iArr4, iArr10, iArr4);
            zh8.z(iArr4, iArr9, iArr4);
        }
        zh8.u(iArr4, iArr4);
        zh8.z(iArr3, iArr4, iArr3);
        zh8.E(iArr3, 1);
        zh8.E(iArr3, -1);
        zh8.l(bArr, iArr3);
        int i8 = 0;
        for (int i9 = 0; i9 < 56; i9++) {
            i8 |= bArr[i9];
        }
        if (i8 != 0) {
            return;
        }
        l0.e("X448 agreement failed");
    }
}
