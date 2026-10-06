package com.jcraft.jsch;

import com.jcraft.jsch.asn1.ASN1;
import com.jcraft.jsch.asn1.ASN1Exception;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.a6;
import defpackage.e6;
import defpackage.eq3;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class KeyPair {
    public static final int DEFERRED = -1;
    public static final int DSA = 1;
    public static final int ECDSA = 3;
    public static final int ED25519 = 5;
    public static final int ED448 = 6;
    public static final int ERROR = 0;
    public static final int RSA = 2;
    public static final int UNKNOWN = 4;
    public static final byte[] m;
    public static final byte[] n;
    public static final byte[] o;
    public static final byte[] p;
    public static final byte[] q;
    public static final byte[][] r;
    public static final byte[] s;
    public final JSch.InstanceLogger c;
    public Cipher d;
    public KDF e;
    public HASH f;
    public HASH g;
    public Random h;
    public int a = 0;
    public String b = "no comment";
    public boolean i = false;
    public byte[] j = null;
    public byte[] k = null;
    public byte[] l = null;

    static {
        byte[] bArr = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        m = Util.p("openssh-key-v1\u0000", charset);
        n = Util.p("\n", charset);
        o = Util.p("-----BEGIN OPENSSH PRIVATE KEY-----", charset);
        p = Util.p("-----END OPENSSH PRIVATE KEY-----", charset);
        q = Util.p("none", charset);
        r = new byte[][]{Util.p("Proc-Type: 4,ENCRYPTED", charset), Util.p("DEK-Info: DES-EDE3-CBC,", charset)};
        s = Util.p(TokenAuthenticationScheme.SCHEME_DELIMITER, charset);
    }

    public KeyPair(JSch.InstanceLogger instanceLogger) {
        this.c = instanceLogger;
    }

    public static int b(int i) {
        int i2 = 1;
        if (i <= 127) {
            return 1;
        }
        while (i > 0) {
            i >>>= 8;
            i2++;
        }
        return i2;
    }

    public static byte[] extractX509SubjectPublicKeyInfo(byte[] bArr, byte[] bArr2, int i) throws JSchException {
        try {
            ASN1 asn1 = new ASN1(bArr);
            if (!asn1.isSEQUENCE()) {
                throw new JSchException("invalid public key value (SubjectPublicKeyInfo is not a SEQUENCE)");
            }
            ASN1[] contents = asn1.getContents();
            if (contents.length != 2) {
                throw new JSchException("invalid public key value (SubjectPublicKeyInfo is wrong length)");
            }
            ASN1 asn2 = contents[0];
            if (!asn2.isSEQUENCE()) {
                throw new JSchException("invalid public key value (SubjectPublicKeyInfo algorithm is not a SEQUENCE)");
            }
            ASN1[] contents2 = asn2.getContents();
            if (contents2.length < 1) {
                throw new JSchException("invalid public key value (SubjectPublicKeyInfo algorithm is wrong length)");
            }
            ASN1 asn3 = contents2[0];
            if (!asn3.isOBJECT()) {
                throw new JSchException("invalid public key value (AlgorithmIdentifier algorithm is not an OBJECT IDENTIFIER)");
            }
            if (!Util.a(asn3.getContent(), bArr2)) {
                throw new JSchException("invalid public key value (AlgorithmIdentifier algorithm is wrong value)");
            }
            ASN1 asn4 = contents[1];
            if (!asn4.isBITSTRING()) {
                throw new JSchException("invalid public key value (SubjectPublicKeyInfo subjectPublicKey is not a BIT STRING)");
            }
            byte[] content = asn4.getContent();
            if (content[0] == 0 && content.length - 1 == i) {
                return Arrays.copyOfRange(content, 1, content.length);
            }
            throw new JSchException("invalid public key value (SubjectPublicKeyInfo subjectPublicKey is wrong length)");
        } catch (ASN1Exception e) {
            throw new JSchException("invalid ASN.1 encoding", e);
        }
    }

    public static KeyPair genKeyPair(JSch jSch, int i, int i2) throws JSchException {
        KeyPair keyPairEd448;
        if (i == 1) {
            keyPairEd448 = new KeyPairDSA(jSch.a);
        } else if (i == 2) {
            keyPairEd448 = new KeyPairRSA(jSch.a, null, null, null);
        } else if (i == 3) {
            keyPairEd448 = new KeyPairECDSA(jSch.a);
        } else if (i == 5) {
            keyPairEd448 = new KeyPairEd25519(jSch.a, null, null);
        } else {
            keyPairEd448 = i == 6 ? new KeyPairEd448(jSch.a, null, null) : null;
        }
        if (keyPairEd448 != null) {
            keyPairEd448.h(i2);
        }
        return keyPairEd448;
    }

    public static KeyPair load(JSch jSch, String str) throws JSchException {
        String strJ = eq3.j(str, ".pub");
        if (!new File(strJ).exists()) {
            strJ = null;
        }
        return o(jSch.a, str, strJ);
    }

    public static boolean n(byte[] bArr, int i, int i2) {
        int i3 = i + 24;
        return i3 < i2 && "OPENSSH PRIVATE KEY-----".equals(Util.c(Arrays.copyOfRange(bArr, i, i3)));
    }

    public static KeyPair o(JSch.InstanceLogger instanceLogger, String str, String str2) throws JSchException {
        byte[] bArrJ = null;
        try {
            byte[] bArrJ2 = Util.j(str);
            try {
                bArrJ = Util.j(str2 == null ? eq3.j(str, ".pub") : str2);
            } catch (IOException e) {
                if (str2 != null) {
                    a6.f(e);
                    return null;
                }
            }
            try {
                return p(instanceLogger, bArrJ2, bArrJ);
            } finally {
                Util.e(bArrJ2);
            }
        } catch (IOException e2) {
            a6.f(e2);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r3v108 */
    /* JADX WARN: Type inference failed for: r3v109 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v110 */
    /* JADX WARN: Type inference failed for: r3v111 */
    /* JADX WARN: Type inference failed for: r3v112 */
    /* JADX WARN: Type inference failed for: r3v113 */
    /* JADX WARN: Type inference failed for: r3v114 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r4v33, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:290:0x041c
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public static com.jcraft.jsch.KeyPair p(com.jcraft.jsch.JSch.InstanceLogger r32, byte[] r33, byte[] r34) {
        /*
            Method dump skipped, instruction units count: 1947
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jsch.KeyPair.p(com.jcraft.jsch.JSch$InstanceLogger, byte[], byte[]):com.jcraft.jsch.KeyPair");
    }

    /* JADX WARN: Code duplicated, block: B:41:0x010c A[Catch: Exception -> 0x006f, TryCatch #0 {Exception -> 0x006f, blocks: (B:10:0x005d, B:12:0x0069, B:16:0x0072, B:17:0x0077, B:30:0x00e9, B:32:0x00ed, B:33:0x00ef, B:34:0x00f0, B:35:0x0104, B:39:0x0108, B:41:0x010c, B:42:0x010e, B:43:0x010f, B:44:0x0123), top: B:53:0x005b }] */
    /* JADX WARN: Code duplicated, block: B:43:0x010f A[Catch: Exception -> 0x006f, TryCatch #0 {Exception -> 0x006f, blocks: (B:10:0x005d, B:12:0x0069, B:16:0x0072, B:17:0x0077, B:30:0x00e9, B:32:0x00ed, B:33:0x00ef, B:34:0x00f0, B:35:0x0104, B:39:0x0108, B:41:0x010c, B:42:0x010e, B:43:0x010f, B:44:0x0123), top: B:53:0x005b }] */
    /* JADX WARN: Instruction removed from duplicated block: B:43:0x010f, please report this as an issue */
    public static KeyPair q(JSch.InstanceLogger instanceLogger, byte[] bArr) throws Exception {
        if (bArr == null) {
            e6.h("invalid privatekey");
            return null;
        }
        Buffer buffer = new Buffer(bArr);
        byte[] bArr2 = m;
        int length = bArr2.length;
        byte[] bArr3 = new byte[length];
        buffer.c(bArr3, 0, length);
        if (!Util.b(bArr2, bArr3)) {
            e6.h("Invalid openssh v1 format.");
            return null;
        }
        byte[] string = buffer.getString();
        int length2 = string.length;
        Charset charset = StandardCharsets.UTF_8;
        String str = new String(string, 0, length2, charset);
        byte[] string2 = buffer.getString();
        String str2 = new String(string2, 0, string2.length, charset);
        byte[] string3 = buffer.getString();
        if (buffer.getInt() != 1) {
            e6.h("We don't support having more than 1 key in the file (yet).");
            return null;
        }
        byte[] string4 = buffer.getString();
        KeyPair keyPairV = v(instanceLogger, string4, null);
        boolean zEquals = "none".equals(str);
        keyPairV.i = !zEquals;
        keyPairV.l = string4;
        keyPairV.a = 4;
        keyPairV.b = "";
        try {
            if (zEquals) {
                byte[] string5 = buffer.getString();
                keyPairV.j = string5;
                if (!keyPairV.s(string5)) {
                    throw new JSchException("invalid privatekey");
                }
                Util.e(keyPairV.j);
                return keyPairV;
            }
            try {
                Cipher cipher = (Cipher) Class.forName(JSch.getConfig(str)).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null);
                keyPairV.d = cipher;
                int iVSize = cipher.getIVSize();
                if (keyPairV.d.isChaCha20()) {
                    iVSize = 0;
                } else if (keyPairV.d.isAEAD()) {
                    iVSize = 12;
                }
                keyPairV.k = new byte[iVSize];
                byte[] string6 = buffer.getString();
                int length3 = string6.length + keyPairV.d.getTagSize();
                byte[] bArr4 = new byte[length3];
                System.arraycopy(string6, 0, bArr4, 0, string6.length);
                buffer.c(bArr4, string6.length, length3 - string6.length);
                keyPairV.j = bArr4;
                try {
                    KDF kdf = (KDF) Class.forName(JSch.getConfig(str2)).asSubclass(KDF.class).getDeclaredConstructor(null).newInstance(null);
                    keyPairV.e = kdf;
                    kdf.initWithOpenSSHv1KDFOptions(string3);
                    return keyPairV;
                } catch (Exception | LinkageError e) {
                    if (e instanceof JSchException) {
                        throw ((JSchException) e);
                    }
                    throw new JSchException("kdf " + str2 + " is not available", e);
                }
            } catch (Exception e2) {
                e = e2;
                if (e instanceof JSchException) {
                    throw ((JSchException) e);
                }
                throw new JSchException("cipher " + str + " is not available", e);
            } catch (LinkageError e3) {
                e = e3;
                if (e instanceof JSchException) {
                    throw ((JSchException) e);
                }
                throw new JSchException("cipher " + str + " is not available", e);
            }
        } catch (Exception e4) {
            Util.e(keyPairV.j);
            throw e4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0118 A[Catch: all -> 0x00cf, Exception -> 0x00dd, TryCatch #4 {Exception -> 0x00dd, blocks: (B:19:0x005c, B:40:0x010e, B:38:0x00e9, B:44:0x0114, B:46:0x0118, B:47:0x011a, B:48:0x011b, B:49:0x0136, B:30:0x00d6, B:32:0x00da, B:33:0x00dc, B:36:0x00e1, B:37:0x00e8, B:59:0x0149, B:61:0x0151, B:64:0x0158, B:65:0x015f, B:53:0x013a, B:55:0x013e, B:56:0x0140, B:57:0x0141, B:58:0x0148), top: B:78:0x005c }] */
    /* JADX WARN: Code duplicated, block: B:48:0x011b A[Catch: all -> 0x00cf, Exception -> 0x00dd, TryCatch #4 {Exception -> 0x00dd, blocks: (B:19:0x005c, B:40:0x010e, B:38:0x00e9, B:44:0x0114, B:46:0x0118, B:47:0x011a, B:48:0x011b, B:49:0x0136, B:30:0x00d6, B:32:0x00da, B:33:0x00dc, B:36:0x00e1, B:37:0x00e8, B:59:0x0149, B:61:0x0151, B:64:0x0158, B:65:0x015f, B:53:0x013a, B:55:0x013e, B:56:0x0140, B:57:0x0141, B:58:0x0148), top: B:78:0x005c }] */
    /* JADX WARN: Code duplicated, block: B:55:0x013e A[Catch: all -> 0x00cf, Exception -> 0x00dd, TryCatch #4 {Exception -> 0x00dd, blocks: (B:19:0x005c, B:40:0x010e, B:38:0x00e9, B:44:0x0114, B:46:0x0118, B:47:0x011a, B:48:0x011b, B:49:0x0136, B:30:0x00d6, B:32:0x00da, B:33:0x00dc, B:36:0x00e1, B:37:0x00e8, B:59:0x0149, B:61:0x0151, B:64:0x0158, B:65:0x015f, B:53:0x013a, B:55:0x013e, B:56:0x0140, B:57:0x0141, B:58:0x0148), top: B:78:0x005c }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0141 A[Catch: all -> 0x00cf, Exception -> 0x00dd, TryCatch #4 {Exception -> 0x00dd, blocks: (B:19:0x005c, B:40:0x010e, B:38:0x00e9, B:44:0x0114, B:46:0x0118, B:47:0x011a, B:48:0x011b, B:49:0x0136, B:30:0x00d6, B:32:0x00da, B:33:0x00dc, B:36:0x00e1, B:37:0x00e8, B:59:0x0149, B:61:0x0151, B:64:0x0158, B:65:0x015f, B:53:0x013a, B:55:0x013e, B:56:0x0140, B:57:0x0141, B:58:0x0148), top: B:78:0x005c }] */
    /* JADX WARN: Instruction removed from duplicated block: B:48:0x011b, please report this as an issue */
    public static KeyPair r(JSch.InstanceLogger instanceLogger, byte[] bArr) throws Throwable {
        int i;
        Buffer buffer = new Buffer(bArr);
        HashMap map = new HashMap();
        while (t(buffer, map)) {
        }
        String str = (String) map.get("PuTTY-User-Key-File-2");
        byte[] bArr2 = null;
        if (str == null) {
            str = (String) map.get("PuTTY-User-Key-File-3");
            if (str == null) {
                return null;
            }
            i = 5;
        } else {
            i = 2;
        }
        try {
            byte[] bArrU = u(buffer, Integer.parseInt((String) map.get("Public-Lines")));
            while (t(buffer, map)) {
            }
            byte[] bArrU2 = u(buffer, Integer.parseInt((String) map.get("Private-Lines")));
            do {
                try {
                    try {
                    } catch (Exception e) {
                        e = e;
                    }
                } catch (Throwable th) {
                    th = th;
                    bArr2 = bArrU2;
                    Util.e(bArr2);
                    throw th;
                }
            } while (t(buffer, map));
            byte[] bArrI = Util.i(bArrU2, 0, bArrU2.length);
            try {
                byte[] bArrI2 = Util.i(bArrU, 0, bArrU.length);
                KeyPair keyPairV = v(instanceLogger, bArrI2, str);
                keyPairV.i = !((String) map.get("Encryption")).equals("none");
                keyPairV.l = bArrI2;
                keyPairV.a = i;
                keyPairV.b = (String) map.get("Comment");
                if (keyPairV.i) {
                    try {
                        Cipher cipher = (Cipher) Class.forName(JSch.getConfig("aes256-cbc")).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null);
                        keyPairV.d = cipher;
                        keyPairV.k = new byte[cipher.getIVSize()];
                        if (i == 2) {
                            try {
                                HASH hash = (HASH) Class.forName(JSch.getConfig("sha-1")).asSubclass(HASH.class).getDeclaredConstructor(null).newInstance(null);
                                hash.init();
                                keyPairV.f = hash;
                            } catch (Exception | LinkageError e2) {
                                if (e2 instanceof JSchException) {
                                    throw ((JSchException) e2);
                                }
                                throw new JSchException("hash sha-1 is not available", e2);
                            }
                        } else {
                            String str2 = (String) map.get("Key-Derivation");
                            try {
                                KDF kdf = (KDF) Class.forName(JSch.getConfig(str2)).asSubclass(KDF.class).getDeclaredConstructor(null).newInstance(null);
                                keyPairV.e = kdf;
                                kdf.initWithPPKv3Header(map);
                            } catch (Exception e3) {
                                e = e3;
                                if (e instanceof JSchException) {
                                    throw ((JSchException) e);
                                }
                                throw new JSchException("kdf " + str2 + " is not available", e);
                            } catch (LinkageError e4) {
                                e = e4;
                                if (e instanceof JSchException) {
                                    throw ((JSchException) e);
                                }
                                throw new JSchException("kdf " + str2 + " is not available", e);
                            }
                        }
                        keyPairV.j = bArrI;
                    } catch (Exception e5) {
                        e = e5;
                        if (e instanceof JSchException) {
                            throw ((JSchException) e);
                        }
                        throw new JSchException("cipher aes256-cbc is not available", e);
                    } catch (LinkageError e6) {
                        e = e6;
                        if (e instanceof JSchException) {
                            throw ((JSchException) e);
                        }
                        throw new JSchException("cipher aes256-cbc is not available", e);
                    }
                } else {
                    keyPairV.j = bArrI;
                    if (!keyPairV.s(bArrI)) {
                        throw new JSchException("invalid privatekey");
                    }
                    Util.e(bArrI);
                }
                Util.e(bArrU2);
                return keyPairV;
            } catch (Exception e7) {
                e = e7;
                bArr2 = bArrI;
                Util.e(bArr2);
                throw e;
            }
        } catch (Exception e8) {
            e = e8;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean t(Buffer buffer, HashMap map) {
        String strD;
        int i;
        String strD2;
        byte[] bArr = buffer.b;
        int i2 = buffer.c;
        int i3 = i2;
        while (true) {
            strD = null;
            if (i3 < bArr.length) {
                byte b = bArr[i3];
                if (b == 13 || b == 10) {
                    int i4 = i3 + 1;
                    if (i4 < bArr.length) {
                        byte b2 = bArr[i4];
                    }
                } else {
                    if (b == 58) {
                        strD2 = Util.d(bArr, i2, i3 - i2);
                        int i5 = i3 + 1;
                        if (i5 < bArr.length && bArr[i5] == 32) {
                            i = i3 + 2;
                            break;
                        }
                        i = i5;
                        break;
                    }
                    i3++;
                }
            }
            i = i2;
            strD2 = null;
            break;
        }
        if (strD2 == null) {
            return false;
        }
        for (int i6 = i; i6 < bArr.length; i6++) {
            byte b3 = bArr[i6];
            if (b3 == 13 || b3 == 10) {
                strD = Util.d(bArr, i, i6 - i);
                i = i6 + 1;
                if (i >= bArr.length || bArr[i] != 10) {
                    break;
                    break;
                }
                i = i6 + 2;
                break;
            }
        }
        if (strD != null) {
            map.put(strD2, strD);
            buffer.c = i;
        }
        return strD != null;
    }

    public static byte[] u(Buffer buffer, int i) {
        byte[] bArr = buffer.b;
        int i2 = buffer.c;
        byte[] bArr2 = null;
        while (true) {
            int i3 = i - 1;
            if (i <= 0) {
                break;
            }
            int i4 = i2;
            while (bArr.length > i4) {
                int i5 = i4 + 1;
                byte b = bArr[i4];
                if (b == 13 || b == 10) {
                    int i6 = (i5 - i2) - 1;
                    if (bArr2 != null) {
                        if (i6 > 0) {
                            byte[] bArr3 = new byte[bArr2.length + i6];
                            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
                            System.arraycopy(bArr, i2, bArr3, bArr2.length, i6);
                            Util.e(bArr2);
                            i4 = i5;
                            bArr2 = bArr3;
                            break;
                        }
                    } else {
                        bArr2 = new byte[i6];
                        System.arraycopy(bArr, i2, bArr2, 0, i6);
                    }
                    i4 = i5;
                    break;
                }
                i4 = i5;
            }
            if (i4 < bArr.length && bArr[i4] == 10) {
                i4++;
            }
            i2 = i4;
            i = i3;
        }
        if (bArr2 != null) {
            buffer.c = i2;
        }
        return bArr2;
    }

    public static KeyPair v(JSch.InstanceLogger instanceLogger, byte[] bArr, String str) throws JSchException {
        Buffer buffer = new Buffer(bArr);
        buffer.h(bArr.length);
        byte[] string = buffer.getString();
        byte[] bArr2 = Util.a;
        String str2 = new String(string, 0, string.length, StandardCharsets.UTF_8);
        if (str == null || str.equals("")) {
            str = str2;
        } else if (!str.equals(str2)) {
            throw new JSchException(eq3.l("pubkeyblob type [", str2, "] does not match expected type [", str, "]"));
        }
        if (str.equals("ssh-rsa")) {
            int i = buffer.getInt();
            byte[] bArr3 = new byte[i];
            buffer.c(bArr3, 0, i);
            int i2 = buffer.getInt();
            byte[] bArr4 = new byte[i2];
            buffer.c(bArr4, 0, i2);
            return new KeyPairRSA(instanceLogger, bArr4, bArr3, null);
        }
        if (str.equals("ssh-dss")) {
            int i3 = buffer.getInt();
            byte[] bArr5 = new byte[i3];
            buffer.c(bArr5, 0, i3);
            int i4 = buffer.getInt();
            byte[] bArr6 = new byte[i4];
            buffer.c(bArr6, 0, i4);
            int i5 = buffer.getInt();
            byte[] bArr7 = new byte[i5];
            buffer.c(bArr7, 0, i5);
            int i6 = buffer.getInt();
            byte[] bArr8 = new byte[i6];
            buffer.c(bArr8, 0, i6);
            return new KeyPairDSA(instanceLogger, bArr5, bArr6, bArr7, bArr8, null);
        }
        if (!str.equals("ecdsa-sha2-nistp256") && !str.equals("ecdsa-sha2-nistp384") && !str.equals("ecdsa-sha2-nistp521")) {
            if (!str.equals("ssh-ed25519") && !str.equals("ssh-ed448")) {
                throw new JSchException(eq3.k("key type ", str, " is not supported"));
            }
            int i7 = buffer.getInt();
            byte[] bArr9 = new byte[i7];
            buffer.c(bArr9, 0, i7);
            return str.equals("ssh-ed25519") ? new KeyPairEd25519(instanceLogger, bArr9, null) : new KeyPairEd448(instanceLogger, bArr9, null);
        }
        byte[] string2 = buffer.getString();
        int i8 = buffer.getInt();
        buffer.getByte();
        int i9 = (i8 - 1) / 2;
        byte[] bArr10 = new byte[i9];
        byte[] bArr11 = new byte[i9];
        buffer.c(bArr10, 0, i9);
        buffer.c(bArr11, 0, i9);
        return new KeyPairECDSA(instanceLogger, string2, bArr10, bArr11, null);
    }

    public static int w(int i, byte[] bArr, byte[] bArr2) {
        bArr[i] = 2;
        int iX = x(bArr, i + 1, bArr2.length);
        System.arraycopy(bArr2, 0, bArr, iX, bArr2.length);
        return iX + bArr2.length;
    }

    public static int x(byte[] bArr, int i, int i2) {
        int iB = b(i2) - 1;
        if (iB == 0) {
            int i3 = i + 1;
            bArr[i] = (byte) i2;
            return i3;
        }
        int i4 = i + 1;
        bArr[i] = (byte) (iB | 128);
        int i5 = i4 + iB;
        while (iB > 0) {
            bArr[(i4 + iB) - 1] = (byte) (i2 & 255);
            i2 >>>= 8;
            iB--;
        }
        return i5;
    }

    public final void a(KeyPair keyPair) {
        this.l = keyPair.l;
        this.a = keyPair.a;
        this.b = keyPair.b;
        this.d = keyPair.d;
    }

    public final byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            byte[] bArrF = f(bArr2, bArr3);
            this.d.init(1, bArrF, bArr3);
            Util.e(bArrF);
            byte[] bArr4 = new byte[bArr.length - this.d.getTagSize()];
            boolean zIsChaCha20 = this.d.isChaCha20();
            Cipher cipher = this.d;
            if (zIsChaCha20) {
                cipher.update(0);
                Cipher cipher2 = this.d;
                cipher2.doFinal(bArr, -4, bArr.length - cipher2.getTagSize(), bArr4, 0);
                return bArr4;
            }
            boolean zIsAEAD = cipher.isAEAD();
            Cipher cipher3 = this.d;
            if (zIsAEAD) {
                cipher3.doFinal(bArr, 0, bArr.length, bArr4, 0);
                return bArr4;
            }
            cipher3.update(bArr, 0, bArr.length, bArr4, 0);
            return bArr4;
        } catch (Exception e) {
            JSch.InstanceLogger instanceLogger = this.c;
            if (!instanceLogger.a().isEnabled(3)) {
                return null;
            }
            instanceLogger.a().log(3, "failed to decrypt key", e);
            return null;
        }
    }

    public final Cipher d() {
        try {
            this.d = (Cipher) Class.forName(JSch.getConfig("3des-cbc")).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception | LinkageError e) {
            JSch.InstanceLogger instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to create cipher", e);
            }
        }
        return this.d;
    }

    public boolean decrypt(byte[] bArr) {
        boolean z = this.i;
        if (!z) {
            return true;
        }
        if (bArr == null) {
            return !z;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        byte[] bArrC = null;
        try {
            bArrC = c(this.j, bArr2, this.k);
            if (s(bArrC)) {
                this.i = false;
                Util.e(this.j);
            }
            return !this.i;
        } finally {
            Util.e(bArr2);
            Util.e(bArrC);
        }
    }

    public final HASH e() {
        try {
            HASH hash = (HASH) Class.forName(JSch.getConfig("md5")).asSubclass(HASH.class).getDeclaredConstructor(null).newInstance(null);
            this.g = hash;
            hash.init();
        } catch (Exception | LinkageError e) {
            JSch.InstanceLogger instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to create hash", e);
            }
        }
        return this.g;
    }

    public final synchronized byte[] f(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        try {
            if (this.d == null) {
                this.d = d();
            }
            if (this.g == null) {
                this.g = e();
            }
            int blockSize = this.d.getBlockSize();
            bArr3 = new byte[blockSize];
            int blockSize2 = this.g.getBlockSize();
            int i = ((blockSize / blockSize2) * blockSize2) + (blockSize % blockSize2 == 0 ? 0 : blockSize2);
            byte[] bArr4 = new byte[i];
            try {
                int i2 = this.a;
                byte[] bArrDigest = null;
                if (i2 == 0) {
                    int length = 0;
                    while (length + blockSize2 <= i) {
                        if (bArrDigest != null) {
                            this.g.update(bArrDigest, 0, bArrDigest.length);
                        }
                        this.g.update(bArr, 0, bArr.length);
                        HASH hash = this.g;
                        int length2 = 8;
                        if (bArr2.length <= 8) {
                            length2 = bArr2.length;
                        }
                        hash.update(bArr2, 0, length2);
                        bArrDigest = this.g.digest();
                        System.arraycopy(bArrDigest, 0, bArr4, length, bArrDigest.length);
                        length += bArrDigest.length;
                    }
                    System.arraycopy(bArr4, 0, bArr3, 0, blockSize);
                } else if (i2 == 4) {
                    byte[] key = this.e.getKey(bArr, bArr2.length + blockSize);
                    System.arraycopy(key, 0, bArr3, 0, blockSize);
                    System.arraycopy(key, blockSize, bArr2, 0, bArr2.length);
                    Util.e(key);
                } else if (i2 == 1) {
                    int length3 = 0;
                    while (length3 + blockSize2 <= i) {
                        if (bArrDigest != null) {
                            this.g.update(bArrDigest, 0, bArrDigest.length);
                        }
                        this.g.update(bArr, 0, bArr.length);
                        bArrDigest = this.g.digest();
                        System.arraycopy(bArrDigest, 0, bArr4, length3, bArrDigest.length);
                        length3 += bArrDigest.length;
                    }
                    System.arraycopy(bArr4, 0, bArr3, 0, blockSize);
                } else if (i2 == 2) {
                    byte[] bArr5 = new byte[4];
                    this.f.update(bArr5, 0, 4);
                    this.f.update(bArr, 0, bArr.length);
                    byte[] bArrDigest2 = this.f.digest();
                    System.arraycopy(bArrDigest2, 0, bArr3, 0, bArrDigest2.length);
                    Util.e(bArrDigest2);
                    bArr5[3] = 1;
                    this.f.update(bArr5, 0, 4);
                    this.f.update(bArr, 0, bArr.length);
                    byte[] bArrDigest3 = this.f.digest();
                    System.arraycopy(bArrDigest3, 0, bArr3, bArrDigest3.length, blockSize - bArrDigest3.length);
                    Util.e(bArrDigest3);
                } else if (i2 == 5) {
                    byte[] key2 = this.e.getKey(bArr, bArr2.length + blockSize + 32);
                    System.arraycopy(key2, 0, bArr3, 0, blockSize);
                    System.arraycopy(key2, blockSize, bArr2, 0, bArr2.length);
                    Util.e(key2);
                }
            } catch (Exception e) {
                if (this.c.a().isEnabled(3)) {
                    this.c.a().log(3, "failed to generate key from passphrase", e);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return bArr3;
    }

    public final void finalize() {
        dispose();
    }

    public abstract byte[] forSSHAgent() throws JSchException;

    public final Random g() {
        if (this.h == null) {
            try {
                this.h = (Random) Class.forName(JSch.getConfig("random")).asSubclass(Random.class).getDeclaredConstructor(null).newInstance(null);
            } catch (Exception | LinkageError e) {
                JSch.InstanceLogger instanceLogger = this.c;
                if (instanceLogger.a().isEnabled(3)) {
                    instanceLogger.a().log(3, "failed to create random", e);
                }
            }
        }
        return this.h;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003f  */
    public final String getFingerPrint() {
        HASH hash;
        JSch.InstanceLogger instanceLogger;
        byte[] publicKeyBlob;
        try {
            hash = (HASH) Class.forName(JSch.getConfig(JSch.getConfig("FingerprintHash").toLowerCase(Locale.ROOT))).asSubclass(HASH.class).getDeclaredConstructor(null).newInstance(null);
            try {
                hash.init();
            } catch (Exception e) {
                e = e;
                instanceLogger = this.c;
                if (instanceLogger.a().isEnabled(3)) {
                    instanceLogger.a().log(3, "failed to create hash", e);
                }
            } catch (LinkageError e2) {
                e = e2;
                instanceLogger = this.c;
                if (instanceLogger.a().isEnabled(3)) {
                    instanceLogger.a().log(3, "failed to create hash", e);
                }
            }
        } catch (Exception | LinkageError e3) {
            e = e3;
            hash = null;
        }
        if (hash == null || (publicKeyBlob = getPublicKeyBlob()) == null) {
            return null;
        }
        return Util.k(hash, publicKeyBlob);
    }

    public abstract int getKeySize();

    public abstract int getKeyType();

    public final String getKeyTypeString() {
        return Util.c(k());
    }

    public byte[] getPublicKeyBlob() {
        return this.l;
    }

    public final String getPublicKeyComment() {
        return this.b;
    }

    public abstract byte[] getSignature(byte[] bArr);

    public abstract byte[] getSignature(byte[] bArr, String str);

    public abstract Signature getVerifier();

    public abstract Signature getVerifier(String str);

    public abstract void h(int i);

    public abstract byte[] i();

    public final boolean isEncrypted() {
        return this.i;
    }

    public abstract byte[] j();

    public abstract byte[] k();

    public abstract byte[] l();

    public abstract byte[] m();

    public abstract boolean s(byte[] bArr);

    @Deprecated
    public final void setPassphrase(String str) {
        throw new UnsupportedOperationException("deprecated");
    }

    public final void setPublicKeyComment(String str) {
        this.b = str;
    }

    /* JADX WARN: Code duplicated, block: B:148:0x0328 A[Catch: all -> 0x032b, TryCatch #4 {all -> 0x032b, blocks: (B:146:0x0324, B:148:0x0328, B:149:0x032a, B:152:0x032e, B:153:0x0337), top: B:163:0x0324 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x032e A[Catch: all -> 0x032b, TryCatch #4 {all -> 0x032b, blocks: (B:146:0x0324, B:148:0x0328, B:149:0x032a, B:152:0x032e, B:153:0x0337), top: B:163:0x0324 }] */
    /* JADX WARN: Code duplicated, block: B:156:0x0346  */
    /* JADX WARN: Code duplicated, block: B:158:0x034d  */
    /* JADX WARN: Code duplicated, block: B:76:0x0137 A[Catch: all -> 0x0111, Exception -> 0x0118, TryCatch #20 {Exception -> 0x0118, blocks: (B:22:0x006c, B:65:0x0121, B:67:0x0125, B:68:0x0127, B:69:0x0128, B:70:0x012f, B:74:0x0133, B:76:0x0137, B:77:0x0139, B:78:0x013a, B:79:0x0150, B:140:0x030c, B:141:0x0313), top: B:164:0x0032 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x013a A[Catch: all -> 0x0111, Exception -> 0x0118, TryCatch #20 {Exception -> 0x0118, blocks: (B:22:0x006c, B:65:0x0121, B:67:0x0125, B:68:0x0127, B:69:0x0128, B:70:0x012f, B:74:0x0133, B:76:0x0137, B:77:0x0139, B:78:0x013a, B:79:0x0150, B:140:0x030c, B:141:0x0313), top: B:164:0x0032 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:78:0x013a, please report this as an issue */
    public final void writeOpenSSHv1PrivateKey(OutputStream outputStream, byte[] bArr, String str, int i) throws Throwable {
        Buffer buffer;
        Buffer buffer2;
        byte[] bArrQ;
        byte[] key;
        byte[] bArrL;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        int i2;
        Buffer buffer3;
        int tagSize;
        int i3;
        Cipher cipher;
        byte[] bArr6;
        byte[] bArr7;
        byte[] bArr8;
        byte[] bArr9;
        byte[] bArr10;
        byte[] bArr11 = bArr;
        byte[] bArr12 = n;
        if (bArr11 != null && bArr11.length == 0) {
            bArr11 = null;
        }
        String str2 = str == null ? "aes256-ctr" : str;
        byte[] publicKeyBlob = getPublicKeyBlob();
        if (publicKeyBlob == null) {
            e6.h("Unable to get public key blob");
            return;
        }
        int i4 = 0;
        Buffer buffer4 = new Buffer(0);
        if (this.h == null) {
            this.h = g();
        }
        try {
            bArrL = l();
            try {
                try {
                    if (bArrL == null) {
                        throw new JSchException("Unable to get private key blob");
                    }
                    if (bArr11 != null) {
                        try {
                            Cipher cipher2 = (Cipher) Class.forName(JSch.getConfig(str2)).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null);
                            try {
                                KDF kdf = (KDF) Class.forName(JSch.getConfig("bcrypt")).asSubclass(KDF.class).getDeclaredConstructor(null).newInstance(null);
                                Charset charset = StandardCharsets.UTF_8;
                                byte[] bytes = "bcrypt".getBytes(charset);
                                byte[] bArr13 = new byte[16];
                                i2 = 8;
                                this.h.fill(bArr13, 0, 16);
                                buffer3 = new Buffer(24);
                                buffer3.putString(bArr13, 0, 16);
                                buffer3.putInt(i);
                                kdf.initWithOpenSSHv1KDFOptions(buffer3.b);
                                byte[] bytes2 = str2.getBytes(charset);
                                int iVSize = cipher2.getIVSize();
                                tagSize = cipher2.getTagSize();
                                int blockSize = cipher2.getBlockSize();
                                bArr3 = new byte[blockSize];
                                try {
                                    int iVSize2 = cipher2.getIVSize();
                                    if (!cipher2.isChaCha20()) {
                                        if (cipher2.isAEAD()) {
                                            iVSize2 = 12;
                                        }
                                        i4 = iVSize2;
                                    }
                                    byte[] bArr14 = new byte[i4];
                                    try {
                                        key = kdf.getKey(bArr11, blockSize + i4);
                                        try {
                                            System.arraycopy(key, 0, bArr3, 0, blockSize);
                                            System.arraycopy(key, blockSize, bArr14, 0, i4);
                                            cipher2.init(0, bArr3, bArr14);
                                            i3 = iVSize;
                                            cipher = cipher2;
                                            bArr6 = bytes2;
                                            bArr7 = key;
                                            bArr8 = bArr14;
                                            bArr9 = bytes;
                                        } catch (Exception e) {
                                            e = e;
                                            bArr4 = bArr14;
                                            bArr5 = key;
                                            bArr2 = bArr3;
                                            buffer = null;
                                            buffer2 = null;
                                            bArrQ = null;
                                            try {
                                                if (e instanceof JSchException) {
                                                    throw new JSchException(e.toString(), e);
                                                }
                                                throw ((JSchException) e);
                                            } catch (Throwable th) {
                                                th = th;
                                                bArr3 = bArr2;
                                                key = bArr5;
                                                Util.e(key);
                                                Util.e(bArr3);
                                                Util.e(bArr4);
                                                Util.e(bArrL);
                                                if (buffer != null) {
                                                    Util.e(buffer.b);
                                                }
                                                if (buffer2 != null) {
                                                    Util.e(buffer2.b);
                                                }
                                                Util.e(bArrQ);
                                                throw th;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            bArr4 = bArr14;
                                            buffer = null;
                                            buffer2 = null;
                                            bArrQ = null;
                                            Util.e(key);
                                            Util.e(bArr3);
                                            Util.e(bArr4);
                                            Util.e(bArrL);
                                            if (buffer != null) {
                                                Util.e(buffer.b);
                                            }
                                            if (buffer2 != null) {
                                                Util.e(buffer2.b);
                                            }
                                            Util.e(bArrQ);
                                            throw th;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        bArr4 = bArr14;
                                        bArr2 = bArr3;
                                        buffer = null;
                                        buffer2 = null;
                                        bArrQ = null;
                                        bArr5 = null;
                                        if (e instanceof JSchException) {
                                            throw new JSchException(e.toString(), e);
                                        }
                                        throw ((JSchException) e);
                                    } catch (Throwable th3) {
                                        th = th3;
                                        bArr4 = bArr14;
                                        buffer = null;
                                        buffer2 = null;
                                        bArrQ = null;
                                        key = null;
                                        Util.e(key);
                                        Util.e(bArr3);
                                        Util.e(bArr4);
                                        Util.e(bArrL);
                                        if (buffer != null) {
                                            Util.e(buffer.b);
                                        }
                                        if (buffer2 != null) {
                                            Util.e(buffer2.b);
                                        }
                                        Util.e(bArrQ);
                                        throw th;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    bArr2 = bArr3;
                                    buffer = null;
                                    buffer2 = null;
                                    bArrQ = null;
                                    bArr4 = null;
                                    bArr5 = null;
                                    if (e instanceof JSchException) {
                                        throw new JSchException(e.toString(), e);
                                    }
                                    throw ((JSchException) e);
                                } catch (Throwable th4) {
                                    th = th4;
                                    buffer = null;
                                    buffer2 = null;
                                    bArrQ = null;
                                    key = null;
                                    bArr4 = null;
                                    Util.e(key);
                                    Util.e(bArr3);
                                    Util.e(bArr4);
                                    Util.e(bArrL);
                                    if (buffer != null) {
                                        Util.e(buffer.b);
                                    }
                                    if (buffer2 != null) {
                                        Util.e(buffer2.b);
                                    }
                                    Util.e(bArrQ);
                                    throw th;
                                }
                            } catch (Exception | LinkageError e4) {
                                if (!(e4 instanceof JSchException)) {
                                    throw new JSchException("kdf bcrypt is not available", e4);
                                }
                                throw ((JSchException) e4);
                            }
                        } catch (Exception e5) {
                            e = e5;
                            if (e instanceof JSchException) {
                                throw ((JSchException) e);
                            }
                            throw new JSchException("cipher " + str2 + " is not available", e);
                        } catch (LinkageError e6) {
                            e = e6;
                            if (e instanceof JSchException) {
                                throw ((JSchException) e);
                            }
                            throw new JSchException("cipher " + str2 + " is not available", e);
                        }
                    } else {
                        i2 = 8;
                        bArr9 = q;
                        i3 = 8;
                        bArr6 = bArr9;
                        buffer3 = buffer4;
                        bArr8 = null;
                        bArr7 = null;
                        cipher = null;
                        bArr3 = null;
                        tagSize = 0;
                    }
                    byte[] bArr15 = bArr11;
                    try {
                        byte[] bArr16 = new byte[4];
                        bArr10 = bArr8;
                        try {
                            bArr5 = bArr7;
                            try {
                                this.h.fill(bArr16, 0, 4);
                                int i5 = (bArr16[3] & 255) | ((bArr16[0] << 24) & (-16777216)) | ((bArr16[1] << 16) & 16711680) | ((bArr16[2] << 8) & 65280);
                                byte[] bArrP = Util.p(this.b, StandardCharsets.UTF_8);
                                if (bArrP == null) {
                                    bArrP = new byte[0];
                                }
                                Buffer buffer5 = new Buffer(bArrP.length + 4 + i2 + bArrL.length + i3 + tagSize);
                                try {
                                    buffer5.putInt(i5);
                                    buffer5.putInt(i5);
                                    buffer5.putByte(bArrL, 0, bArrL.length);
                                    buffer5.putString(bArrP, 0, bArrP.length);
                                    byte b = 1;
                                    while (buffer5.getLength() % i3 != 0) {
                                        buffer5.putByte(b);
                                        b = (byte) (b + 1);
                                    }
                                    if (bArr15 != null) {
                                        if (cipher.isChaCha20()) {
                                            cipher.update(0);
                                            cipher.doFinal(buffer5.b, -4, buffer5.getLength(), buffer5.b, 0);
                                        } else {
                                            Cipher cipher3 = cipher;
                                            boolean zIsAEAD = cipher3.isAEAD();
                                            byte[] bArr17 = buffer5.b;
                                            if (zIsAEAD) {
                                                cipher3.doFinal(bArr17, 0, buffer5.getLength(), buffer5.b, 0);
                                            } else {
                                                cipher3.update(bArr17, 0, buffer5.getLength(), buffer5.b, 0);
                                            }
                                        }
                                    }
                                    byte[] bArr18 = m;
                                    buffer2 = new Buffer(buffer5.getLength() + 4 + publicKeyBlob.length + 4 + buffer3.getLength() + 4 + bArr9.length + 4 + bArr6.length + 4 + bArr18.length + 4 + tagSize);
                                    try {
                                        buffer2.putByte(bArr18, 0, bArr18.length);
                                        buffer2.putString(bArr6, 0, bArr6.length);
                                        buffer2.putString(bArr9, 0, bArr9.length);
                                        buffer2.putString(buffer3.b);
                                        buffer2.putInt(1);
                                        buffer2.putString(publicKeyBlob, 0, publicKeyBlob.length);
                                        buffer2.putString(buffer5.b, 0, buffer5.getLength());
                                        buffer2.putByte(buffer5.b, buffer5.getLength(), tagSize);
                                        bArrQ = Util.q(buffer2.getLength(), true, buffer2.b);
                                        try {
                                            outputStream.write(o);
                                            outputStream.write(bArr12);
                                            int i6 = 0;
                                            while (i6 < bArrQ.length) {
                                                int i7 = i6 + 70;
                                                if (i7 >= bArrQ.length) {
                                                    outputStream.write(bArrQ, i6, bArrQ.length - i6);
                                                    outputStream.write(bArr12);
                                                    break;
                                                } else {
                                                    outputStream.write(bArrQ, i6, 70);
                                                    outputStream.write(bArr12);
                                                    i6 = i7;
                                                }
                                            }
                                            outputStream.write(p);
                                            outputStream.write(bArr12);
                                            Util.e(bArr5);
                                            Util.e(bArr3);
                                            Util.e(bArr10);
                                            Util.e(bArrL);
                                            Util.e(buffer5.b);
                                            Util.e(buffer2.b);
                                            Util.e(bArrQ);
                                        } catch (Exception e7) {
                                            e = e7;
                                            bArr4 = bArr10;
                                            buffer = buffer5;
                                            bArr2 = bArr3;
                                            if (e instanceof JSchException) {
                                                throw new JSchException(e.toString(), e);
                                            }
                                            throw ((JSchException) e);
                                        } catch (Throwable th5) {
                                            th = th5;
                                            bArr4 = bArr10;
                                            buffer = buffer5;
                                            key = bArr5;
                                            Util.e(key);
                                            Util.e(bArr3);
                                            Util.e(bArr4);
                                            Util.e(bArrL);
                                            if (buffer != null) {
                                                Util.e(buffer.b);
                                            }
                                            if (buffer2 != null) {
                                                Util.e(buffer2.b);
                                            }
                                            Util.e(bArrQ);
                                            throw th;
                                        }
                                    } catch (Exception e8) {
                                        e = e8;
                                        bArr4 = bArr10;
                                        buffer = buffer5;
                                        bArr2 = bArr3;
                                        bArrQ = null;
                                        if (e instanceof JSchException) {
                                            throw new JSchException(e.toString(), e);
                                        }
                                        throw ((JSchException) e);
                                    } catch (Throwable th6) {
                                        th = th6;
                                        bArr4 = bArr10;
                                        buffer = buffer5;
                                        key = bArr5;
                                        bArrQ = null;
                                        Util.e(key);
                                        Util.e(bArr3);
                                        Util.e(bArr4);
                                        Util.e(bArrL);
                                        if (buffer != null) {
                                            Util.e(buffer.b);
                                        }
                                        if (buffer2 != null) {
                                            Util.e(buffer2.b);
                                        }
                                        Util.e(bArrQ);
                                        throw th;
                                    }
                                } catch (Exception e9) {
                                    e = e9;
                                    bArr4 = bArr10;
                                    buffer = buffer5;
                                    bArr2 = bArr3;
                                    buffer2 = null;
                                    bArrQ = null;
                                    if (e instanceof JSchException) {
                                        throw new JSchException(e.toString(), e);
                                    }
                                    throw ((JSchException) e);
                                } catch (Throwable th7) {
                                    th = th7;
                                    bArr4 = bArr10;
                                    buffer = buffer5;
                                    key = bArr5;
                                    buffer2 = null;
                                    bArrQ = null;
                                    Util.e(key);
                                    Util.e(bArr3);
                                    Util.e(bArr4);
                                    Util.e(bArrL);
                                    if (buffer != null) {
                                        Util.e(buffer.b);
                                    }
                                    if (buffer2 != null) {
                                        Util.e(buffer2.b);
                                    }
                                    Util.e(bArrQ);
                                    throw th;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                bArr4 = bArr10;
                                bArr2 = bArr3;
                                buffer = null;
                                buffer2 = null;
                                bArrQ = null;
                                if (e instanceof JSchException) {
                                    throw new JSchException(e.toString(), e);
                                }
                                throw ((JSchException) e);
                            } catch (Throwable th8) {
                                th = th8;
                                bArr4 = bArr10;
                                key = bArr5;
                                buffer = null;
                                buffer2 = null;
                                bArrQ = null;
                                Util.e(key);
                                Util.e(bArr3);
                                Util.e(bArr4);
                                Util.e(bArrL);
                                if (buffer != null) {
                                    Util.e(buffer.b);
                                }
                                if (buffer2 != null) {
                                    Util.e(buffer2.b);
                                }
                                Util.e(bArrQ);
                                throw th;
                            }
                        } catch (Exception e11) {
                            e = e11;
                            bArr5 = bArr7;
                            bArr4 = bArr10;
                            bArr2 = bArr3;
                            buffer = null;
                            buffer2 = null;
                            bArrQ = null;
                            if (e instanceof JSchException) {
                                throw new JSchException(e.toString(), e);
                            }
                            throw ((JSchException) e);
                        } catch (Throwable th9) {
                            th = th9;
                            bArr5 = bArr7;
                            bArr4 = bArr10;
                            key = bArr5;
                            buffer = null;
                            buffer2 = null;
                            bArrQ = null;
                            Util.e(key);
                            Util.e(bArr3);
                            Util.e(bArr4);
                            Util.e(bArrL);
                            if (buffer != null) {
                                Util.e(buffer.b);
                            }
                            if (buffer2 != null) {
                                Util.e(buffer2.b);
                            }
                            Util.e(bArrQ);
                            throw th;
                        }
                    } catch (Exception e12) {
                        e = e12;
                        bArr10 = bArr8;
                    } catch (Throwable th10) {
                        th = th10;
                        bArr10 = bArr8;
                    }
                } catch (Exception e13) {
                    e = e13;
                    buffer = null;
                    buffer2 = null;
                    bArrQ = null;
                    bArr2 = null;
                }
            } catch (Throwable th11) {
                th = th11;
                buffer = null;
                buffer2 = null;
                bArrQ = null;
                key = null;
                bArr3 = null;
                bArr4 = null;
                Util.e(key);
                Util.e(bArr3);
                Util.e(bArr4);
                Util.e(bArrL);
                if (buffer != null) {
                    Util.e(buffer.b);
                }
                if (buffer2 != null) {
                    Util.e(buffer2.b);
                }
                Util.e(bArrQ);
                throw th;
            }
        } catch (Exception e14) {
            e = e14;
            buffer = null;
            buffer2 = null;
            bArrQ = null;
            bArr2 = null;
            bArrL = null;
        } catch (Throwable th12) {
            th = th12;
            buffer = null;
            buffer2 = null;
            bArrQ = null;
            key = null;
            bArrL = null;
        }
    }

    public final void writePrivateKey(OutputStream outputStream, byte[] bArr) {
        byte[] bArr2;
        byte[] bArr3 = n;
        byte[] bArrM = m();
        byte[][] bArr4 = new byte[1][];
        JSch.InstanceLogger instanceLogger = this.c;
        int i = 0;
        if (bArr == null) {
            bArr2 = bArrM;
        } else {
            if (this.d == null) {
                this.d = d();
            }
            int iVSize = this.d.getIVSize();
            byte[] bArr5 = new byte[iVSize];
            bArr4[0] = bArr5;
            if (this.h == null) {
                this.h = g();
            }
            this.h.fill(bArr5, 0, iVSize);
            byte[] bArrF = f(bArr, bArr5);
            int iVSize2 = this.d.getIVSize();
            int length = ((bArrM.length / iVSize2) + 1) * iVSize2;
            bArr2 = new byte[length];
            System.arraycopy(bArrM, 0, bArr2, 0, bArrM.length);
            int length2 = iVSize2 - (bArrM.length % iVSize2);
            for (int i2 = length - 1; length - length2 <= i2; i2--) {
                bArr2[i2] = (byte) length2;
            }
            try {
                this.d.init(0, bArrF, bArr5);
                this.d.update(bArr2, 0, length, bArr2, 0);
            } catch (Exception e) {
                if (instanceLogger.a().isEnabled(3)) {
                    instanceLogger.a().log(3, "failed to encrypt key", e);
                }
            }
            Util.e(bArrF);
        }
        if (bArr2 != bArrM) {
            Util.e(bArrM);
        }
        byte[] bArr6 = bArr4[0];
        byte[] bArrQ = Util.q(bArr2.length, true, bArr2);
        try {
            outputStream.write(i());
            outputStream.write(bArr3);
            if (bArr != null) {
                byte[][] bArr7 = r;
                outputStream.write(bArr7[0]);
                outputStream.write(bArr3);
                outputStream.write(bArr7[1]);
                for (int i3 = 0; i3 < bArr6.length; i3++) {
                    byte b = (byte) ((bArr6[i3] >>> 4) & 15);
                    outputStream.write((byte) ((b < 0 || b > 9) ? b + 55 : b + 48));
                    byte b2 = (byte) (bArr6[i3] & 15);
                    outputStream.write((byte) ((b2 < 0 || b2 > 9) ? b2 + 55 : b2 + 48));
                }
                outputStream.write(bArr3);
                outputStream.write(bArr3);
            }
            while (i < bArrQ.length) {
                int i4 = i + 64;
                if (i4 >= bArrQ.length) {
                    outputStream.write(bArrQ, i, bArrQ.length - i);
                    outputStream.write(bArr3);
                    break;
                } else {
                    outputStream.write(bArrQ, i, 64);
                    outputStream.write(bArr3);
                    i = i4;
                }
            }
            outputStream.write(j());
            outputStream.write(bArr3);
        } catch (Exception e2) {
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to write private key", e2);
            }
        }
    }

    public final void writePublicKey(OutputStream outputStream, String str) {
        byte[] publicKeyBlob = getPublicKeyBlob();
        byte[] bArrQ = Util.q(publicKeyBlob.length, true, publicKeyBlob);
        try {
            outputStream.write(k());
            byte[] bArr = s;
            outputStream.write(bArr);
            outputStream.write(bArrQ, 0, bArrQ.length);
            outputStream.write(bArr);
            outputStream.write(Util.p(str, StandardCharsets.UTF_8));
            outputStream.write(n);
        } catch (Exception e) {
            JSch.InstanceLogger instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to write public key", e);
            }
        }
    }

    public final void writeSECSHPublicKey(OutputStream outputStream, String str) {
        byte[] bArr = n;
        byte[] publicKeyBlob = getPublicKeyBlob();
        byte[] bArrQ = Util.q(publicKeyBlob.length, true, publicKeyBlob);
        try {
            Charset charset = StandardCharsets.UTF_8;
            outputStream.write("---- BEGIN SSH2 PUBLIC KEY ----".getBytes(charset));
            outputStream.write(bArr);
            outputStream.write(("Comment: \"" + str + "\"").getBytes(charset));
            outputStream.write(bArr);
            int i = 0;
            while (i < bArrQ.length) {
                int length = 70;
                if (bArrQ.length - i < 70) {
                    length = bArrQ.length - i;
                }
                outputStream.write(bArrQ, i, length);
                outputStream.write(bArr);
                i += length;
            }
            outputStream.write("---- END SSH2 PUBLIC KEY ----".getBytes(StandardCharsets.UTF_8));
            outputStream.write(bArr);
        } catch (Exception e) {
            JSch.InstanceLogger instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to write public key", e);
            }
        }
    }

    @Deprecated
    public final void setPassphrase(byte[] bArr) {
        throw new UnsupportedOperationException("deprecated");
    }

    public void dispose() {
    }

    public static KeyPair load(JSch jSch, String str, String str2) throws JSchException {
        return o(jSch.a, str, str2);
    }

    public static KeyPair load(JSch jSch, byte[] bArr, byte[] bArr2) throws JSchException {
        return p(jSch.a, bArr, bArr2);
    }

    @Deprecated
    public final boolean decrypt(String str) {
        if (str != null && str.length() != 0) {
            byte[] bArr = Util.a;
            return decrypt(Util.p(str, StandardCharsets.UTF_8));
        }
        return !this.i;
    }

    public static KeyPair genKeyPair(JSch jSch, int i) throws JSchException {
        return genKeyPair(jSch, i, 1024);
    }

    public final void writePublicKey(String str, String str2) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            writePublicKey(fileOutputStream, str2);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void writeSECSHPublicKey(String str, String str2) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            writeSECSHPublicKey(fileOutputStream, str2);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void writePrivateKey(OutputStream outputStream) {
        writePrivateKey(outputStream, (byte[]) null);
    }

    public final void writePrivateKey(String str) throws IOException {
        writePrivateKey(str, (byte[]) null);
    }

    public final void writePrivateKey(String str, byte[] bArr) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            writePrivateKey(fileOutputStream, bArr);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void writeOpenSSHv1PrivateKey(OutputStream outputStream, byte[] bArr, String str) throws Throwable {
        writeOpenSSHv1PrivateKey(outputStream, bArr, str, 16);
    }

    public final void writeOpenSSHv1PrivateKey(OutputStream outputStream, byte[] bArr, int i) throws Throwable {
        writeOpenSSHv1PrivateKey(outputStream, bArr, (String) null, i);
    }

    public final void writeOpenSSHv1PrivateKey(OutputStream outputStream, byte[] bArr) throws Throwable {
        writeOpenSSHv1PrivateKey(outputStream, bArr, (String) null, 16);
    }

    public final void writeOpenSSHv1PrivateKey(String str) throws IOException, JSchException {
        writeOpenSSHv1PrivateKey(str, (byte[]) null);
    }

    public final void writeOpenSSHv1PrivateKey(String str, byte[] bArr) throws IOException, JSchException {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            writeOpenSSHv1PrivateKey(fileOutputStream, bArr);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void writeOpenSSHv1PrivateKey(String str, byte[] bArr, int i) throws IOException, JSchException {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            writeOpenSSHv1PrivateKey(fileOutputStream, bArr, (String) null, i);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void writeOpenSSHv1PrivateKey(String str, byte[] bArr, String str2) throws IOException, JSchException {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            writeOpenSSHv1PrivateKey(fileOutputStream, bArr, str2);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void writeOpenSSHv1PrivateKey(String str, byte[] bArr, String str2, int i) throws IOException, JSchException {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            writeOpenSSHv1PrivateKey(fileOutputStream, bArr, str2, i);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
