package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ly0 extends gf2 {
    public byte[] a;
    public byte[] b;
    public byte[] c;
    public int d;
    public xs0 e;
    public boolean f;

    public static ly0 c(xs0 xs0Var) {
        ly0 ly0Var = new ly0();
        ly0Var.e = xs0Var;
        int blockSize = xs0Var.getBlockSize();
        ly0Var.d = blockSize;
        ly0Var.a = new byte[blockSize];
        ly0Var.b = new byte[blockSize];
        ly0Var.c = new byte[blockSize];
        return ly0Var;
    }

    @Override // defpackage.xs0
    public final void a(boolean z, z61 z61Var) {
        byte[] bArr = this.a;
        boolean z2 = this.f;
        this.f = z;
        if (z61Var instanceof vw5) {
            vw5 vw5Var = (vw5) z61Var;
            byte[] bArr2 = vw5Var.a;
            if (bArr2.length != this.d) {
                c6.f("initialisation vector must be the same length as block size");
                return;
            } else {
                System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
                z61Var = vw5Var.b;
            }
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        reset();
        if (z61Var != null) {
            this.e.a(z, z61Var);
        } else {
            if (z2 == z) {
                return;
            }
            c6.f("cannot change encrypting state without providing key.");
        }
    }

    @Override // defpackage.xs0
    public final String f() {
        return this.e.f().concat("/CBC");
    }

    @Override // defpackage.xs0
    public final int getBlockSize() {
        return this.e.getBlockSize();
    }

    @Override // defpackage.xs0
    public final int j(byte[] bArr, byte[] bArr2, int i, int i2) {
        xs0 xs0Var = this.e;
        boolean z = this.f;
        int i3 = this.d;
        if (!z) {
            if (i + i3 > bArr.length) {
                throw new ua2("input buffer too short");
            }
            System.arraycopy(bArr, i, this.c, 0, i3);
            int iJ = xs0Var.j(bArr, bArr2, i, i2);
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = i2 + i4;
                bArr2[i5] = (byte) (bArr2[i5] ^ this.b[i4]);
            }
            byte[] bArr3 = this.b;
            this.b = this.c;
            this.c = bArr3;
            return iJ;
        }
        if (i + i3 > bArr.length) {
            throw new ua2("input buffer too short");
        }
        int i6 = 0;
        while (true) {
            byte[] bArr4 = this.b;
            if (i6 >= i3) {
                int iJ2 = xs0Var.j(bArr4, bArr2, 0, i2);
                byte[] bArr5 = this.b;
                System.arraycopy(bArr2, i2, bArr5, 0, bArr5.length);
                return iJ2;
            }
            bArr4[i6] = (byte) (bArr4[i6] ^ bArr[i + i6]);
            i6++;
        }
    }

    @Override // defpackage.xs0
    public final void reset() {
        byte[] bArr = this.a;
        System.arraycopy(bArr, 0, this.b, 0, bArr.length);
        Arrays.fill(this.c, (byte) 0);
        this.e.reset();
    }
}
