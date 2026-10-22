package defpackage;

import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.PrivateKey;
import java.security.UnrecoverableEntryException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Date;
import java.util.Enumeration;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d16 extends KeyStoreSpi {
    public final vz0 a;

    public d16(vz0 vz0Var) {
        this.a = vz0Var;
    }

    public final void a(final vh7 vh7Var, final PrivateKey privateKey, final X509Certificate x509Certificate) throws Throwable {
        final ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        this.a.invoke(new vz0() { // from class: w06
            @Override // defpackage.vz0
            public final void invoke(Object obj) {
                final cn6 cn6Var = (cn6) obj;
                final PrivateKey privateKey2 = privateKey;
                final vh7 vh7Var2 = vh7Var;
                final X509Certificate x509Certificate2 = x509Certificate;
                arrayBlockingQueue.add(cn6.c(new Callable() { // from class: b16
                    /* JADX WARN: Code duplicated, block: B:25:0x005e  */
                    /* JADX WARN: Code duplicated, block: B:27:0x0062  */
                    /* JADX WARN: Code duplicated, block: B:39:0x008e A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:41:0x0091  */
                    /* JADX WARN: Code duplicated, block: B:42:0x00a3  */
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        vo4 vo4Var;
                        wj8 wj8Var;
                        to4 to4Var;
                        LinkedHashMap linkedHashMap;
                        int iA;
                        w16 w16Var = (w16) cn6Var.b();
                        PrivateKey privateKey3 = privateKey2;
                        vh7 vh7Var3 = vh7Var2;
                        if (privateKey3 != null) {
                            w16Var.getClass();
                            l66 l66VarA = l66.a(privateKey3);
                            if (!(l66VarA instanceof k66)) {
                                if (l66VarA instanceof j66) {
                                    vo4[] vo4VarArrValues = vo4.values();
                                    int length = vo4VarArrValues.length;
                                    int i = 0;
                                    while (true) {
                                        if (i < length) {
                                            vo4Var = vo4VarArrValues[i];
                                            to4 to4Var2 = vo4Var.b;
                                            if ((to4Var2 instanceof so4) && ((j66) l66VarA).d == ((so4) to4Var2).c) {
                                                break;
                                            }
                                            i++;
                                        }
                                    }
                                    wj8Var = w16Var.b;
                                    if (wj8Var.a != 0) {
                                        if (vo4Var == vo4.ECCP384) {
                                            w16Var.n(w16.d);
                                        }
                                        if (wj8Var.b(4, 4, 0) >= 0) {
                                            g84.j("RSA 1024 is not supported on YubiKey FIPS");
                                            return null;
                                        }
                                    }
                                    to4Var = vo4Var.b;
                                    linkedHashMap = new LinkedHashMap();
                                    iA = dj7.A(to4Var.a);
                                    if (iA != 0) {
                                        int i2 = (to4Var.b / 8) / 2;
                                        k66 k66Var = (k66) l66VarA;
                                        linkedHashMap.put(1, vm4.s(i2, k66Var.f));
                                        linkedHashMap.put(2, vm4.s(i2, k66Var.k));
                                        BigInteger bigInteger = k66Var.n;
                                        Objects.requireNonNull(bigInteger);
                                        linkedHashMap.put(3, vm4.s(i2, bigInteger));
                                        BigInteger bigInteger2 = k66Var.p;
                                        Objects.requireNonNull(bigInteger2);
                                        linkedHashMap.put(4, vm4.s(i2, bigInteger2));
                                        BigInteger bigInteger3 = k66Var.q;
                                        Objects.requireNonNull(bigInteger3);
                                        linkedHashMap.put(5, vm4.s(i2, bigInteger3));
                                    } else if (iA == 1) {
                                        byte[] bArr = ((j66) l66VarA).e;
                                        linkedHashMap.put(6, Arrays.copyOf(bArr, bArr.length));
                                    }
                                    l15 l15Var = w16.f;
                                    ms8.B(4, l15Var, "Importing key with pin_policy={}, touch_policy={}", k06.DEFAULT, w88.DEFAULT);
                                    w16Var.a.b(new ie(-2, cy0.s(linkedHashMap), vo4Var.a, vh7Var3.a));
                                    ms8.B(3, l15Var, "Private key imported in slot {} of type {}", vh7Var3, vo4Var);
                                } else {
                                    vo4 vo4Var2 = vo4.RSA1024;
                                }
                                c6.f("Unsupported key type");
                                return null;
                            }
                            vo4[] vo4VarArrValues2 = vo4.values();
                            int length2 = vo4VarArrValues2.length;
                            int i3 = 0;
                            while (true) {
                                if (i3 >= length2) {
                                    c6.f("Unsupported key type");
                                    return null;
                                }
                                vo4Var = vo4VarArrValues2[i3];
                                to4 to4Var3 = vo4Var.b;
                                if ((to4Var3 instanceof uo4) && l66VarA.a == to4Var3.b) {
                                    break;
                                }
                                i3++;
                            }
                            wj8Var = w16Var.b;
                            if (wj8Var.a != 0) {
                                if (vo4Var == vo4.ECCP384) {
                                    w16Var.n(w16.d);
                                }
                                if (wj8Var.b(4, 4, 0) >= 0 && wj8Var.b(4, 5, 0) < 0 && vo4Var == vo4.RSA1024) {
                                    g84.j("RSA 1024 is not supported on YubiKey FIPS");
                                    return null;
                                }
                            }
                            to4Var = vo4Var.b;
                            linkedHashMap = new LinkedHashMap();
                            iA = dj7.A(to4Var.a);
                            if (iA != 0) {
                                int i4 = (to4Var.b / 8) / 2;
                                k66 k66Var2 = (k66) l66VarA;
                                linkedHashMap.put(1, vm4.s(i4, k66Var2.f));
                                linkedHashMap.put(2, vm4.s(i4, k66Var2.k));
                                BigInteger bigInteger4 = k66Var2.n;
                                Objects.requireNonNull(bigInteger4);
                                linkedHashMap.put(3, vm4.s(i4, bigInteger4));
                                BigInteger bigInteger5 = k66Var2.p;
                                Objects.requireNonNull(bigInteger5);
                                linkedHashMap.put(4, vm4.s(i4, bigInteger5));
                                BigInteger bigInteger6 = k66Var2.q;
                                Objects.requireNonNull(bigInteger6);
                                linkedHashMap.put(5, vm4.s(i4, bigInteger6));
                            } else if (iA == 1) {
                                byte[] bArr2 = ((j66) l66VarA).e;
                                linkedHashMap.put(6, Arrays.copyOf(bArr2, bArr2.length));
                            }
                            l15 l15Var2 = w16.f;
                            ms8.B(4, l15Var2, "Importing key with pin_policy={}, touch_policy={}", k06.DEFAULT, w88.DEFAULT);
                            w16Var.a.b(new ie(-2, cy0.s(linkedHashMap), vo4Var.a, vh7Var3.a));
                            ms8.B(3, l15Var2, "Private key imported in slot {} of type {}", vh7Var3, vo4Var);
                        }
                        X509Certificate x509Certificate3 = x509Certificate2;
                        if (x509Certificate3 != null) {
                            w16Var.getClass();
                            byte[] bArr3 = {0};
                            ms8.B(4, w16.f, "Storing {}certificate in slot {}", "", vh7Var3);
                            try {
                                byte[] encoded = x509Certificate3.getEncoded();
                                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                linkedHashMap2.put(Integer.valueOf(OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS), encoded);
                                linkedHashMap2.put(113, bArr3);
                                linkedHashMap2.put(254, null);
                                w16Var.m(cy0.s(linkedHashMap2), vh7Var3.b);
                            } catch (CertificateEncodingException e) {
                                throw new IllegalArgumentException("Failed to get encoded version of certificate", e);
                            }
                        }
                        return Boolean.TRUE;
                    }
                }));
            }
        });
        ((cn6) arrayBlockingQueue.take()).b();
    }

    @Override // java.security.KeyStoreSpi
    public final Enumeration engineAliases() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.KeyStoreSpi
    public final boolean engineContainsAlias(String str) {
        try {
            vh7.a(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    @Override // java.security.KeyStoreSpi
    public final void engineDeleteEntry(String str) throws Throwable {
        final vh7 vh7VarA = vh7.a(str);
        final ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        this.a.invoke(new vz0() { // from class: v06
            @Override // defpackage.vz0
            public final void invoke(Object obj) {
                final cn6 cn6Var = (cn6) obj;
                final vh7 vh7Var = vh7VarA;
                arrayBlockingQueue.add(cn6.c(new Callable() { // from class: z06
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        w16 w16Var = (w16) cn6Var.b();
                        w16Var.getClass();
                        l15 l15Var = w16.f;
                        vh7 vh7Var2 = vh7Var;
                        ms8.A(4, l15Var, "Deleting certificate in slot {}", vh7Var2);
                        w16Var.m(null, vh7Var2.b);
                        return Boolean.TRUE;
                    }
                }));
            }
        });
        try {
            ((cn6) arrayBlockingQueue.take()).b();
        } catch (Exception e) {
            throw new KeyStoreException(e);
        }
    }

    @Override // java.security.KeyStoreSpi
    public final Certificate engineGetCertificate(String str) {
        final vh7 vh7VarA = vh7.a(str);
        final ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        this.a.invoke(new vz0() { // from class: y06
            @Override // defpackage.vz0
            public final void invoke(Object obj) {
                arrayBlockingQueue.add(cn6.c(new yi1(1, (cn6) obj, vh7VarA)));
            }
        });
        try {
            return (Certificate) ((cn6) arrayBlockingQueue.take()).b();
        } catch (je e) {
            if (e.b != 27266) {
                y5.k(e);
            }
            return null;
        } catch (vk0 unused) {
            return null;
        } catch (Exception e2) {
            y5.k(e2);
            return null;
        }
    }

    @Override // java.security.KeyStoreSpi
    public final String engineGetCertificateAlias(Certificate certificate) {
        for (vh7 vh7Var : vh7.values()) {
            String string = Integer.toString(vh7Var.a, 16);
            if (certificate.equals(engineGetCertificate(string))) {
                return string;
            }
        }
        return null;
    }

    @Override // java.security.KeyStoreSpi
    public final Certificate[] engineGetCertificateChain(String str) {
        return new Certificate[]{engineGetCertificate(str)};
    }

    @Override // java.security.KeyStoreSpi
    public final Date engineGetCreationDate(String str) {
        return null;
    }

    @Override // java.security.KeyStoreSpi
    public final KeyStore.Entry engineGetEntry(String str, KeyStore.ProtectionParameter protectionParameter) throws UnrecoverableEntryException {
        vh7 vh7VarA = vh7.a(str);
        try {
            ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
            this.a.invoke(new u06(arrayBlockingQueue, vh7VarA, protectionParameter));
            return (KeyStore.Entry) ((cn6) arrayBlockingQueue.take()).b();
        } catch (je e) {
            if (e.b == 27266) {
                return null;
            }
            y5.k(e);
            return null;
        } catch (vk0 unused) {
            throw new UnrecoverableEntryException("Make sure the matching certificate is stored");
        } catch (Exception e2) {
            y5.k(e2);
            return null;
        }
    }

    @Override // java.security.KeyStoreSpi
    public final Key engineGetKey(String str, final char[] cArr) throws UnrecoverableKeyException {
        final vh7 vh7VarA = vh7.a(str);
        try {
            final ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
            this.a.invoke(new vz0() { // from class: x06
                @Override // defpackage.vz0
                public final void invoke(Object obj) {
                    final cn6 cn6Var = (cn6) obj;
                    final vh7 vh7Var = vh7VarA;
                    final char[] cArr2 = cArr;
                    arrayBlockingQueue.add(cn6.c(new Callable() { // from class: a16
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            w16 w16Var = (w16) cn6Var.b();
                            boolean zU = w16.e.u(w16Var.b);
                            vh7 vh7Var2 = vh7Var;
                            char[] cArr3 = cArr2;
                            return zU ? j16.a(w16Var.g(vh7Var2).e(), vh7Var2, cArr3) : j16.a(w16Var.a(vh7Var2).getPublicKey(), vh7Var2, cArr3);
                        }
                    }));
                }
            });
            return (Key) ((cn6) arrayBlockingQueue.take()).b();
        } catch (je e) {
            if (e.b == 27266) {
                return null;
            }
            y5.k(e);
            return null;
        } catch (vk0 unused) {
            throw new UnrecoverableKeyException("No way to infer KeyType, make sure the matching certificate is stored");
        } catch (Exception e2) {
            y5.k(e2);
            return null;
        }
    }

    @Override // java.security.KeyStoreSpi
    public final boolean engineIsCertificateEntry(String str) {
        return engineGetCertificate(str) != null;
    }

    @Override // java.security.KeyStoreSpi
    public final boolean engineIsKeyEntry(String str) {
        return engineContainsAlias(str);
    }

    @Override // java.security.KeyStoreSpi
    public final void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) {
        if (loadStoreParameter != null) {
            throw new InvalidParameterException("KeyStore must be loaded with null");
        }
    }

    @Override // java.security.KeyStoreSpi
    public final void engineSetCertificateEntry(String str, Certificate certificate) throws Throwable {
        vh7 vh7VarA = vh7.a(str);
        if (!(certificate instanceof X509Certificate)) {
            throw new KeyStoreException("Certificate must be X509Certificate");
        }
        try {
            a(vh7VarA, null, (X509Certificate) certificate);
        } catch (Exception e) {
            throw new KeyStoreException(e);
        }
    }

    @Override // java.security.KeyStoreSpi
    public final void engineSetEntry(String str, KeyStore.Entry entry, KeyStore.ProtectionParameter protectionParameter) throws Throwable {
        PrivateKey privateKey;
        Certificate trustedCertificate;
        vh7 vh7VarA = vh7.a(str);
        if (entry instanceof KeyStore.TrustedCertificateEntry) {
            if (protectionParameter != null) {
                throw new KeyStoreException("Certificate cannot use protParam");
            }
            trustedCertificate = ((KeyStore.TrustedCertificateEntry) entry).getTrustedCertificate();
            privateKey = null;
        } else {
            if (!(entry instanceof KeyStore.PrivateKeyEntry)) {
                throw new KeyStoreException("Unsupported KeyStore entry.");
            }
            KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) entry;
            Certificate certificate = privateKeyEntry.getCertificate();
            privateKey = privateKeyEntry.getPrivateKey();
            trustedCertificate = certificate;
        }
        if (trustedCertificate != null && !(trustedCertificate instanceof X509Certificate)) {
            throw new KeyStoreException("Certificate must be X509Certificate");
        }
        if (privateKey != null && protectionParameter != null) {
            throw new KeyStoreException("protParam must be an instance of PivKeyStoreKeyParameters");
        }
        try {
            a(vh7VarA, privateKey, (X509Certificate) trustedCertificate);
        } catch (Exception e) {
            throw new KeyStoreException(e);
        }
    }

    @Override // java.security.KeyStoreSpi
    public final void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws Throwable {
        vh7 vh7VarA = vh7.a(str);
        if (cArr != null) {
            throw new KeyStoreException("Password can not be set");
        }
        if (certificateArr.length != 1) {
            throw new KeyStoreException("Certificate chain must be a single certificate, or empty");
        }
        Certificate certificate = certificateArr[0];
        if (!(certificate instanceof X509Certificate)) {
            throw new KeyStoreException("Certificate must be X509Certificate");
        }
        try {
            a(vh7VarA, (PrivateKey) key, (X509Certificate) certificate);
        } catch (Exception e) {
            throw new KeyStoreException(e);
        }
    }

    @Override // java.security.KeyStoreSpi
    public final int engineSize() {
        return vh7.values().length;
    }

    @Override // java.security.KeyStoreSpi
    public final void engineStore(OutputStream outputStream, char[] cArr) {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.KeyStoreSpi
    public final void engineLoad(InputStream inputStream, char[] cArr) {
        throw new InvalidParameterException("KeyStore must be loaded with a null LoadStoreParameter");
    }

    @Override // java.security.KeyStoreSpi
    public final void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        throw new KeyStoreException("Use setKeyEntry with a PrivateKey instance instead of byte[]");
    }
}
