package com.jcraft.jsch.jbcrypt;

import com.jcraft.jsch.Buffer;
import com.jcraft.jsch.KDF;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JBCrypt implements KDF {
    public BCrypt a;
    public byte[] b;
    public int c;

    @Override // com.jcraft.jsch.KDF
    public final byte[] getKey(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        this.a.pbkdf(bArr, this.b, this.c, bArr2);
        return bArr2;
    }

    @Override // com.jcraft.jsch.KDF
    public final void initWithOpenSSHv1KDFOptions(byte[] bArr) {
        Buffer buffer = new Buffer(bArr);
        this.b = buffer.getString();
        this.c = buffer.getInt();
        this.a = new BCrypt();
    }
}
