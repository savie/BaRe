package defpackage;

import java.nio.ByteBuffer;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nb6 extends qb6 {
    public final zt2 c;
    public final byte[] d;

    public nb6(zt2 zt2Var, byte[] bArr) {
        super(zt2Var.a);
        if (zt2Var != zt2.Ed25519 && zt2Var != zt2.X25519) {
            c6.f("InvalidCurve");
            throw null;
        }
        this.c = zt2Var;
        this.d = Arrays.copyOf(bArr, bArr.length);
    }

    @Override // defpackage.qb6
    public final PublicKey h() throws NoSuchAlgorithmException {
        zt2 zt2Var = this.c;
        KeyFactory keyFactory = KeyFactory.getInstance(zt2Var.name());
        byte[] bArr = zt2Var.b;
        q48 q48Var = new q48(new q48(Arrays.copyOf(bArr, bArr.length), 6).a(), 48);
        byte[] bArr2 = this.d;
        return keyFactory.generatePublic(new X509EncodedKeySpec(new q48(cy0.r(Arrays.asList(q48Var, new q48(ByteBuffer.allocate(bArr2.length + 1).put((byte) 0).put(bArr2).array(), 3))), 48).a()));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PublicKeyValues.Cv25519{curve=");
        sb.append(this.c.name());
        sb.append(", publicKey=");
        byte[] bArr = this.d;
        sb.append(x13.f(bArr, 0, bArr.length));
        sb.append(", bitLength=");
        return eq3.m(sb, this.a, '}');
    }
}
