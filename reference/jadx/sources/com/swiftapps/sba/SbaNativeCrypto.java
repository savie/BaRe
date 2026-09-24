package com.swiftapps.sba;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SbaNativeCrypto {
    public static final SbaNativeCrypto a = new SbaNativeCrypto();

    static {
        System.loadLibrary("sba_archive");
    }

    public final native byte[] deriveArgon2id(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4);
}
