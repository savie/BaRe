package defpackage;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public final class qe6 extends SecureRandom {
    public final byte[] a;
    public final byte[] b;

    public qe6(byte[] bArr, q15 q15Var) {
        if (bArr.length >= 48) {
            byte[] bArr2 = new byte[48];
            System.arraycopy(bArr, 0, bArr2, 0, 48);
            byte[] bArr3 = new byte[32];
            this.a = bArr3;
            byte[] bArr4 = new byte[16];
            this.b = bArr4;
            a(bArr2, bArr3, bArr4);
            return;
        }
        int length = 48 - bArr.length;
        int iC = q15Var.c();
        q15Var.update(bArr, 0, bArr.length);
        byte[] bArr5 = new byte[iC];
        q15Var.doFinal(bArr5, 0);
        if (length != iC) {
            if (length < iC) {
                byte[] bArr6 = new byte[length];
                System.arraycopy(bArr5, 0, bArr6, 0, Math.min(iC, length));
                bArr5 = bArr6;
            } else {
                byte[] bArrP = new byte[iC];
                System.arraycopy(bArr5, 0, bArrP, 0, Math.min(iC, iC));
                while (true) {
                    length -= iC;
                    if (length < iC) {
                        break;
                    }
                    q15Var.update(bArr5, 0, iC);
                    bArr5 = new byte[iC];
                    q15Var.doFinal(bArr5, 0);
                    bArrP = ms8.p(bArrP, bArr5);
                }
                if (length > 0) {
                    q15Var.update(bArr5, 0, iC);
                    byte[] bArr7 = new byte[iC];
                    q15Var.doFinal(bArr7, 0);
                    int length2 = bArrP.length;
                    int i = length2 + length;
                    byte[] bArr8 = new byte[i];
                    System.arraycopy(bArrP, 0, bArr8, 0, Math.min(bArrP.length, i));
                    System.arraycopy(bArr7, 0, bArr8, length2, length);
                    bArr5 = bArr8;
                } else {
                    bArr5 = bArrP;
                }
            }
        }
        byte[] bArr9 = new byte[48];
        System.arraycopy(ms8.p(bArr, bArr5), 0, bArr9, 0, 48);
        byte[] bArr10 = new byte[32];
        this.a = bArr10;
        byte[] bArr11 = new byte[16];
        this.b = bArr11;
        a(bArr9, bArr10, bArr11);
    }

    public static void a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[48];
        for (int i = 0; i < 3; i++) {
            for (int i2 = 15; i2 >= 0; i2--) {
                byte b = bArr3[i2];
                if ((b & 255) != 255) {
                    bArr3[i2] = (byte) (b + 1);
                    break;
                }
                bArr3[i2] = 0;
            }
            b(bArr2, bArr3, i * 16, bArr4);
        }
        if (bArr != null) {
            for (int i3 = 0; i3 < 48; i3++) {
                bArr4[i3] = (byte) (bArr4[i3] ^ bArr[i3]);
            }
        }
        System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
        System.arraycopy(bArr4, 32, bArr3, 0, bArr3.length);
    }

    public static void b(byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        try {
            j jVar = new j();
            jVar.a(true, new oo4(bArr, bArr.length));
            for (int i2 = 0; i2 != bArr2.length; i2 += 16) {
                jVar.j(bArr2, bArr3, i2, i + i2);
            }
        } catch (Throwable th) {
            throw new IllegalStateException("drbg failure: " + th.getMessage(), th);
        }
    }

    @Override // java.security.SecureRandom, java.util.Random
    public final void nextBytes(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int length = bArr.length;
        int i = 0;
        while (true) {
            byte[] bArr3 = this.a;
            byte[] bArr4 = this.b;
            if (length <= 0) {
                a(null, bArr3, bArr4);
                return;
            }
            for (int i2 = 15; i2 >= 0; i2--) {
                byte b = bArr4[i2];
                if ((b & 255) != 255) {
                    bArr4[i2] = (byte) (b + 1);
                    break;
                }
                bArr4[i2] = 0;
            }
            b(bArr3, bArr4, 0, bArr2);
            if (length > 15) {
                System.arraycopy(bArr2, 0, bArr, i, 16);
                i += 16;
                length -= 16;
            } else {
                System.arraycopy(bArr2, 0, bArr, i, length);
                length = 0;
            }
        }
    }
}
