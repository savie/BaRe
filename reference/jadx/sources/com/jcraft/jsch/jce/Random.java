package com.jcraft.jsch.jce;

import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Random implements com.jcraft.jsch.Random {
    public byte[] a = new byte[16];
    public final SecureRandom b;

    public Random() {
        this.b = null;
        this.b = new SecureRandom();
    }

    @Override // com.jcraft.jsch.Random
    public final void fill(byte[] bArr, int i, int i2) {
        if (i2 > this.a.length) {
            this.a = new byte[i2];
        }
        this.b.nextBytes(this.a);
        System.arraycopy(this.a, 0, bArr, i, i2);
    }
}
