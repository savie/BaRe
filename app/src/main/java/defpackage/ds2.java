package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: loaded from: classes.dex */
public final class ds2 extends n60 {
    public final ke b;

    /* JADX WARN: Code duplicated, block: B:24:0x006f  */
    public ds2(byte[] bArr) {
        boolean z;
        ke keVar;
        super(false);
        byte[] bArr2 = new byte[32];
        System.arraycopy(bArr, 0, bArr2, 0, 32);
        int iL = g67.l(bArr2, 28) & Integer.MAX_VALUE;
        int[] iArr = jb9.c;
        int i = iArr[7] ^ iL;
        int[] iArr2 = jb9.d;
        int i2 = iArr2[7] ^ iL;
        int[] iArr3 = jb9.e;
        int i3 = iArr3[7] ^ iL;
        int i4 = 6;
        for (int i5 = 6; i5 > 0; i5--) {
            int iL2 = g67.l(bArr2, i5 * 4);
            iL |= iL2;
            i |= iArr[i5] ^ iL2;
            i2 |= iArr2[i5] ^ iL2;
            i3 |= iL2 ^ iArr3[i5];
        }
        int iL3 = g67.l(bArr2, 0);
        if ((iL != 0 || iL3 + SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED > -2147483647) && (i != 0 || SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED + iL3 < iArr[0] - (-2147483647))) {
            z = (((iArr2[0] ^ iL3) | i2) != 0) & (((iArr3[0] ^ iL3) | i3) != 0);
        } else {
            z = false;
        }
        if (z) {
            ix0 ix0Var = new ix0(2);
            if (jb9.v(bArr2, false, ix0Var)) {
                int[] iArr4 = new int[20];
                nc8.n(0, 0, (int[]) ix0Var.b, iArr4);
                nc8.n(0, 10, (int[]) ix0Var.c, iArr4);
                keVar = new ke(iArr4, i4);
            } else {
                keVar = null;
            }
        } else {
            keVar = null;
        }
        if (keVar == null) {
            c6.f("invalid public key");
            throw null;
        }
        this.b = keVar;
    }

    public ds2(ke keVar) {
        super(false);
        this.b = keVar;
    }
}
