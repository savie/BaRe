package com.jcraft.jsch.jce;

import com.jcraft.jsch.Cipher;
import defpackage.l0;
import java.nio.ByteBuffer;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class AESGCM implements Cipher {
    public javax.crypto.Cipher a;
    public SecretKeySpec b;
    public int c;
    public ByteBuffer d;
    public long e;

    @Override // com.jcraft.jsch.Cipher
    public void doFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        this.a.doFinal(bArr, i, i2, bArr2, i3);
        long j = this.d.getLong(4) + 1;
        if (j == this.e) {
            l0.e("GCM IV would be reused");
        } else {
            this.d.putLong(4, j);
            this.a.init(this.c, this.b, new GCMParameterSpec(128, this.d.array()));
        }
    }

    @Override // com.jcraft.jsch.Cipher
    public int getIVSize() {
        return 16;
    }

    @Override // com.jcraft.jsch.Cipher
    public int getTagSize() {
        return 16;
    }

    @Override // com.jcraft.jsch.Cipher
    public void init(int i, byte[] bArr, byte[] bArr2) throws Exception {
        if (bArr2.length > 12) {
            byte[] bArr3 = new byte[12];
            System.arraycopy(bArr2, 0, bArr3, 0, 12);
            bArr2 = bArr3;
        }
        int blockSize = getBlockSize();
        if (bArr.length > blockSize) {
            byte[] bArr4 = new byte[blockSize];
            System.arraycopy(bArr, 0, bArr4, 0, blockSize);
            bArr = bArr4;
        }
        this.c = i == 0 ? 1 : 2;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr2);
        this.d = byteBufferWrap;
        this.e = byteBufferWrap.getLong(4);
        try {
            this.b = new SecretKeySpec(bArr, "AES");
            javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/GCM/NoPadding");
            this.a = cipher;
            cipher.init(this.c, this.b, new GCMParameterSpec(128, bArr2));
        } catch (Exception e) {
            this.a = null;
            this.b = null;
            this.d = null;
            throw e;
        }
    }

    @Override // com.jcraft.jsch.Cipher
    public boolean isAEAD() {
        return true;
    }

    @Override // com.jcraft.jsch.Cipher
    public boolean isCBC() {
        return false;
    }

    @Override // com.jcraft.jsch.Cipher
    public void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        this.a.update(bArr, i, i2, bArr2, i3);
    }

    @Override // com.jcraft.jsch.Cipher
    public void updateAAD(byte[] bArr, int i, int i2) throws Exception {
        this.a.updateAAD(bArr, i, i2);
    }
}
