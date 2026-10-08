package com.jcraft.jsch.bc;

import com.jcraft.jsch.Cipher;
import defpackage.ky0;
import defpackage.mr6;
import defpackage.oo4;
import defpackage.vw5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CAST128CTR implements Cipher {
    public mr6 a;

    @Override // com.jcraft.jsch.Cipher
    public final int getBlockSize() {
        return 16;
    }

    @Override // com.jcraft.jsch.Cipher
    public final int getIVSize() {
        return 8;
    }

    @Override // com.jcraft.jsch.Cipher
    public final void init(int i, byte[] bArr, byte[] bArr2) throws Exception {
        if (bArr2.length > 8) {
            byte[] bArr3 = new byte[8];
            System.arraycopy(bArr2, 0, bArr3, 0, 8);
            bArr2 = bArr3;
        }
        if (bArr.length > 16) {
            byte[] bArr4 = new byte[16];
            System.arraycopy(bArr, 0, bArr4, 0, 16);
            bArr = bArr4;
        }
        try {
            vw5 vw5Var = new vw5(new oo4(bArr, bArr.length), bArr2, bArr2.length);
            mr6 mr6Var = new mr6(new ky0());
            this.a = mr6Var;
            mr6Var.a(i == 0, vw5Var);
        } catch (Exception e) {
            this.a = null;
            throw e;
        }
    }

    @Override // com.jcraft.jsch.Cipher
    public final boolean isCBC() {
        return false;
    }

    @Override // com.jcraft.jsch.Cipher
    public final void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        this.a.c(bArr, i, i2, bArr2, i3);
    }
}
