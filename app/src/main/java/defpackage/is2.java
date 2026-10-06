package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: loaded from: classes.dex */
public final class is2 extends n60 {
    public final nh b;

    public is2(byte[] bArr) {
        nh nhVar;
        super(false);
        byte[] bArr2 = new byte[57];
        System.arraycopy(bArr, 0, bArr2, 0, 57);
        int[] iArr = yc9.c;
        if ((bArr2[56] & 127) == 0) {
            int iL = g67.l(bArr2, 52);
            int i = iArr[13] ^ iL;
            int i2 = 12;
            while (true) {
                if (i2 <= 0) {
                    int iL2 = g67.l(bArr2, 0);
                    if ((iL != 0 || iL2 + SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED > -2147483647) && (i != 0 || iL2 + SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED < iArr[0] - (-2147483647))) {
                        l39 l39Var = new l39(3);
                        if (!yc9.i(bArr2, false, l39Var)) {
                            break;
                        }
                        int[] iArr2 = new int[32];
                        zh8.g(0, 0, (int[]) l39Var.b, iArr2);
                        zh8.g(0, 16, (int[]) l39Var.c, iArr2);
                        nhVar = new nh(iArr2, 4);
                        break;
                    }
                } else {
                    int iL3 = g67.l(bArr2, i2 * 4);
                    if (i != 0 || iL3 + SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED <= iArr[i2] + SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) {
                        iL |= iL3;
                        i |= iArr[i2] ^ iL3;
                        i2--;
                    }
                }
                nhVar = null;
                break;
            }
        }
        nhVar = null;
        break;
        if (nhVar != null) {
            this.b = nhVar;
        } else {
            c6.f("invalid public key");
            throw null;
        }
    }

    public is2(nh nhVar) {
        super(false);
        this.b = nhVar;
    }
}
