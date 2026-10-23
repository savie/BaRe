package defpackage;

import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t16 extends Provider {
    public static final Map c = Collections.singletonMap("SupportedKeyClasses", h16.class.getName());
    public static final Map d = Collections.singletonMap("SupportedKeyClasses", i16.class.getName());
    public static final l15 e = o15.b(t16.class);
    public final vz0 a;
    public final HashMap b;

    public t16(vz0 vz0Var) {
        super("YKPiv", 1.0d, "JCA Provider for YubiKey PIV");
        this.b = new HashMap();
        this.a = vz0Var;
        l15 l15Var = e;
        Map map = c;
        ms8.A(4, l15Var, "EC attributes: {}", map);
        ms8.A(4, l15Var, "RSA attributes: {}", d);
        putService(new l16(this, o06.class.getName(), map, vz0Var));
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            long jCurrentTimeMillis = System.currentTimeMillis();
            vo4[] vo4VarArr = {vo4.RSA1024, vo4.RSA2048};
            for (int i = 0; i < 2; i++) {
                vo4 vo4Var = vo4VarArr[i];
                keyPairGenerator.initialize(vo4Var.b.b);
                this.b.put(vo4Var, keyPairGenerator.generateKeyPair());
            }
            ms8.A(4, l15Var, "Time taken to generate dummy RSA keys: {}ms", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
            putService(new r16(this));
        } catch (NoSuchAlgorithmException e2) {
            ms8.A(1, l15Var, "Unable to support RSA, no underlying Provider with RSA capability", e2);
        }
        Set<String> algorithms = Security.getAlgorithms("MessageDigest");
        Iterator<String> it = Security.getAlgorithms("Signature").iterator();
        while (it.hasNext()) {
            String upperCase = it.next().toUpperCase();
            if (upperCase.endsWith("WITHECDSA")) {
                String strG = xs1.g(9, 0, upperCase);
                strG = algorithms.contains(strG) ? strG : strG.replace("SHA", "SHA-");
                if (algorithms.contains(strG)) {
                    putService(new q16(this, upperCase, strG, null));
                }
            } else if (!this.b.isEmpty() && upperCase.endsWith("WITHRSA")) {
                putService(new s16(this, upperCase));
            } else if (!this.b.isEmpty() && upperCase.endsWith("PSS")) {
                putService(new s16(this, upperCase));
            } else if (upperCase.equals("ECDSA")) {
                putService(new q16(this, "ECDSA", "SHA-1", Collections.singletonList("SHA1withECDSA")));
            }
        }
        putService(new m16(this, "KeyPairGenerator", "YKPivRSA", s06.class.getName(), null, null));
        putService(new n16(this, "KeyPairGenerator", "YKPivEC", r06.class.getName(), null, null));
        putService(new o16(this, d16.class.getName(), vz0Var));
        putService(new p16(this, q06.class.getName(), map, vz0Var));
    }

    @Override // java.util.Hashtable, java.util.Map
    public final synchronized boolean equals(Object obj) {
        return (obj instanceof t16) && super.equals(obj);
    }
}
