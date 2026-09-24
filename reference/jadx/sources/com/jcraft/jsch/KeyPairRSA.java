package com.jcraft.jsch;

import defpackage.a6;
import defpackage.e6;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class KeyPairRSA extends KeyPair {
    public static final byte[] C;
    public static final byte[] D;
    public static final byte[] E;
    public byte[] A;
    public int B;
    public byte[] t;
    public byte[] u;
    public byte[] v;
    public byte[] w;
    public byte[] x;
    public byte[] y;
    public byte[] z;

    static {
        byte[] bArr = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        C = Util.p("-----BEGIN RSA PRIVATE KEY-----", charset);
        D = Util.p("-----END RSA PRIVATE KEY-----", charset);
        E = Util.p("ssh-rsa", charset);
    }

    public KeyPairRSA(JSch.InstanceLogger instanceLogger, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(instanceLogger);
        this.B = 1024;
        this.t = bArr;
        this.u = bArr2;
        this.v = bArr3;
        if (bArr != null) {
            this.B = new BigInteger(bArr).bitLength();
        }
    }

    public static KeyPair y(JSch.InstanceLogger instanceLogger, Buffer buffer) throws JSchException {
        byte[][] bArrD = buffer.d(8, "invalid key format");
        KeyPairRSA keyPairRSA = new KeyPairRSA(instanceLogger, bArrD[1], bArrD[2], bArrD[3]);
        keyPairRSA.A = bArrD[4];
        keyPairRSA.w = bArrD[5];
        keyPairRSA.x = bArrD[6];
        keyPairRSA.b = Util.c(bArrD[7]);
        keyPairRSA.a = 0;
        return keyPairRSA;
    }

    public final void A() {
        if (this.y == null) {
            this.y = new BigInteger(this.v).mod(new BigInteger(this.w).subtract(BigInteger.ONE)).toByteArray();
        }
    }

    public final void B() {
        if (this.z == null) {
            this.z = new BigInteger(this.v).mod(new BigInteger(this.x).subtract(BigInteger.ONE)).toByteArray();
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final void dispose() {
        Util.e(this.v);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] forSSHAgent() throws JSchException {
        if (this.i) {
            e6.h("key is encrypted.");
            return null;
        }
        Buffer buffer = new Buffer();
        buffer.putString(E);
        buffer.putString(this.t);
        buffer.putString(this.u);
        buffer.putString(this.v);
        buffer.putString(z());
        buffer.putString(this.w);
        buffer.putString(this.x);
        buffer.putString(Util.p(this.b, StandardCharsets.UTF_8));
        int length = buffer.getLength();
        byte[] bArr = new byte[length];
        buffer.c(bArr, 0, length);
        return bArr;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeySize() {
        return this.B;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeyType() {
        return 2;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getPublicKeyBlob() {
        byte[] bArr = this.l;
        if (bArr != null) {
            return bArr;
        }
        byte[] bArr2 = this.u;
        if (bArr2 == null) {
            return null;
        }
        return Buffer.b(new byte[][]{E, bArr2, this.t}).b;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getSignature(byte[] bArr, String str) {
        try {
            SignatureRSA signatureRSA = (SignatureRSA) Class.forName(JSch.getConfig(str)).asSubclass(SignatureRSA.class).getDeclaredConstructor(null).newInstance(null);
            signatureRSA.init();
            signatureRSA.setPrvKey(this.v, this.t);
            signatureRSA.update(bArr);
            return Buffer.b(new byte[][]{str.getBytes(StandardCharsets.UTF_8), signatureRSA.sign()}).b;
        } catch (Exception e) {
            JSch.InstanceLogger instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to generate signature", e);
            }
            return null;
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final Signature getVerifier(String str) {
        try {
            SignatureRSA signatureRSA = (SignatureRSA) Class.forName(JSch.getConfig(str)).asSubclass(SignatureRSA.class).getDeclaredConstructor(null).newInstance(null);
            signatureRSA.init();
            if (this.u == null && this.t == null && getPublicKeyBlob() != null) {
                Buffer buffer = new Buffer(getPublicKeyBlob());
                buffer.getString();
                this.u = buffer.getString();
                this.t = buffer.getString();
            }
            signatureRSA.setPubKey(this.u, this.t);
            return signatureRSA;
        } catch (Exception e) {
            JSch.InstanceLogger instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to create verifier", e);
            }
            return null;
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final void h(int i) throws JSchException {
        this.B = i;
        try {
            KeyPairGenRSA keyPairGenRSA = (KeyPairGenRSA) Class.forName(JSch.getConfig("keypairgen.rsa")).asSubclass(KeyPairGenRSA.class).getDeclaredConstructor(null).newInstance(null);
            keyPairGenRSA.init(i);
            this.u = keyPairGenRSA.getE();
            this.v = keyPairGenRSA.getD();
            this.t = keyPairGenRSA.getN();
            this.w = keyPairGenRSA.getP();
            this.x = keyPairGenRSA.getQ();
            this.y = keyPairGenRSA.getEP();
            this.z = keyPairGenRSA.getEQ();
            this.A = keyPairGenRSA.getC();
        } catch (Exception e) {
            a6.f(e);
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] i() {
        return C;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] j() {
        return D;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] k() {
        return E;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] l() throws Exception {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        byte[] bArr6;
        Buffer buffer = null;
        byte[] bArr7 = E;
        if (bArr7 == null || (bArr = this.t) == null || (bArr2 = this.u) == null || (bArr3 = this.v) == null || (bArr4 = this.A) == null || (bArr5 = this.w) == null || (bArr6 = this.x) == null) {
            return null;
        }
        try {
            Buffer buffer2 = new Buffer(bArr6.length + 4 + bArr5.length + 4 + bArr4.length + 4 + bArr3.length + 4 + bArr2.length + 4 + bArr.length + 4 + bArr7.length + 4 + ((bArr[0] & 128) >>> 7) + ((bArr2[0] & 128) >>> 7) + ((bArr3[0] & 128) >>> 7) + ((bArr4[0] & 128) >>> 7) + ((bArr5[0] & 128) >>> 7) + ((bArr6[0] & 128) >>> 7));
            try {
                buffer2.putString(bArr7, 0, bArr7.length);
                buffer2.putMPInt(this.t);
                buffer2.putMPInt(this.u);
                buffer2.putMPInt(this.v);
                buffer2.putMPInt(this.A);
                buffer2.putMPInt(this.w);
                buffer2.putMPInt(this.x);
                return buffer2.b;
            } catch (Exception e) {
                e = e;
                buffer = buffer2;
                if (buffer != null) {
                    Util.e(buffer.b);
                }
                throw e;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] m() {
        int iB = KeyPair.b(this.A.length) + KeyPair.b(this.z.length) + KeyPair.b(this.y.length) + KeyPair.b(this.x.length) + KeyPair.b(this.w.length) + KeyPair.b(this.v.length) + KeyPair.b(this.u.length) + KeyPair.b(this.t.length) + KeyPair.b(1) + 3 + this.t.length + 1 + this.u.length + 1 + this.v.length + 1 + this.w.length + 1 + this.x.length + 1 + this.y.length + 1 + this.z.length + 1 + this.A.length;
        byte[] bArr = new byte[KeyPair.b(iB) + 1 + iB];
        bArr[0] = 48;
        KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.x(bArr, 1, iB), bArr, new byte[1]), bArr, this.t), bArr, this.u), bArr, this.v), bArr, this.w), bArr, this.x), bArr, this.y), bArr, this.z), bArr, this.A);
        return bArr;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final boolean s(byte[] bArr) {
        int i;
        JSch.InstanceLogger instanceLogger = this.c;
        try {
            int i2 = this.a;
            if (i2 == 2 || i2 == 5) {
                Buffer buffer = new Buffer(bArr);
                buffer.h(bArr.length);
                try {
                    byte[][] bArrD = buffer.d(4, "");
                    this.v = bArrD[0];
                    this.w = bArrD[1];
                    this.x = bArrD[2];
                    this.A = bArrD[3];
                    A();
                    B();
                    return true;
                } catch (JSchException e) {
                    if (instanceLogger.a().isEnabled(3)) {
                        instanceLogger.a().log(3, "failed to parse key", e);
                    }
                }
            } else if (i2 == 1) {
                if (bArr[0] != 48) {
                    Buffer buffer2 = new Buffer(bArr);
                    this.u = buffer2.getMPIntBits();
                    this.v = buffer2.getMPIntBits();
                    this.t = buffer2.getMPIntBits();
                    buffer2.getMPIntBits();
                    this.w = buffer2.getMPIntBits();
                    this.x = buffer2.getMPIntBits();
                    if (this.t != null) {
                        this.B = new BigInteger(this.t).bitLength();
                    }
                    A();
                    B();
                    z();
                    return true;
                }
                if (instanceLogger.a().isEnabled(3)) {
                    instanceLogger.a().log(3, "failed to parse key");
                    return false;
                }
            } else {
                if (i2 == 4) {
                    Buffer buffer3 = new Buffer(bArr);
                    if (buffer3.getInt() != buffer3.getInt()) {
                        throw new JSchException("check failed");
                    }
                    Util.c(buffer3.getString());
                    this.t = buffer3.getMPInt();
                    this.u = buffer3.getMPInt();
                    this.v = buffer3.getMPInt();
                    this.A = buffer3.getMPInt();
                    this.w = buffer3.getMPInt();
                    this.x = buffer3.getMPInt();
                    this.B = new BigInteger(this.t).bitLength();
                    byte[] string = buffer3.getString();
                    this.b = new String(string, 0, string.length, StandardCharsets.UTF_8);
                    A();
                    B();
                    return true;
                }
                byte b = bArr[1];
                if ((b & 128) != 0) {
                    int i3 = b & 127;
                    i = 2;
                    while (true) {
                        int i4 = i3 - 1;
                        if (i3 <= 0) {
                            break;
                        }
                        int i5 = i + 1;
                        byte b2 = bArr[i];
                        i = i5;
                        i3 = i4;
                    }
                } else {
                    i = 2;
                }
                if (bArr[i] == 2) {
                    int i6 = i + 1;
                    int i7 = i + 2;
                    int i8 = bArr[i6];
                    int i9 = i8 & 255;
                    if ((i8 & 128) != 0) {
                        int i10 = i8 & 127;
                        i9 = 0;
                        while (true) {
                            int i11 = i10 - 1;
                            if (i10 <= 0) {
                                break;
                            }
                            int i12 = (i9 << 8) + (bArr[i7] & 255);
                            i7++;
                            i9 = i12;
                            i10 = i11;
                        }
                    }
                    int i13 = i7 + i9;
                    int i14 = i13 + 1;
                    int i15 = i13 + 2;
                    int i16 = bArr[i14];
                    int i17 = i16 & 255;
                    if ((i16 & 128) != 0) {
                        int i18 = i16 & 127;
                        i17 = 0;
                        while (true) {
                            int i19 = i18 - 1;
                            if (i18 <= 0) {
                                break;
                            }
                            int i20 = (i17 << 8) + (bArr[i15] & 255);
                            i15++;
                            i17 = i20;
                            i18 = i19;
                        }
                    }
                    byte[] bArr2 = new byte[i17];
                    this.t = bArr2;
                    System.arraycopy(bArr, i15, bArr2, 0, i17);
                    int i21 = i15 + i17;
                    int i22 = i21 + 1;
                    int i23 = i21 + 2;
                    int i24 = bArr[i22];
                    int i25 = i24 & 255;
                    if ((i24 & 128) != 0) {
                        int i26 = i24 & 127;
                        i25 = 0;
                        while (true) {
                            int i27 = i26 - 1;
                            if (i26 <= 0) {
                                break;
                            }
                            int i28 = (i25 << 8) + (bArr[i23] & 255);
                            i23++;
                            i25 = i28;
                            i26 = i27;
                        }
                    }
                    byte[] bArr3 = new byte[i25];
                    this.u = bArr3;
                    System.arraycopy(bArr, i23, bArr3, 0, i25);
                    int i29 = i23 + i25;
                    int i30 = i29 + 1;
                    int i31 = i29 + 2;
                    int i32 = bArr[i30];
                    int i33 = i32 & 255;
                    if ((i32 & 128) != 0) {
                        int i34 = i32 & 127;
                        i33 = 0;
                        while (true) {
                            int i35 = i34 - 1;
                            if (i34 <= 0) {
                                break;
                            }
                            int i36 = (i33 << 8) + (bArr[i31] & 255);
                            i31++;
                            i33 = i36;
                            i34 = i35;
                        }
                    }
                    byte[] bArr4 = new byte[i33];
                    this.v = bArr4;
                    System.arraycopy(bArr, i31, bArr4, 0, i33);
                    int i37 = i31 + i33;
                    int i38 = i37 + 1;
                    int i39 = i37 + 2;
                    int i40 = bArr[i38];
                    int i41 = i40 & 255;
                    if ((i40 & 128) != 0) {
                        int i42 = i40 & 127;
                        i41 = 0;
                        while (true) {
                            int i43 = i42 - 1;
                            if (i42 <= 0) {
                                break;
                            }
                            int i44 = (i41 << 8) + (bArr[i39] & 255);
                            i39++;
                            i41 = i44;
                            i42 = i43;
                        }
                    }
                    byte[] bArr5 = new byte[i41];
                    this.w = bArr5;
                    System.arraycopy(bArr, i39, bArr5, 0, i41);
                    int i45 = i39 + i41;
                    int i46 = i45 + 1;
                    int i47 = i45 + 2;
                    int i48 = bArr[i46];
                    int i49 = i48 & 255;
                    if ((i48 & 128) != 0) {
                        int i50 = i48 & 127;
                        i49 = 0;
                        while (true) {
                            int i51 = i50 - 1;
                            if (i50 <= 0) {
                                break;
                            }
                            int i52 = (i49 << 8) + (bArr[i47] & 255);
                            i47++;
                            i49 = i52;
                            i50 = i51;
                        }
                    }
                    byte[] bArr6 = new byte[i49];
                    this.x = bArr6;
                    System.arraycopy(bArr, i47, bArr6, 0, i49);
                    int i53 = i47 + i49;
                    int i54 = i53 + 1;
                    int i55 = i53 + 2;
                    int i56 = bArr[i54];
                    int i57 = i56 & 255;
                    if ((i56 & 128) != 0) {
                        int i58 = i56 & 127;
                        i57 = 0;
                        while (true) {
                            int i59 = i58 - 1;
                            if (i58 <= 0) {
                                break;
                            }
                            int i60 = (i57 << 8) + (bArr[i55] & 255);
                            i55++;
                            i57 = i60;
                            i58 = i59;
                        }
                    }
                    byte[] bArr7 = new byte[i57];
                    this.y = bArr7;
                    System.arraycopy(bArr, i55, bArr7, 0, i57);
                    int i61 = i55 + i57;
                    int i62 = i61 + 1;
                    int i63 = i61 + 2;
                    int i64 = bArr[i62];
                    int i65 = i64 & 255;
                    if ((i64 & 128) != 0) {
                        int i66 = i64 & 127;
                        i65 = 0;
                        while (true) {
                            int i67 = i66 - 1;
                            if (i66 <= 0) {
                                break;
                            }
                            int i68 = (i65 << 8) + (bArr[i63] & 255);
                            i63++;
                            i65 = i68;
                            i66 = i67;
                        }
                    }
                    byte[] bArr8 = new byte[i65];
                    this.z = bArr8;
                    System.arraycopy(bArr, i63, bArr8, 0, i65);
                    int i69 = i63 + i65;
                    int i70 = i69 + 1;
                    int i71 = i69 + 2;
                    int i72 = bArr[i70];
                    int i73 = i72 & 255;
                    if ((i72 & 128) != 0) {
                        int i74 = i72 & 127;
                        i73 = 0;
                        while (true) {
                            int i75 = i74 - 1;
                            if (i74 <= 0) {
                                break;
                            }
                            int i76 = (i73 << 8) + (bArr[i71] & 255);
                            i71++;
                            i73 = i76;
                            i74 = i75;
                        }
                    }
                    byte[] bArr9 = new byte[i73];
                    this.A = bArr9;
                    System.arraycopy(bArr, i71, bArr9, 0, i73);
                    if (this.t != null) {
                        this.B = new BigInteger(this.t).bitLength();
                    }
                    return true;
                }
            }
        } catch (Exception e2) {
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to parse key", e2);
            }
        }
        return false;
    }

    public final byte[] z() {
        if (this.A == null) {
            this.A = new BigInteger(this.x).modInverse(new BigInteger(this.w)).toByteArray();
        }
        return this.A;
    }

    public KeyPairRSA(JSch.InstanceLogger instanceLogger) {
        this(instanceLogger, null, null, null);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getSignature(byte[] bArr) {
        return getSignature(bArr, "ssh-rsa");
    }

    @Override // com.jcraft.jsch.KeyPair
    public final Signature getVerifier() {
        return getVerifier("ssh-rsa");
    }
}
