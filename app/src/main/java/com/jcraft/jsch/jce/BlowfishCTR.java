package com.jcraft.jsch.jce;

import com.jcraft.jsch.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class BlowfishCTR implements Cipher {
    public javax.crypto.Cipher a;

    @Override // com.jcraft.jsch.Cipher
    public final int getBlockSize() {
        return 32;
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
        if (bArr.length > 32) {
            byte[] bArr4 = new byte[32];
            System.arraycopy(bArr, 0, bArr4, 0, 32);
            bArr = bArr4;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "Blowfish");
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("Blowfish/CTR/NoPadding");
        this.a = cipher;
        cipher.init(i == 0 ? 1 : 2, secretKeySpec, new IvParameterSpec(bArr2));
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
