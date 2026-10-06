package com.jcraft.jsch.bc;

import com.jcraft.jsch.Cipher;
import defpackage.mr6;
import defpackage.oo4;
import defpackage.ub8;
import defpackage.vw5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class TwofishCTR implements Cipher {
    public mr6 a;

    @Override // com.jcraft.jsch.Cipher
    public int getIVSize() {
        return 16;
    }

    @Override // com.jcraft.jsch.Cipher
    public void init(int i, byte[] bArr, byte[] bArr2) throws Exception {
        if (bArr2.length > 16) {
            byte[] bArr3 = new byte[16];
            System.arraycopy(bArr2, 0, bArr3, 0, 16);
            bArr2 = bArr3;
        }
        int blockSize = getBlockSize();
        if (bArr.length > blockSize) {
            byte[] bArr4 = new byte[blockSize];
            System.arraycopy(bArr, 0, bArr4, 0, blockSize);
            bArr = bArr4;
        }
        try {
            vw5 vw5Var = new vw5(new oo4(bArr, bArr.length), bArr2, bArr2.length);
            mr6 mr6Var = new mr6(new ub8());
            this.a = mr6Var;
            mr6Var.a(i == 0, vw5Var);
        } catch (Exception e) {
            this.a = null;
            throw e;
        }
    }

    @Override // com.jcraft.jsch.Cipher
    public boolean isCBC() {
        return false;
    }

    @Override // com.jcraft.jsch.Cipher
    public void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        this.a.c(bArr, i, i2, bArr2, i3);
    }
}
