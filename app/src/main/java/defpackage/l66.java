package defpackage;

import java.math.BigInteger;
import java.security.PrivateKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javax.security.auth.Destroyable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l66 implements Destroyable {
    public static final byte[] c = {42, -122, 72, -50, 61, 2, 1};
    public final int a;
    public boolean b = false;

    public l66(int i) {
        this.a = i;
    }

    public static l66 a(PrivateKey privateKey) {
        List listAsList;
        if (privateKey instanceof RSAPrivateKey) {
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) privateKey;
            if (rSAPrivateKey instanceof RSAPrivateCrtKey) {
                RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) rSAPrivateKey;
                listAsList = Arrays.asList(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent(), rSAPrivateCrtKey.getPrivateExponent(), rSAPrivateCrtKey.getPrimeP(), rSAPrivateCrtKey.getPrimeQ(), rSAPrivateCrtKey.getPrimeExponentP(), rSAPrivateCrtKey.getPrimeExponentQ(), rSAPrivateCrtKey.getCrtCoefficient());
            } else {
                if (!"PKCS#8".equals(rSAPrivateKey.getFormat())) {
                    c6.f("Unsupported private key encoding");
                    return null;
                }
                try {
                    ArrayList arrayListN = cy0.n((byte[]) cy0.o((byte[]) cy0.o(cy0.K(rSAPrivateKey.getEncoded(), 48)).get(4)).get(48));
                    ArrayList arrayList = new ArrayList();
                    Iterator it = arrayListN.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new BigInteger(((q48) it.next()).b()));
                    }
                    if (((BigInteger) arrayList.remove(0)).intValue() != 0) {
                        throw new IllegalArgumentException("Expected value 0");
                    }
                    listAsList = arrayList;
                } catch (vk0 e) {
                    c6.f(e.getMessage());
                    return null;
                }
            }
            if (((BigInteger) listAsList.get(1)).intValue() == 65537) {
                return new k66((BigInteger) listAsList.get(0), (BigInteger) listAsList.get(1), (BigInteger) listAsList.get(3), (BigInteger) listAsList.get(4), (BigInteger) listAsList.get(5), (BigInteger) listAsList.get(6), (BigInteger) listAsList.get(7));
            }
            c6.f("Unsupported RSA public exponent");
            return null;
        }
        try {
            LinkedHashMap linkedHashMapO = cy0.o(cy0.K(privateKey.getEncoded(), 48));
            ArrayList arrayListN2 = cy0.n((byte[]) linkedHashMapO.get(48));
            byte[] bArrB = ((q48) arrayListN2.get(0)).b();
            if (Arrays.equals(c, bArrB)) {
                return new j66(zt2.a(((q48) arrayListN2.get(1)).b()), ((q48) cy0.n(cy0.K((byte[]) linkedHashMapO.get(4), 48)).get(1)).b());
            }
            for (zt2 zt2Var : Arrays.asList(zt2.Ed25519, zt2.X25519)) {
                byte[] bArr = zt2Var.b;
                if (Arrays.equals(Arrays.copyOf(bArr, bArr.length), bArrB)) {
                    return new j66(zt2Var, cy0.K((byte[]) linkedHashMapO.get(4), 4));
                }
            }
            c6.f("Unsupported private key type");
            return null;
        } catch (vk0 unused) {
        }
    }

    @Override // javax.security.auth.Destroyable
    public final boolean isDestroyed() {
        return this.b;
    }
}
