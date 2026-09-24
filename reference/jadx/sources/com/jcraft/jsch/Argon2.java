package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface Argon2 extends KDF {
    public static final int ARGON2D = 0;
    public static final int ARGON2I = 1;
    public static final int ARGON2ID = 2;
    public static final int V10 = 16;
    public static final int V13 = 19;

    void init(byte[] bArr, int i, int i2, byte[] bArr2, byte[] bArr3, int i3, int i4, int i5) throws Exception;
}
