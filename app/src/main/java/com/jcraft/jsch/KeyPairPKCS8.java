package com.jcraft.jsch;

import com.jcraft.jsch.asn1.ASN1;
import com.jcraft.jsch.asn1.ASN1Exception;
import defpackage.e6;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class KeyPairPKCS8 extends KeyPair {
    public static final byte[] S;
    public static final byte[] T;
    public KeyPair t;
    public static final byte[] u = {42, -122, 72, -122, -9, 13, 1, 1, 1};
    public static final byte[] v = {42, -122, 72, -50, 56, 4, 1};
    public static final byte[] w = {42, -122, 72, -50, 61, 2, 1};
    public static final byte[] x = {43, 101, 112};
    public static final byte[] y = {43, 101, 113};
    public static final byte[] z = {42, -122, 72, -50, 61, 3, 1, 7};
    public static final byte[] A = {43, -127, 4, 0, 34};
    public static final byte[] B = {43, -127, 4, 0, 35};
    public static final byte[] C = {42, -122, 72, -122, -9, 13, 1, 5, 13};
    public static final byte[] D = {42, -122, 72, -122, -9, 13, 1, 5, 12};
    public static final byte[] E = {43, 6, 1, 4, 1, -38, 71, 4, 11};
    public static final byte[] F = {96, -122, 72, 1, 101, 3, 4, 1, 2};
    public static final byte[] G = {96, -122, 72, 1, 101, 3, 4, 1, 22};
    public static final byte[] H = {96, -122, 72, 1, 101, 3, 4, 1, 42};
    public static final byte[] I = {43, 14, 3, 2, 7};
    public static final byte[] J = {42, -122, 72, -122, -9, 13, 3, 7};
    public static final byte[] K = {42, -122, 72, -122, -9, 13, 3, 2};
    public static final byte[] L = {42, -122, 72, -122, -9, 13, 3, 9};
    public static final byte[] M = {42, -122, 72, -122, -9, 13, 1, 5, 1};
    public static final byte[] N = {42, -122, 72, -122, -9, 13, 1, 5, 4};
    public static final byte[] O = {42, -122, 72, -122, -9, 13, 1, 5, 3};
    public static final byte[] P = {42, -122, 72, -122, -9, 13, 1, 5, 6};
    public static final byte[] Q = {42, -122, 72, -122, -9, 13, 1, 5, 10};
    public static final byte[] R = {42, -122, 72, -122, -9, 13, 1, 5, 11};

    static {
        byte[] bArr = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        S = Util.p("-----BEGIN DSA PRIVATE KEY-----", charset);
        T = Util.p("-----END DSA PRIVATE KEY-----", charset);
    }

    public KeyPairPKCS8(JSch.InstanceLogger instanceLogger) {
        super(instanceLogger);
        this.t = null;
    }

    public static Cipher y(byte[] bArr, ASN1 asn1, byte[][] bArr2) throws JSchException, ASN1Exception {
        String str;
        if (Util.a(bArr, F)) {
            str = "aes128-cbc";
        } else if (Util.a(bArr, G)) {
            str = "aes192-cbc";
        } else if (Util.a(bArr, H)) {
            str = "aes256-cbc";
        } else {
            if (Util.a(bArr, I)) {
                e6.h("unsupported cipher function: des-cbc");
                return null;
            }
            if (Util.a(bArr, J)) {
                e6.h("unsupported cipher function: 3des-cbc");
                return null;
            }
            if (Util.a(bArr, K)) {
                e6.h("unsupported cipher function: rc2-cbc");
                return null;
            }
            if (Util.a(bArr, L)) {
                e6.h("unsupported cipher function: rc5-cbc");
                return null;
            }
            str = null;
        }
        if (str == null) {
            throw new JSchException("unsupported cipher function oid: ".concat(Util.r(bArr)));
        }
        if (!asn1.isOCTETSTRING()) {
            throw new ASN1Exception();
        }
        bArr2[0] = asn1.getContent();
        try {
            return (Cipher) Class.forName(JSch.getConfig(str)).asSubclass(Cipher.class).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception | LinkageError e) {
            throw new JSchException(str.concat(" is not supported"), e);
        }
    }

    public static KDF z(String str) throws JSchException {
        try {
            return (KDF) Class.forName(JSch.getConfig(str)).asSubclass(KDF.class).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception | LinkageError e) {
            throw new JSchException(str.concat(" is not supported"), e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:152:0x023a A[Catch: all -> 0x0252, TRY_LEAVE, TryCatch #9 {all -> 0x0252, blocks: (B:150:0x0230, B:152:0x023a), top: B:170:0x0230 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:152:0x023a, please report this as an issue */
    @Override // com.jcraft.jsch.KeyPair
    public final boolean decrypt(byte[] bArr) throws Throwable {
        byte[] key;
        byte[] bArr2;
        byte[] bArr3;
        String strConcat;
        String str;
        KDF kdfZ;
        JSch.InstanceLogger instanceLogger = this.c;
        boolean z2 = this.i;
        if (!z2) {
            return true;
        }
        if (bArr == null) {
            return !z2;
        }
        byte[] bArr4 = null;
        try {
            ASN1 asn1 = new ASN1(this.j);
            if (!asn1.isSEQUENCE()) {
                throw new ASN1Exception();
            }
            ASN1[] contents = asn1.getContents();
            if (contents.length != 2) {
                throw new ASN1Exception();
            }
            if (!contents[0].isSEQUENCE()) {
                throw new ASN1Exception();
            }
            if (!contents[1].isOCTETSTRING()) {
                throw new ASN1Exception();
            }
            byte[] content = contents[1].getContent();
            try {
                ASN1[] contents2 = contents[0].getContents();
                if (contents2.length != 2) {
                    throw new ASN1Exception();
                }
                if (!contents2[0].isOBJECT()) {
                    throw new ASN1Exception();
                }
                if (!contents2[1].isSEQUENCE()) {
                    throw new ASN1Exception();
                }
                byte[] content2 = contents2[0].getContent();
                ASN1 asn2 = contents2[1];
                if (!Util.a(content2, C)) {
                    if (Util.a(content2, M)) {
                        strConcat = "pbeWithMD2AndDES-CBC unsupported";
                    } else if (Util.a(content2, N)) {
                        strConcat = "pbeWithMD2AndRC2-CBC unsupported";
                    } else if (Util.a(content2, O)) {
                        strConcat = "pbeWithMD5AndDES-CBC unsupported";
                    } else if (Util.a(content2, P)) {
                        strConcat = "pbeWithMD5AndRC2-CBC unsupported";
                    } else if (Util.a(content2, Q)) {
                        strConcat = "pbeWithSHA1AndDES-CBC unsupported";
                    } else {
                        strConcat = Util.a(content2, R) ? "pbeWithSHA1AndRC2-CBC unsupported" : "unsupported encryption oid: ".concat(Util.r(content2));
                    }
                    throw new JSchException(strConcat);
                }
                ASN1[] contents3 = asn2.getContents();
                if (contents3.length != 2) {
                    throw new ASN1Exception();
                }
                ASN1 asn3 = contents3[0];
                ASN1 asn4 = contents3[1];
                if (!asn3.isSEQUENCE()) {
                    throw new ASN1Exception();
                }
                if (!asn4.isSEQUENCE()) {
                    throw new ASN1Exception();
                }
                ASN1[] contents4 = asn4.getContents();
                if (contents4.length != 2) {
                    throw new ASN1Exception();
                }
                if (!contents4[0].isOBJECT()) {
                    throw new ASN1Exception();
                }
                byte[] content3 = contents4[0].getContent();
                ASN1 asn5 = contents4[1];
                ASN1[] contents5 = asn3.getContents();
                if (contents5.length != 2) {
                    throw new ASN1Exception();
                }
                if (!contents5[0].isOBJECT()) {
                    throw new ASN1Exception();
                }
                if (!contents5[1].isSEQUENCE()) {
                    throw new ASN1Exception();
                }
                byte[] content4 = contents5[0].getContent();
                if (Util.a(content4, D)) {
                    str = "pbkdf2";
                    kdfZ = z("pbkdf2");
                    kdfZ.initWithASN1(contents5[1].getRaw());
                } else {
                    if (!Util.a(content4, E)) {
                        throw new JSchException("unsupported kdf oid: ".concat(Util.r(content4)));
                    }
                    str = "scrypt";
                    kdfZ = z("scrypt");
                    kdfZ.initWithASN1(contents5[1].getRaw());
                }
                byte[][] bArr5 = new byte[1][];
                Cipher cipherY = y(content3, asn5, bArr5);
                byte[] bArr6 = bArr5[0];
                key = kdfZ.getKey(bArr, cipherY.getBlockSize());
                try {
                    if (key == null) {
                        throw new JSchException("failed to generate key from KDF ".concat(str));
                    }
                    cipherY.init(1, key, bArr6);
                    bArr2 = new byte[content.length];
                    try {
                        try {
                            cipherY.update(content, 0, content.length, bArr2, 0);
                            if (!s(bArr2)) {
                                throw new JSchException("failed to parse decrypted key");
                            }
                            this.i = false;
                            Util.e(this.j);
                            Util.e(content);
                            Util.e(key);
                            Util.e(bArr2);
                            return true;
                        } catch (ASN1Exception e) {
                            e = e;
                            bArr4 = bArr2;
                            bArr3 = bArr4;
                            bArr4 = content;
                            try {
                                if (instanceLogger.a().isEnabled(3)) {
                                    instanceLogger.a().log(3, "PKCS8: failed to decrypt key: ASN1 parsing error", e);
                                }
                                Util.e(bArr4);
                                Util.e(key);
                                Util.e(bArr3);
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                bArr2 = bArr3;
                                Util.e(bArr4);
                                Util.e(key);
                                Util.e(bArr2);
                                throw th;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            bArr4 = bArr2;
                            bArr2 = bArr4;
                            bArr4 = content;
                            try {
                                if (instanceLogger.a().isEnabled(3)) {
                                    instanceLogger.a().log(3, "PKCS8: failed to decrypt key: " + e.getMessage(), e);
                                }
                                Util.e(bArr4);
                                Util.e(key);
                                Util.e(bArr2);
                                return false;
                            } catch (Throwable th2) {
                                th = th2;
                                Util.e(bArr4);
                                Util.e(key);
                                Util.e(bArr2);
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            bArr4 = bArr2;
                            bArr2 = bArr4;
                            bArr4 = content;
                            Util.e(bArr4);
                            Util.e(key);
                            Util.e(bArr2);
                            throw th;
                        }
                    } catch (ASN1Exception e3) {
                        e = e3;
                        bArr4 = bArr2;
                    } catch (Exception e4) {
                        e = e4;
                        bArr4 = content;
                        if (instanceLogger.a().isEnabled(3)) {
                            instanceLogger.a().log(3, "PKCS8: failed to decrypt key: " + e.getMessage(), e);
                        }
                        Util.e(bArr4);
                        Util.e(key);
                        Util.e(bArr2);
                        return false;
                    } catch (Throwable th4) {
                        th = th4;
                        bArr4 = content;
                        Util.e(bArr4);
                        Util.e(key);
                        Util.e(bArr2);
                        throw th;
                    }
                } catch (ASN1Exception e5) {
                    e = e5;
                } catch (Exception e6) {
                    e = e6;
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (ASN1Exception e7) {
                e = e7;
                key = null;
                bArr3 = null;
            } catch (Exception e8) {
                e = e8;
                key = null;
                bArr2 = null;
            } catch (Throwable th6) {
                th = th6;
                key = null;
                bArr2 = null;
            }
        } catch (ASN1Exception e9) {
            e = e9;
            key = null;
            bArr3 = null;
        } catch (Exception e10) {
            e = e10;
            key = null;
            bArr2 = null;
        } catch (Throwable th7) {
            th = th7;
            key = null;
            bArr2 = null;
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] forSSHAgent() throws JSchException {
        return this.t.forSSHAgent();
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeySize() {
        return this.t.getKeySize();
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeyType() {
        KeyPair keyPair = this.t;
        if (keyPair != null) {
            return keyPair.getKeyType();
        }
        return 4;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getPublicKeyBlob() {
        KeyPair keyPair = this.t;
        return keyPair != null ? keyPair.getPublicKeyBlob() : this.l;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getSignature(byte[] bArr) {
        return this.t.getSignature(bArr);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final Signature getVerifier() {
        return this.t.getVerifier();
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] i() {
        return S;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] j() {
        return T;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] k() {
        KeyPair keyPair = this.t;
        return keyPair != null ? keyPair.k() : new byte[0];
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] l() {
        KeyPair keyPair = this.t;
        if (keyPair != null) {
            return keyPair.l();
        }
        return null;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] m() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:310:0x04d1 A[Catch: all -> 0x04e9, TRY_LEAVE, TryCatch #5 {all -> 0x04e9, blocks: (B:308:0x04c7, B:310:0x04d1), top: B:331:0x04c7 }] */
    /* JADX WARN: Code duplicated, block: B:316:0x04f6 A[PHI: r12
      0x04f6: PHI (r12v5 com.jcraft.jsch.KeyPair) = (r12v3 com.jcraft.jsch.KeyPair), (r12v6 com.jcraft.jsch.KeyPair) binds: [B:315:0x04f4, B:324:0x051a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:319:0x0504 A[Catch: all -> 0x050e, TRY_LEAVE, TryCatch #21 {all -> 0x050e, blocks: (B:317:0x04fa, B:319:0x0504), top: B:333:0x04fa }] */
    /* JADX WARN: Code duplicated, block: B:329:0x0529  */
    /* JADX WARN: Instruction removed from duplicated block: B:310:0x04d1, please report this as an issue */
    @Override // com.jcraft.jsch.KeyPair
    public final boolean s(byte[] bArr) throws Throwable {
        byte[] bArr2;
        KeyPair keyPairECDSA;
        byte[] content;
        byte[] bArr3;
        byte[] bytes;
        ASN1 asn1;
        byte[] content2;
        byte[] bArr4;
        JSch.InstanceLogger instanceLogger = this.c;
        byte[] bArr5 = null;
        try {
            ASN1 asn2 = new ASN1(bArr);
            if (!asn2.isSEQUENCE()) {
                throw new ASN1Exception();
            }
            ASN1[] contents = asn2.getContents();
            if (contents.length < 3 || contents.length > 4) {
                throw new ASN1Exception();
            }
            if (!contents[0].isINTEGER()) {
                throw new ASN1Exception();
            }
            if (!contents[1].isSEQUENCE()) {
                throw new ASN1Exception();
            }
            if (!contents[2].isOCTETSTRING()) {
                throw new ASN1Exception();
            }
            if (contents.length > 3 && !contents[3].isCONTEXTCONSTRUCTED(0)) {
                throw new ASN1Exception();
            }
            if (ASN1.parseASN1IntegerAsInt(contents[0].getContent()) != 0) {
                throw new ASN1Exception();
            }
            ASN1 asn3 = contents[1];
            ASN1 asn4 = contents[2];
            ASN1[] contents2 = asn3.getContents();
            if (contents2.length == 0) {
                throw new ASN1Exception();
            }
            if (!contents2[0].isOBJECT()) {
                throw new ASN1Exception();
            }
            byte[] content3 = contents2[0].getContent();
            byte[] content4 = asn4.getContent();
            try {
                if (Util.a(content3, u)) {
                    if (contents2.length != 2) {
                        throw new ASN1Exception();
                    }
                    if (!contents2[1].isNULL()) {
                        throw new ASN1Exception();
                    }
                    KeyPairRSA keyPairRSA = new KeyPairRSA(instanceLogger);
                    keyPairRSA.a(this);
                    if (!keyPairRSA.s(content4)) {
                        throw new JSchException("failed to parse RSA");
                    }
                    this.t = keyPairRSA;
                    Util.e(content4);
                    return true;
                }
                if (!Util.a(content3, v)) {
                    if (!Util.a(content3, w)) {
                        byte[] bArr6 = x;
                        if (!Util.a(content3, bArr6) && !Util.a(content3, y)) {
                            throw new JSchException("unsupported privateKeyAlgorithm oid: ".concat(Util.r(content3)));
                        }
                        if (contents2.length != 1) {
                            throw new ASN1Exception();
                        }
                        ASN1 asn5 = new ASN1(content4);
                        if (!asn5.isOCTETSTRING()) {
                            throw new ASN1Exception();
                        }
                        byte[] content5 = asn5.getContent();
                        try {
                            KeyPair keyPairEd25519 = Util.a(content3, bArr6) ? new KeyPairEd25519(instanceLogger) : new KeyPairEd448(instanceLogger);
                            keyPairEd25519.a(this);
                            if (!keyPairEd25519.s(content5)) {
                                throw new JSchException("failed to parse EdDSA");
                            }
                            this.t = keyPairEd25519;
                            Util.e(content4);
                            Util.e(content5);
                            return true;
                        } catch (ASN1Exception e) {
                            e = e;
                            content = content5;
                            bArr3 = null;
                            keyPairECDSA = null;
                            bArr5 = content4;
                            if (instanceLogger.a().isEnabled(3)) {
                                instanceLogger.a().log(3, "PKCS8: failed to parse key: ASN1 parsing error", e);
                            }
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr3);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            return false;
                        } catch (Exception e2) {
                            e = e2;
                            content = content5;
                            bArr2 = null;
                            keyPairECDSA = null;
                            bArr5 = content4;
                            if (instanceLogger.a().isEnabled(3)) {
                                instanceLogger.a().log(3, "PKCS8: failed to parse key: " + e.getMessage(), e);
                            }
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr2);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            content = content5;
                            bArr2 = null;
                            keyPairECDSA = null;
                            bArr5 = content4;
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr2);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            throw th;
                        }
                    }
                    if (contents2.length != 2) {
                        throw new ASN1Exception();
                    }
                    if (!contents2[1].isOBJECT()) {
                        throw new ASN1Exception();
                    }
                    byte[] content6 = contents2[1].getContent();
                    if (!Util.a(content6, z)) {
                        bytes = "nistp256".getBytes(StandardCharsets.UTF_8);
                    } else if (!Util.a(content6, A)) {
                        bytes = "nistp384".getBytes(StandardCharsets.UTF_8);
                    } else {
                        if (Util.a(content6, B)) {
                            throw new JSchException("unsupported named curve oid: ".concat(Util.r(content6)));
                        }
                        bytes = "nistp521".getBytes(StandardCharsets.UTF_8);
                    }
                    byte[] bArr7 = bytes;
                    ASN1 asn6 = new ASN1(content4);
                    if (!asn6.isSEQUENCE()) {
                        throw new ASN1Exception();
                    }
                    ASN1[] contents3 = asn6.getContents();
                    if (contents3.length < 3 || contents3.length > 4) {
                        throw new ASN1Exception();
                    }
                    if (!contents3[0].isINTEGER()) {
                        throw new ASN1Exception();
                    }
                    if (!contents3[1].isOCTETSTRING()) {
                        throw new ASN1Exception();
                    }
                    if (ASN1.parseASN1IntegerAsInt(contents3[0].getContent()) != 1) {
                        throw new ASN1Exception();
                    }
                    content = contents3[1].getContent();
                    try {
                        if (contents3.length == 3) {
                            asn1 = contents3[2];
                        } else {
                            ASN1 asn7 = contents3[3];
                            if (!contents3[2].isCONTEXTCONSTRUCTED(0)) {
                                throw new ASN1Exception();
                            }
                            ASN1[] contents4 = contents3[2].getContents();
                            if (contents4.length != 1) {
                                throw new ASN1Exception();
                            }
                            if (!contents4[0].isOBJECT()) {
                                throw new ASN1Exception();
                            }
                            if (!Util.a(contents4[0].getContent(), content6)) {
                                throw new ASN1Exception();
                            }
                            asn1 = asn7;
                        }
                        if (!asn1.isCONTEXTCONSTRUCTED(1)) {
                            throw new ASN1Exception();
                        }
                        ASN1[] contents5 = asn1.getContents();
                        if (contents5.length != 1) {
                            throw new ASN1Exception();
                        }
                        if (!contents5[0].isBITSTRING()) {
                            throw new ASN1Exception();
                        }
                        byte[][] bArrY = KeyPairECDSA.y(contents5[0].getContent());
                        keyPairECDSA = new KeyPairECDSA(this.c, bArr7, bArrY[0], bArrY[1], content);
                        try {
                            byte[] bArrM = keyPairECDSA.m();
                            KeyPairECDSA keyPairECDSA2 = new KeyPairECDSA(instanceLogger);
                            keyPairECDSA2.a(this);
                            if (!keyPairECDSA2.s(bArrM)) {
                                throw new JSchException("failed to parse ECDSA");
                            }
                            this.t = keyPairECDSA2;
                            Util.e(content4);
                            Util.e(content);
                            Util.e(bArrM);
                            keyPairECDSA.dispose();
                            return true;
                        } catch (ASN1Exception e3) {
                            e = e3;
                            bArr3 = null;
                            bArr5 = content4;
                            if (instanceLogger.a().isEnabled(3)) {
                                instanceLogger.a().log(3, "PKCS8: failed to parse key: ASN1 parsing error", e);
                            }
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr3);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            return false;
                        } catch (Exception e4) {
                            e = e4;
                            bArr2 = null;
                            bArr5 = content4;
                            if (instanceLogger.a().isEnabled(3)) {
                                instanceLogger.a().log(3, "PKCS8: failed to parse key: " + e.getMessage(), e);
                            }
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr2);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            return false;
                        } catch (Throwable th2) {
                            th = th2;
                            bArr2 = null;
                            bArr5 = content4;
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr2);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            throw th;
                        }
                    } catch (ASN1Exception e5) {
                        e = e5;
                        bArr3 = null;
                        keyPairECDSA = null;
                        bArr5 = content4;
                        if (instanceLogger.a().isEnabled(3)) {
                            instanceLogger.a().log(3, "PKCS8: failed to parse key: ASN1 parsing error", e);
                        }
                        Util.e(bArr5);
                        Util.e(content);
                        Util.e(bArr3);
                        if (keyPairECDSA != null) {
                            keyPairECDSA.dispose();
                        }
                        return false;
                    } catch (Exception e6) {
                        e = e6;
                        bArr2 = null;
                        keyPairECDSA = null;
                        bArr5 = content4;
                        if (instanceLogger.a().isEnabled(3)) {
                            instanceLogger.a().log(3, "PKCS8: failed to parse key: " + e.getMessage(), e);
                        }
                        Util.e(bArr5);
                        Util.e(content);
                        Util.e(bArr2);
                        if (keyPairECDSA != null) {
                            keyPairECDSA.dispose();
                        }
                        return false;
                    } catch (Throwable th3) {
                        th = th3;
                        bArr2 = null;
                        keyPairECDSA = null;
                        bArr5 = content4;
                        Util.e(bArr5);
                        Util.e(content);
                        Util.e(bArr2);
                        if (keyPairECDSA != null) {
                            keyPairECDSA.dispose();
                        }
                        throw th;
                    }
                    return false;
                }
                ArrayList arrayList = new ArrayList(3);
                if (contents2.length > 1 && contents2[1].isSEQUENCE()) {
                    ASN1[] contents6 = contents2[1].getContents();
                    if (contents6.length != 3) {
                        throw new ASN1Exception();
                    }
                    if (!contents6[0].isINTEGER()) {
                        throw new ASN1Exception();
                    }
                    if (!contents6[1].isINTEGER()) {
                        throw new ASN1Exception();
                    }
                    if (!contents6[2].isINTEGER()) {
                        throw new ASN1Exception();
                    }
                    arrayList.add(contents6[0].getContent());
                    arrayList.add(contents6[1].getContent());
                    arrayList.add(contents6[2].getContent());
                }
                ASN1 asn8 = new ASN1(content4);
                if (arrayList.size() == 0) {
                    if (!asn8.isSEQUENCE()) {
                        throw new ASN1Exception();
                    }
                    ASN1[] contents7 = asn8.getContents();
                    if (contents7.length != 2) {
                        throw new ASN1Exception();
                    }
                    if (!contents7[0].isSEQUENCE()) {
                        throw new ASN1Exception();
                    }
                    if (!contents7[1].isINTEGER()) {
                        throw new ASN1Exception();
                    }
                    content2 = contents7[1].getContent();
                    try {
                        ASN1[] contents8 = contents7[0].getContents();
                        if (contents8.length != 3) {
                            throw new ASN1Exception();
                        }
                        if (!contents8[0].isINTEGER()) {
                            throw new ASN1Exception();
                        }
                        if (!contents8[1].isINTEGER()) {
                            throw new ASN1Exception();
                        }
                        if (!contents8[2].isINTEGER()) {
                            throw new ASN1Exception();
                        }
                        arrayList.add(contents8[0].getContent());
                        arrayList.add(contents8[1].getContent());
                        arrayList.add(contents8[2].getContent());
                    } catch (ASN1Exception e7) {
                        e = e7;
                        bArr3 = null;
                        keyPairECDSA = null;
                        bArr5 = content4;
                        content = content2;
                        try {
                            if (instanceLogger.a().isEnabled(3)) {
                                instanceLogger.a().log(3, "PKCS8: failed to parse key: ASN1 parsing error", e);
                            }
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr3);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            return false;
                        } catch (Throwable th4) {
                            th = th4;
                            bArr2 = bArr3;
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr2);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            throw th;
                        }
                    } catch (Exception e8) {
                        e = e8;
                        bArr2 = null;
                        keyPairECDSA = null;
                        bArr5 = content4;
                        content = content2;
                        try {
                            if (instanceLogger.a().isEnabled(3)) {
                                instanceLogger.a().log(3, "PKCS8: failed to parse key: " + e.getMessage(), e);
                            }
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr2);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            return false;
                        } catch (Throwable th5) {
                            th = th5;
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr2);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        bArr2 = null;
                        keyPairECDSA = null;
                        bArr5 = content4;
                        content = content2;
                        Util.e(bArr5);
                        Util.e(content);
                        Util.e(bArr2);
                        if (keyPairECDSA != null) {
                            keyPairECDSA.dispose();
                        }
                        throw th;
                    }
                } else {
                    if (!asn8.isINTEGER()) {
                        throw new ASN1Exception();
                    }
                    content2 = asn8.getContent();
                }
                try {
                    byte[] bArr8 = (byte[]) arrayList.get(0);
                    byte[] bArr9 = (byte[]) arrayList.get(1);
                    byte[] bArr10 = (byte[]) arrayList.get(2);
                    bArr4 = content2;
                    try {
                        keyPairECDSA = new KeyPairDSA(this.c, bArr8, bArr9, bArr10, new BigInteger(bArr10).modPow(new BigInteger(content2), new BigInteger(bArr8)).toByteArray(), bArr4);
                        try {
                            byte[] bArrM2 = keyPairECDSA.m();
                            KeyPairDSA keyPairDSA = new KeyPairDSA(instanceLogger);
                            keyPairDSA.a(this);
                            if (!keyPairDSA.s(bArrM2)) {
                                throw new JSchException("failed to parse DSA");
                            }
                            this.t = keyPairDSA;
                            Util.e(content4);
                            Util.e(bArr4);
                            Util.e(bArrM2);
                            keyPairECDSA.dispose();
                            return true;
                        } catch (ASN1Exception e9) {
                            e = e9;
                            bArr3 = null;
                            bArr5 = content4;
                            content = bArr4;
                            if (instanceLogger.a().isEnabled(3)) {
                                instanceLogger.a().log(3, "PKCS8: failed to parse key: ASN1 parsing error", e);
                            }
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr3);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            return false;
                        } catch (Exception e10) {
                            e = e10;
                            bArr2 = null;
                            bArr5 = content4;
                            content = bArr4;
                            if (instanceLogger.a().isEnabled(3)) {
                                instanceLogger.a().log(3, "PKCS8: failed to parse key: " + e.getMessage(), e);
                            }
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr2);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            return false;
                        } catch (Throwable th7) {
                            th = th7;
                            bArr2 = null;
                            bArr5 = content4;
                            content = bArr4;
                            Util.e(bArr5);
                            Util.e(content);
                            Util.e(bArr2);
                            if (keyPairECDSA != null) {
                                keyPairECDSA.dispose();
                            }
                            throw th;
                        }
                    } catch (ASN1Exception e11) {
                        e = e11;
                        bArr3 = null;
                        keyPairECDSA = null;
                        bArr5 = content4;
                        content = bArr4;
                        if (instanceLogger.a().isEnabled(3)) {
                            instanceLogger.a().log(3, "PKCS8: failed to parse key: ASN1 parsing error", e);
                        }
                        Util.e(bArr5);
                        Util.e(content);
                        Util.e(bArr3);
                        if (keyPairECDSA != null) {
                            keyPairECDSA.dispose();
                        }
                        return false;
                    } catch (Exception e12) {
                        e = e12;
                        bArr2 = null;
                        keyPairECDSA = null;
                        bArr5 = content4;
                        content = bArr4;
                        if (instanceLogger.a().isEnabled(3)) {
                            instanceLogger.a().log(3, "PKCS8: failed to parse key: " + e.getMessage(), e);
                        }
                        Util.e(bArr5);
                        Util.e(content);
                        Util.e(bArr2);
                        if (keyPairECDSA != null) {
                            keyPairECDSA.dispose();
                        }
                        return false;
                    } catch (Throwable th8) {
                        th = th8;
                        bArr2 = null;
                        keyPairECDSA = null;
                        bArr5 = content4;
                        content = bArr4;
                        Util.e(bArr5);
                        Util.e(content);
                        Util.e(bArr2);
                        if (keyPairECDSA != null) {
                            keyPairECDSA.dispose();
                        }
                        throw th;
                    }
                } catch (ASN1Exception e13) {
                    e = e13;
                    bArr4 = content2;
                } catch (Exception e14) {
                    e = e14;
                    bArr4 = content2;
                } catch (Throwable th9) {
                    th = th9;
                    bArr4 = content2;
                }
            } catch (ASN1Exception e15) {
                e = e15;
                bArr3 = null;
                keyPairECDSA = null;
                content = null;
            } catch (Exception e16) {
                e = e16;
                bArr2 = null;
                keyPairECDSA = null;
                content = null;
            } catch (Throwable th10) {
                th = th10;
                bArr2 = null;
                keyPairECDSA = null;
                content = null;
            }
        } catch (ASN1Exception e17) {
            e = e17;
            bArr3 = null;
            keyPairECDSA = null;
            content = null;
        } catch (Exception e18) {
            e = e18;
            bArr2 = null;
            keyPairECDSA = null;
            content = null;
        } catch (Throwable th11) {
            th = th11;
            bArr2 = null;
            keyPairECDSA = null;
            content = null;
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getSignature(byte[] bArr, String str) {
        return this.t.getSignature(bArr, str);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final Signature getVerifier(String str) {
        return this.t.getVerifier(str);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final void h(int i) {
    }
}
