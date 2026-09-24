package defpackage;

import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum vo4 {
    RSA1024((byte) 6, new uo4(1, 1024, 0)),
    RSA2048((byte) 7, new uo4(1, RSAKeyGenerator.MIN_KEY_SIZE_BITS, 0)),
    ECCP256((byte) 17, new so4(zt2.SECP256R1)),
    ECCP384((byte) 20, new so4(zt2.SECP384R1));

    public final byte a;
    public final to4 b;

    vo4(byte b, to4 to4Var) {
        this.a = b;
        this.b = to4Var;
    }
}
