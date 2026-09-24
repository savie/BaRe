package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum zt2 {
    SECP256R1(0, 256),
    /* JADX INFO: Fake field, exist only in values array */
    SECP256K1(1, 256),
    SECP384R1(2, 384),
    /* JADX INFO: Fake field, exist only in values array */
    SECP521R1(3, 521),
    /* JADX INFO: Fake field, exist only in values array */
    BrainpoolP256R1(4, 256),
    /* JADX INFO: Fake field, exist only in values array */
    BrainpoolP384R1(5, 384),
    /* JADX INFO: Fake field, exist only in values array */
    BrainpoolP512R1(6, 512),
    X25519(7, 256),
    Ed25519(8, 256);

    public final int a;
    public final byte[] b;

    zt2(int i, int i2) {
        this.a = i2;
        this.b = bArr;
    }

    public static zt2 a(byte[] bArr) {
        for (zt2 zt2Var : values()) {
            if (Arrays.equals(bArr, zt2Var.b)) {
                return zt2Var;
            }
        }
        c6.f("Not a supported EllipticCurve");
        return null;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("EllipticCurveValues{name=");
        sb.append(name());
        sb.append(", bitLength=");
        sb.append(this.a);
        sb.append(", oid=");
        byte[] bArr = this.b;
        sb.append(x13.f(bArr, 0, bArr.length));
        sb.append('}');
        return sb.toString();
    }
}
