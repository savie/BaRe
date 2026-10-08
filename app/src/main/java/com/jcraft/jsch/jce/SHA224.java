package com.jcraft.jsch.jce;

import com.jcraft.jsch.HASH;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SHA224 implements HASH {
    public MessageDigest a;

    @Override // com.jcraft.jsch.HASH
    public final byte[] digest() throws Exception {
        return this.a.digest();
    }

    @Override // com.jcraft.jsch.HASH
    public final int getBlockSize() {
        return 28;
    }

    @Override // com.jcraft.jsch.HASH
    public final void init() throws Exception {
        this.a = MessageDigest.getInstance("SHA-224");
    }

    @Override // com.jcraft.jsch.HASH
    public final String name() {
        return "SHA224";
    }

    @Override // com.jcraft.jsch.HASH
    public final void update(byte[] bArr, int i, int i2) throws Exception {
        this.a.update(bArr, i, i2);
    }
}
