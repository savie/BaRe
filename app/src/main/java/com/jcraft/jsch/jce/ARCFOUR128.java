package com.jcraft.jsch.jce;

import com.jcraft.jsch.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ARCFOUR128 implements Cipher {
    public javax.crypto.Cipher a;

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
        if (bArr.length > 16) {
            byte[] bArr3 = new byte[16];
            System.arraycopy(bArr, 0, bArr3, 0, 16);
            bArr = bArr3;
        }
        try {
            this.a = javax.crypto.Cipher.getInstance("RC4");
            this.a.init(i == 0 ? 1 : 2, new SecretKeySpec(bArr, "RC4"));
            byte[] bArr4 = new byte[1];
            for (int i2 = 0; i2 < 1536; i2++) {
                this.a.update(bArr4, 0, 1, bArr4, 0);
            }
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
        this.a.update(bArr, i, i2, bArr2, i3);
    }
}
