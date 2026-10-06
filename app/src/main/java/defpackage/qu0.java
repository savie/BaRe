package defpackage;

import java.security.AccessController;
import java.security.Provider;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class qu0 extends Provider {
    public static final String b;
    public static final HashMap c;
    public static final Class d;
    public static final String[] e;
    public static final String[] f;
    public static final a42[] k;
    public static final String[] n;
    public static final String[] p;
    public static final String[] q;
    public static final String[] r;
    public static final String[] t;
    public final ConcurrentHashMap a;

    static {
        Class<?> clsLoadClass;
        Logger.getLogger(qu0.class.getName());
        b = "BouncyCastle Security Provider v1.82";
        new ThreadLocal();
        new ThreadLocal();
        new HashSet();
        new HashMap();
        c = new HashMap();
        try {
            ClassLoader classLoader = qu0.class.getClassLoader();
            clsLoadClass = classLoader != null ? classLoader.loadClass("java.security.cert.PKIXRevocationChecker") : (Class) AccessController.doPrivileged(new r81("java.security.cert.PKIXRevocationChecker"));
        } catch (ClassNotFoundException unused) {
            clsLoadClass = null;
        }
        d = clsLoadClass;
        e = new String[]{"PBEPBKDF1", "PBEPBKDF2", "PBEPKCS12", "TLSKDF", "SCRYPT"};
        f = new String[]{"SipHash", "SipHash128", "Poly1305"};
        int i = 2;
        k = new a42[]{new rf9("AES", 2), new rf9("ARC4", 2), new rf9("ARIA", 2), new rf9("Blowfish", 2), new rf9("Camellia", 2), new rf9("CAST5", 2), new rf9("CAST6", 2), new rf9("ChaCha", 2), new rf9("DES", 2), new rf9("DESede", 2), new rf9("GOST28147", 2), new rf9("Grainv1", 2), new rf9("Grain128", 2), new rf9("HC128", 2), new rf9("HC256", i), new rf9("IDEA", i), new rf9("Noekeon", i), new rf9("RC2", i), new rf9("RC5", i), new rf9("RC6", i), new rf9("Rijndael", i), new rf9("Salsa20", i), new rf9("SEED", i), new rf9("Serpent", i), new rf9("Shacal2", i), new rf9("Skipjack", i), new rf9("SM4", i), new rf9("TEA", i), new rf9("Twofish", i), new rf9("Threefish", i), new rf9("VMPC", i), new rf9("VMPCKSA3", i), new rf9("XTEA", i), new rf9("XSalsa20", i), new rf9("OpenSSLPBKDF", i), new rf9("DSTU7624", i), new rf9("GOST3412_2015", i), new rf9("Zuc", i)};
        n = new String[]{"X509", "IES", "COMPOSITE", "EXTERNAL", "CompositeSignatures", "NoSig"};
        p = new String[]{"DSA", "DH", "EC", "RSA", "GOST", "ECGOST", "ElGamal", "DSTU4145", "GM", "EdEC", "LMS", "SPHINCSPlus", "Dilithium", "Falcon", "NTRU", "CONTEXT", "SLHDSA", "MLDSA", "MLKEM"};
        q = new String[]{"GOST3411", "Keccak", "MD2", "MD4", "MD5", "SHA1", "RIPEMD128", "RIPEMD160", "RIPEMD256", "RIPEMD320", "SHA224", "SHA256", "SHA384", "SHA512", "SHA3", "Skein", "SM3", "Tiger", "Whirlpool", "Blake2b", "Blake2s", "DSTU7564", "Haraka", "Blake3"};
        r = new String[]{"BC", "BCFKS", "PKCS12"};
        t = new String[]{"DRBG"};
    }

    public qu0() {
        super("BC", 1.82d, b);
        this.a = new ConcurrentHashMap();
        AccessController.doPrivileged(new ou0(this));
    }

    public static void d(f1 f1Var, m60 m60Var) {
        HashMap map = c;
        synchronized (map) {
            map.put(f1Var, m60Var);
        }
    }

    public static void e(String str, String[] strArr) {
        for (int i = 0; i != strArr.length; i++) {
            f(str, strArr[i]);
        }
    }

    public static void f(String str, String str2) {
        Class<?> clsLoadClass;
        String strK = dj7.k(str, str2, "$Mappings");
        try {
            ClassLoader classLoader = qu0.class.getClassLoader();
            clsLoadClass = classLoader != null ? classLoader.loadClass(strK) : (Class) AccessController.doPrivileged(new r81(strK));
        } catch (ClassNotFoundException unused) {
            clsLoadClass = null;
        }
        if (clsLoadClass == null) {
            return;
        }
        try {
            if (clsLoadClass.newInstance() != null) {
                throw new ClassCastException();
            }
            throw null;
        } catch (Exception e2) {
            throw new InternalError("cannot create instance of " + str + str2 + "$Mappings : " + e2);
        }
    }

    @Override // java.security.Provider
    public final Provider.Service getService(String str, String str2) {
        Provider.Service service;
        String strK = dj7.k(str, ".", lq7.d(str2));
        Provider.Service service2 = (Provider.Service) this.a.get(strK);
        if (service2 != null) {
            return service2;
        }
        synchronized (this) {
            try {
                service = (Provider.Service) (!this.a.containsKey(strK) ? AccessController.doPrivileged(new pu0(this, str, str2, strK)) : this.a.get(strK));
            } catch (Throwable th) {
                throw th;
            }
        }
        return service;
    }
}
