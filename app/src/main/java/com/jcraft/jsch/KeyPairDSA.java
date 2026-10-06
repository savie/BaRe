package com.jcraft.jsch;

import defpackage.a6;
import defpackage.e6;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class KeyPairDSA extends KeyPair {
    public static final byte[] A;
    public static final byte[] B;
    public static final byte[] z;
    public byte[] t;
    public byte[] u;
    public byte[] v;
    public byte[] w;
    public byte[] x;
    public int y;

    static {
        byte[] bArr = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        z = Util.p("-----BEGIN DSA PRIVATE KEY-----", charset);
        A = Util.p("-----END DSA PRIVATE KEY-----", charset);
        B = Util.p("ssh-dss", charset);
    }

    public KeyPairDSA(JSch.InstanceLogger instanceLogger, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        super(instanceLogger);
        this.y = 1024;
        this.t = bArr;
        this.u = bArr2;
        this.v = bArr3;
        this.w = bArr4;
        this.x = bArr5;
        if (bArr != null) {
            this.y = new BigInteger(bArr).bitLength();
        }
    }

    public static KeyPair y(JSch.InstanceLogger instanceLogger, Buffer buffer) throws JSchException {
        byte[][] bArrD = buffer.d(7, "invalid key format");
        KeyPairDSA keyPairDSA = new KeyPairDSA(instanceLogger, bArrD[1], bArrD[2], bArrD[3], bArrD[4], bArrD[5]);
        keyPairDSA.b = Util.c(bArrD[6]);
        keyPairDSA.a = 0;
        return keyPairDSA;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final void dispose() {
        Util.e(this.x);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] forSSHAgent() throws JSchException {
        if (this.i) {
            e6.h("key is encrypted.");
            return null;
        }
        Buffer buffer = new Buffer();
        buffer.putString(B);
        buffer.putString(this.t);
        buffer.putString(this.u);
        buffer.putString(this.v);
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
        return this.y;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeyType() {
        return 1;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getPublicKeyBlob() {
        byte[] bArr = this.l;
        if (bArr != null) {
            return bArr;
        }
        byte[] bArr2 = this.t;
        if (bArr2 == null) {
            return null;
        }
        return Buffer.b(new byte[][]{B, bArr2, this.u, this.v, this.w}).b;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getSignature(byte[] bArr) {
        try {
            SignatureDSA signatureDSA = (SignatureDSA) Class.forName(JSch.getConfig("signature.dss")).asSubclass(SignatureDSA.class).getDeclaredConstructor(null).newInstance(null);
            signatureDSA.init();
            signatureDSA.setPrvKey(this.x, this.t, this.u, this.v);
            signatureDSA.update(bArr);
            return Buffer.b(new byte[][]{B, signatureDSA.sign()}).b;
        } catch (Exception e) {
            JSch.InstanceLogger instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to generate signature", e);
            }
            return null;
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final Signature getVerifier() {
        try {
            SignatureDSA signatureDSA = (SignatureDSA) Class.forName(JSch.getConfig("signature.dss")).asSubclass(SignatureDSA.class).getDeclaredConstructor(null).newInstance(null);
            signatureDSA.init();
            if (this.w == null && this.t == null && getPublicKeyBlob() != null) {
                Buffer buffer = new Buffer(getPublicKeyBlob());
                buffer.getString();
                this.t = buffer.getString();
                this.u = buffer.getString();
                this.v = buffer.getString();
                this.w = buffer.getString();
            }
            signatureDSA.setPubKey(this.w, this.t, this.u, this.v);
            return signatureDSA;
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
        this.y = i;
        try {
            KeyPairGenDSA keyPairGenDSA = (KeyPairGenDSA) Class.forName(JSch.getConfig("keypairgen.dsa")).asSubclass(KeyPairGenDSA.class).getDeclaredConstructor(null).newInstance(null);
            keyPairGenDSA.init(i);
            this.t = keyPairGenDSA.getP();
            this.u = keyPairGenDSA.getQ();
            this.v = keyPairGenDSA.getG();
            this.w = keyPairGenDSA.getY();
            this.x = keyPairGenDSA.getX();
        } catch (Exception e) {
            a6.f(e);
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] i() {
        return z;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] j() {
        return A;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] k() {
        return B;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] l() throws Exception {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        Buffer buffer = null;
        byte[] bArr6 = B;
        if (bArr6 == null || (bArr = this.t) == null || (bArr2 = this.u) == null || (bArr3 = this.v) == null || (bArr4 = this.w) == null || (bArr5 = this.x) == null) {
            return null;
        }
        try {
            Buffer buffer2 = new Buffer(bArr5.length + 4 + bArr4.length + 4 + bArr3.length + 4 + bArr2.length + 4 + bArr.length + 4 + bArr6.length + 4 + ((bArr[0] & 128) >>> 7) + ((bArr2[0] & 128) >>> 7) + ((bArr3[0] & 128) >>> 7) + ((bArr4[0] & 128) >>> 7) + ((bArr5[0] & 128) >>> 7));
            try {
                buffer2.putString(bArr6, 0, bArr6.length);
                buffer2.putMPInt(this.t);
                buffer2.putMPInt(this.u);
                buffer2.putMPInt(this.v);
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
        int iB = KeyPair.b(this.x.length) + KeyPair.b(this.w.length) + KeyPair.b(this.v.length) + KeyPair.b(this.u.length) + KeyPair.b(this.t.length) + KeyPair.b(1) + 3 + this.t.length + 1 + this.u.length + 1 + this.v.length + 1 + this.w.length + 1 + this.x.length;
        byte[] bArr = new byte[KeyPair.b(iB) + 1 + iB];
        bArr[0] = 48;
        KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.w(KeyPair.x(bArr, 1, iB), bArr, new byte[1]), bArr, this.t), bArr, this.u), bArr, this.v), bArr, this.w), bArr, this.x);
        return bArr;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final boolean s(byte[] bArr) {
        int i;
        JSch.InstanceLogger instanceLogger = this.c;
        try {
            int i2 = this.a;
            if (i2 == 1) {
                if (bArr[0] == 48) {
                    return false;
                }
                Buffer buffer = new Buffer(bArr);
                buffer.getInt();
                this.t = buffer.getMPIntBits();
                this.v = buffer.getMPIntBits();
                this.u = buffer.getMPIntBits();
                this.w = buffer.getMPIntBits();
                this.x = buffer.getMPIntBits();
                if (this.t != null) {
                    this.y = new BigInteger(this.t).bitLength();
                }
                return true;
            }
            if (i2 != 2 && i2 != 5) {
                if (i2 == 4) {
                    Buffer buffer2 = new Buffer(bArr);
                    if (buffer2.getInt() != buffer2.getInt()) {
                        throw new JSchException("check failed");
                    }
                    Util.c(buffer2.getString());
                    this.t = buffer2.getMPInt();
                    this.u = buffer2.getMPInt();
                    this.v = buffer2.getMPInt();
                    this.w = buffer2.getMPInt();
                    this.x = buffer2.getMPInt();
                    byte[] string = buffer2.getString();
                    this.b = new String(string, 0, string.length, StandardCharsets.UTF_8);
                    this.y = new BigInteger(this.t).bitLength();
                    return true;
                }
                if (bArr[0] != 48) {
                    return false;
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
                if (bArr[i] != 2) {
                    return false;
                }
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
                if (this.t != null) {
                    this.y = new BigInteger(this.t).bitLength();
                }
                return true;
            }
            Buffer buffer3 = new Buffer(bArr);
            buffer3.h(bArr.length);
            try {
                this.x = buffer3.d(1, "")[0];
                return true;
            } catch (JSchException e) {
                if (instanceLogger.a().isEnabled(3)) {
                    instanceLogger.a().log(3, "failed to parse key", e);
                }
                return false;
            }
        } catch (Exception e2) {
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to parse key", e2);
            }
            return false;
        }
    }

    public KeyPairDSA(JSch.InstanceLogger instanceLogger) {
        this(instanceLogger, null, null, null, null, null);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getSignature(byte[] bArr, String str) {
        return getSignature(bArr);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final Signature getVerifier(String str) {
        return getVerifier();
    }
}
