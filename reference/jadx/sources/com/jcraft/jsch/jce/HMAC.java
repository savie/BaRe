package com.jcraft.jsch.jce;

import com.jcraft.jsch.JSch;
import com.jcraft.jsch.MAC;
import javax.crypto.Mac;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class HMAC implements MAC {
    public String a;
    public int b;
    public String c;
    public boolean d;
    public Mac e;
    public final byte[] f = new byte[4];

    @Override // com.jcraft.jsch.MAC
    public void doFinal(byte[] bArr, int i) {
        try {
            this.e.doFinal(bArr, i);
        } catch (ShortBufferException e) {
            if (JSch.i.isEnabled(3)) {
                JSch.i.log(3, e.getMessage(), e);
            }
        }
    }

    @Override // com.jcraft.jsch.MAC
    public int getBlockSize() {
        return this.b;
    }

    @Override // com.jcraft.jsch.MAC
    public String getName() {
        return this.a;
    }

    @Override // com.jcraft.jsch.MAC
    public void init(byte[] bArr) throws Exception {
        int length = bArr.length;
        int i = this.b;
        if (length > i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            bArr = bArr2;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, this.c);
        Mac mac = Mac.getInstance(this.c);
        this.e = mac;
        mac.init(secretKeySpec);
    }

    @Override // com.jcraft.jsch.MAC
    public boolean isEtM() {
        return this.d;
    }

    @Override // com.jcraft.jsch.MAC
    public void update(int i) {
        byte[] bArr = this.f;
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) i;
        update(bArr, 0, 4);
    }

    @Override // com.jcraft.jsch.MAC
    public void update(byte[] bArr, int i, int i2) {
        this.e.update(bArr, i, i2);
    }
}
