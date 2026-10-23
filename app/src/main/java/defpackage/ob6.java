package defpackage;

import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ob6 extends qb6 {
    public final zt2 c;
    public final BigInteger d;
    public final BigInteger e;

    public ob6(zt2 zt2Var, BigInteger bigInteger, BigInteger bigInteger2) {
        super(zt2Var.a);
        if (zt2Var == zt2.Ed25519 || zt2Var == zt2.X25519) {
            c6.f("InvalidCurve");
            throw null;
        }
        this.c = zt2Var;
        this.d = bigInteger;
        this.e = bigInteger2;
    }

    public static ob6 i(zt2 zt2Var, byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        if (byteBufferWrap.get() != 4) {
            c6.f("Only uncompressed public keys are supported");
            return null;
        }
        byte[] bArr2 = new byte[(bArr.length - 1) / 2];
        byteBufferWrap.get(bArr2);
        BigInteger bigInteger = new BigInteger(1, bArr2);
        byteBufferWrap.get(bArr2);
        return new ob6(zt2Var, bigInteger, new BigInteger(1, bArr2));
    }

    @Override // defpackage.qb6
    public final PublicKey h() throws NoSuchAlgorithmException {
        KeyFactory keyFactory = KeyFactory.getInstance("EC");
        zt2 zt2Var = this.c;
        int iCeil = (int) Math.ceil(((double) zt2Var.a) / 8.0d);
        byte[] bArrArray = ByteBuffer.allocate((iCeil * 2) + 1).put((byte) 4).put(vm4.s(iCeil, this.d)).put(vm4.s(iCeil, this.e)).array();
        q48 q48Var = new q48(qb6.b, 6);
        byte[] bArr = zt2Var.b;
        return (ECPublicKey) keyFactory.generatePublic(new X509EncodedKeySpec(new q48(cy0.r(Arrays.asList(new q48(cy0.r(Arrays.asList(q48Var, new q48(Arrays.copyOf(bArr, bArr.length), 6))), 48), new q48(ByteBuffer.allocate(bArrArray.length + 1).put((byte) 0).put(bArrArray).array(), 3))), 48).a()));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PublicKeyValues.Ec{curve=");
        sb.append(this.c.name());
        sb.append(", x=");
        sb.append(this.d);
        sb.append(", y=");
        sb.append(this.e);
        sb.append(", bitLength=");
        return eq3.m(sb, this.a, '}');
    }
}
