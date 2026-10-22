package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ny0 implements d {
    public j a;
    public int b;
    public boolean c;
    public byte[] d;
    public byte[] e;
    public int f;
    public z61 g;
    public byte[] h;
    public by0 i;
    public by0 j;

    public static int g(int i, boolean z) {
        if (!z || (i >= 32 && i <= 128 && (i & 15) == 0)) {
            return i >>> 3;
        }
        c6.f("tag length in octets must be one of {4,6,8,10,12,14,16}");
        return 0;
    }

    @Override // defpackage.d
    public final void a(boolean z, z61 z61Var) {
        z61 z61Var2;
        this.c = z;
        if (z61Var instanceof e) {
            e eVar = (e) z61Var;
            this.d = ms8.k(eVar.b);
            this.e = ms8.k(eVar.a);
            this.f = g(eVar.d, z);
            z61Var2 = eVar.c;
        } else {
            if (!(z61Var instanceof vw5)) {
                c6.f("invalid parameters passed to CCM: ".concat(z61Var.getClass().getName()));
                return;
            }
            vw5 vw5Var = (vw5) z61Var;
            this.d = vw5Var.a;
            this.e = null;
            this.f = g(64, z);
            z61Var2 = vw5Var.b;
        }
        if (z61Var2 != null) {
            this.g = z61Var2;
        }
        byte[] bArr = this.d;
        if (bArr == null || bArr.length < 7 || bArr.length > 13) {
            c6.f("nonce must have length from 7 to 13 octets");
            return;
        }
        this.a.getClass();
        this.i.reset();
        this.j.reset();
    }

    @Override // defpackage.d
    public final int b(int i, byte[] bArr, byte[] bArr2) throws IOException {
        if (bArr.length < i) {
            throw new ua2("Input buffer too short");
        }
        this.j.write(bArr, 0, i);
        return 0;
    }

    @Override // defpackage.d
    public final int c(int i) {
        return 0;
    }

    @Override // defpackage.d
    public final void d(byte[] bArr, int i) throws IOException {
        this.i.write(bArr, 0, i);
    }

    @Override // defpackage.d
    public final int doFinal(byte[] bArr, int i) throws yf4 {
        int i2;
        j jVar = this.a;
        by0 by0Var = this.j;
        byte[] bArrB = by0Var.b();
        int size = by0Var.size();
        byte[] bArr2 = this.h;
        int i3 = this.b;
        if (this.g == null) {
            l0.e("CCM cipher unitialized.");
            return 0;
        }
        byte[] bArr3 = this.d;
        int length = bArr3.length;
        int i4 = 15 - length;
        if (i4 < 4) {
            if (size - (!this.c ? 16 : 0) >= (1 << (i4 * 8))) {
                l0.e("CCM packet too large for choice of q");
                return 0;
            }
        }
        byte[] bArr4 = new byte[i3];
        bArr4[0] = (byte) ((14 - length) & 7);
        System.arraycopy(bArr3, 0, bArr4, 1, bArr3.length);
        mr6 mr6Var = new mr6(jVar);
        mr6Var.a(this.c, new vw5(this.g, bArr4, i3));
        boolean z = this.c;
        int i5 = this.f;
        if (z) {
            i2 = i5 + size;
            if (bArr.length < i2 + i) {
                throw new dv5("Output buffer too short.");
            }
            f(bArrB, bArr2, 0, size);
            byte[] bArr5 = new byte[i3];
            mr6Var.j(bArr2, bArr5, 0, 0);
            int i6 = i;
            int i7 = 0;
            while (i7 < size - i3) {
                mr6Var.j(bArrB, bArr, i7, i6);
                i6 += i3;
                i7 += i3;
            }
            byte[] bArr6 = new byte[i3];
            int i8 = size - i7;
            System.arraycopy(bArrB, i7, bArr6, 0, i8);
            mr6Var.j(bArr6, bArr6, 0, 0);
            System.arraycopy(bArr6, 0, bArr, i6, i8);
            System.arraycopy(bArr5, 0, bArr, i + size, this.f);
        } else {
            if (size < i5) {
                throw new yf4("data too short");
            }
            int i9 = size - i5;
            if (bArr.length < i9 + i) {
                throw new dv5("Output buffer too short.");
            }
            System.arraycopy(bArrB, i9, bArr2, 0, i5);
            mr6Var.j(bArr2, bArr2, 0, 0);
            for (int i10 = this.f; i10 != bArr2.length; i10++) {
                bArr2[i10] = 0;
            }
            int i11 = i;
            int i12 = 0;
            while (i12 < i9 - i3) {
                mr6Var.j(bArrB, bArr, i12, i11);
                i11 += i3;
                i12 += i3;
            }
            byte[] bArr7 = new byte[i3];
            int i13 = i9 - i12;
            System.arraycopy(bArrB, i12, bArr7, 0, i13);
            mr6Var.j(bArr7, bArr7, 0, 0);
            System.arraycopy(bArr7, 0, bArr, i11, i13);
            byte[] bArr8 = new byte[i3];
            f(bArr, bArr8, i, i9);
            if (!ms8.r(bArr2, bArr8)) {
                throw new yf4("mac check in CCM failed");
            }
            i2 = i9;
        }
        jVar.getClass();
        this.i.reset();
        by0Var.reset();
        return i2;
    }

    @Override // defpackage.d
    public final int e(int i) {
        int size = this.j.size() + i;
        boolean z = this.c;
        int i2 = this.f;
        if (z) {
            return size + i2;
        }
        if (size < i2) {
            return 0;
        }
        return size - i2;
    }

    public final void f(byte[] bArr, byte[] bArr2, int i, int i2) {
        by0 by0Var = this.i;
        j jVar = this.a;
        int i3 = this.f * 8;
        my0 my0Var = new my0();
        if (i3 % 8 != 0) {
            c6.f("MAC size must be multiple of 8");
            return;
        }
        my0Var.d = ly0.c(jVar);
        int i4 = i3 / 8;
        my0Var.e = i4;
        my0Var.a = new byte[16];
        my0Var.b = new byte[16];
        my0Var.c = 0;
        my0Var.c(this.g);
        byte[] bArr3 = new byte[16];
        int size = by0Var.size();
        byte[] bArr4 = this.e;
        if (size + (bArr4 == null ? 0 : bArr4.length) > 0) {
            bArr3[0] = (byte) (bArr3[0] | 64);
        }
        int i5 = 2;
        byte b = (byte) (((((i4 - 2) / 2) & 7) << 3) | bArr3[0]);
        bArr3[0] = b;
        byte[] bArr5 = this.d;
        bArr3[0] = (byte) (b | ((14 - bArr5.length) & 7));
        System.arraycopy(bArr5, 0, bArr3, 1, bArr5.length);
        int i6 = i2;
        int i7 = 1;
        while (i6 > 0) {
            bArr3[16 - i7] = (byte) (i6 & 255);
            i6 >>>= 8;
            i7++;
        }
        my0Var.update(bArr3, 0, 16);
        int size2 = by0Var.size();
        byte[] bArr6 = this.e;
        if (size2 + (bArr6 == null ? 0 : bArr6.length) > 0) {
            int size3 = by0Var.size();
            byte[] bArr7 = this.e;
            int length = size3 + (bArr7 == null ? 0 : bArr7.length);
            if (length < 65280) {
                my0Var.a((byte) (length >> 8));
                my0Var.a((byte) length);
            } else {
                my0Var.a((byte) -1);
                my0Var.a((byte) -2);
                my0Var.a((byte) (length >> 24));
                my0Var.a((byte) (length >> 16));
                my0Var.a((byte) (length >> 8));
                my0Var.a((byte) length);
                i5 = 6;
            }
            byte[] bArr8 = this.e;
            if (bArr8 != null) {
                my0Var.update(bArr8, 0, bArr8.length);
            }
            if (by0Var.size() > 0) {
                my0Var.update(by0Var.b(), 0, by0Var.size());
            }
            int i8 = (i5 + length) % 16;
            if (i8 != 0) {
                while (i8 != 16) {
                    my0Var.a((byte) 0);
                    i8++;
                }
            }
        }
        my0Var.update(bArr, i, i2);
        my0Var.doFinal(bArr2, 0);
    }
}
