package com.jcraft.jsch;

import defpackage.a6;
import defpackage.e6;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class KeyPairECDSA extends KeyPair {
    public static final String[] A;
    public static final byte[] B;
    public static final byte[] C;
    public static final byte[][] y = {new byte[]{6, 8, 42, -122, 72, -50, 61, 3, 1, 7}, new byte[]{6, 5, 43, -127, 4, 0, 34}, new byte[]{6, 5, 43, -127, 4, 0, 35}};
    public static final String[] z;
    public byte[] t;
    public byte[] u;
    public byte[] v;
    public byte[] w;
    public int x;

    static {
        String[] strArr = {"nistp256", "nistp384", "nistp521"};
        z = strArr;
        A = (String[]) Arrays.stream(strArr).map(new d()).toArray(new e());
        byte[] bArr = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        B = Util.p("-----BEGIN EC PRIVATE KEY-----", charset);
        C = Util.p("-----END EC PRIVATE KEY-----", charset);
    }

    public KeyPairECDSA(JSch.InstanceLogger instanceLogger, byte[] bArr) {
        this(instanceLogger, null, null, null, null);
        if (bArr != null) {
            byte[] bArr2 = new byte[8];
            System.arraycopy(bArr, 11, bArr2, 0, 8);
            Charset charset = StandardCharsets.UTF_8;
            if (Util.a(bArr2, Util.p("nistp384", charset))) {
                this.x = 384;
                this.t = bArr2;
            }
            if (Util.a(bArr2, Util.p("nistp521", charset))) {
                this.x = 521;
                this.t = bArr2;
            }
        }
    }

    public static byte[] A(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + 1 + bArr2.length];
        bArr3[0] = 4;
        System.arraycopy(bArr, 0, bArr3, 1, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length + 1, bArr2.length);
        return bArr3;
    }

    public static byte[][] y(byte[] bArr) {
        int i = 0;
        while (bArr[i] != 4) {
            i++;
        }
        int i2 = i + 1;
        int length = (bArr.length - i2) / 2;
        byte[] bArr2 = new byte[length];
        int length2 = (bArr.length - i2) / 2;
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr, i2, bArr2, 0, length);
        System.arraycopy(bArr, i2 + length, bArr3, 0, length2);
        return new byte[][]{bArr2, bArr3};
    }

    public static KeyPair z(JSch.InstanceLogger instanceLogger, Buffer buffer) throws JSchException {
        byte[][] bArrD = buffer.d(5, "invalid key format");
        byte[] bArr = bArrD[1];
        byte[][] bArrY = y(bArrD[2]);
        KeyPairECDSA keyPairECDSA = new KeyPairECDSA(instanceLogger, bArr, bArrY[0], bArrY[1], bArrD[3]);
        keyPairECDSA.b = Util.c(bArrD[4]);
        keyPairECDSA.a = 0;
        return keyPairECDSA;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final void dispose() {
        Util.e(this.w);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] forSSHAgent() throws JSchException {
        if (this.i) {
            e6.h("key is encrypted.");
            return null;
        }
        Buffer buffer = new Buffer();
        String strConcat = "ecdsa-sha2-".concat(Util.c(this.t));
        Charset charset = StandardCharsets.UTF_8;
        buffer.putString(Util.p(strConcat, charset));
        buffer.putString(this.t);
        byte[] bArrA = A(this.u, this.v);
        buffer.putString(bArrA, 0, bArrA.length);
        buffer.putString(this.w);
        buffer.putString(Util.p(this.b, charset));
        int length = buffer.getLength();
        byte[] bArr = new byte[length];
        buffer.c(bArr, 0, length);
        return bArr;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeySize() {
        return this.x;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeyType() {
        return 3;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getPublicKeyBlob() {
        byte[] bArr = this.l;
        if (bArr != null) {
            return bArr;
        }
        if (this.u == null) {
            return null;
        }
        byte[] bArrP = Util.p("ecdsa-sha2-".concat(Util.c(this.t)), StandardCharsets.UTF_8);
        byte[] bArr2 = this.t;
        byte[] bArr3 = this.u;
        byte[][] bArr4 = {bArrP, bArr2, new byte[bArr3.length + 1 + this.v.length]};
        byte[] bArr5 = bArr4[2];
        bArr5[0] = 4;
        System.arraycopy(bArr3, 0, bArr5, 1, bArr3.length);
        byte[] bArr6 = this.v;
        System.arraycopy(bArr6, 0, bArr4[2], this.u.length + 1, bArr6.length);
        return Buffer.b(bArr4).b;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getSignature(byte[] bArr) throws Throwable {
        byte[] bArrCopyOf;
        JSch.InstanceLogger instanceLogger = this.c;
        byte[] bArr2 = null;
        try {
            SignatureECDSA signatureECDSA = (SignatureECDSA) Class.forName(JSch.getConfig("ecdsa-sha2-".concat(Util.c(this.t)))).asSubclass(SignatureECDSA.class).getDeclaredConstructor(null).newInstance(null);
            signatureECDSA.init();
            byte[] bArr3 = this.w;
            bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length);
            try {
                try {
                    signatureECDSA.setPrvKey(bArrCopyOf);
                    signatureECDSA.update(bArr);
                    byte[] bArr4 = Buffer.b(new byte[][]{"ecdsa-sha2-".concat(Util.c(this.t)).getBytes(StandardCharsets.UTF_8), signatureECDSA.sign()}).b;
                    Util.e(bArrCopyOf);
                    return bArr4;
                } catch (Exception e) {
                    e = e;
                    if (instanceLogger.a().isEnabled(3)) {
                        instanceLogger.a().log(3, "failed to generate signature", e);
                    }
                    Util.e(bArrCopyOf);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                bArr2 = bArrCopyOf;
                Util.e(bArr2);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            bArrCopyOf = null;
        } catch (Throwable th2) {
            th = th2;
            Util.e(bArr2);
            throw th;
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final Signature getVerifier() {
        try {
            SignatureECDSA signatureECDSA = (SignatureECDSA) Class.forName(JSch.getConfig("ecdsa-sha2-".concat(Util.c(this.t)))).asSubclass(SignatureECDSA.class).getDeclaredConstructor(null).newInstance(null);
            signatureECDSA.init();
            if (this.u == null && this.v == null && getPublicKeyBlob() != null) {
                Buffer buffer = new Buffer(getPublicKeyBlob());
                buffer.getString();
                buffer.getString();
                byte[][] bArrY = y(buffer.getString());
                this.u = bArrY[0];
                this.v = bArrY[1];
            }
            byte[] bArr = this.u;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            byte[] bArr2 = this.v;
            signatureECDSA.setPubKey(bArrCopyOf, Arrays.copyOf(bArr2, bArr2.length));
            return signatureECDSA;
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
        char c;
        this.x = i;
        try {
            KeyPairGenECDSA keyPairGenECDSA = (KeyPairGenECDSA) Class.forName(JSch.getConfig("keypairgen.ecdsa")).asSubclass(KeyPairGenECDSA.class).getDeclaredConstructor(null).newInstance(null);
            keyPairGenECDSA.init(i);
            this.w = keyPairGenECDSA.getD();
            this.u = keyPairGenECDSA.getR();
            this.v = keyPairGenECDSA.getS();
            String[] strArr = z;
            byte[] bArr = this.w;
            if (bArr.length >= 64) {
                c = 2;
            } else {
                c = bArr.length >= 48 ? (char) 1 : (char) 0;
            }
            this.t = Util.p(strArr[c], StandardCharsets.UTF_8);
        } catch (Exception e) {
            a6.f(e);
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] i() {
        return B;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] j() {
        return C;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] k() {
        return Util.p("ecdsa-sha2-".concat(Util.c(this.t)), StandardCharsets.UTF_8);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] l() throws Exception {
        byte[] bArr;
        byte[] bArrK = k();
        byte[] bArrA = A(this.u, this.v);
        Buffer buffer = null;
        if (bArrK == null || (bArr = this.w) == null) {
            return null;
        }
        try {
            Buffer buffer2 = new Buffer(bArr.length + 4 + bArrA.length + 4 + this.t.length + 4 + bArrK.length + 4 + ((bArr[0] & 128) >>> 7));
            try {
                buffer2.putString(bArrK, 0, bArrK.length);
                buffer2.putString(this.t);
                buffer2.putString(bArrA, 0, bArrA.length);
                buffer2.putMPInt(this.w);
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
        char c;
        byte[] bArr = {1};
        byte[] bArr2 = this.u;
        if (bArr2.length >= 64) {
            c = 2;
        } else {
            c = bArr2.length >= 48 ? (char) 1 : (char) 0;
        }
        byte[] bArr3 = y[c];
        byte[] bArrA = A(bArr2, this.v);
        int i = ((bArrA.length + 1) & 128) == 0 ? 3 : 4;
        int length = bArrA.length + i;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArrA, 0, bArr4, i, bArrA.length);
        bArr4[0] = 3;
        if (i == 3) {
            bArr4[1] = (byte) (bArrA.length + 1);
        } else {
            bArr4[1] = -127;
            bArr4[2] = (byte) (bArrA.length + 1);
        }
        int iB = KeyPair.b(length) + KeyPair.b(bArr3.length) + KeyPair.b(this.w.length) + KeyPair.b(1) + 3 + this.w.length + 1 + bArr3.length + 1 + length;
        byte[] bArr5 = new byte[KeyPair.b(iB) + 1 + iB];
        bArr5[0] = 48;
        int iW = KeyPair.w(KeyPair.x(bArr5, 1, iB), bArr5, bArr);
        byte[] bArr6 = this.w;
        bArr5[iW] = 4;
        int iX = KeyPair.x(bArr5, iW + 1, bArr6.length);
        System.arraycopy(bArr6, 0, bArr5, iX, bArr6.length);
        int length2 = iX + bArr6.length;
        bArr5[length2] = -96;
        int iX2 = KeyPair.x(bArr5, length2 + 1, bArr3.length);
        System.arraycopy(bArr3, 0, bArr5, iX2, bArr3.length);
        int length3 = iX2 + bArr3.length;
        bArr5[length3] = -95;
        System.arraycopy(bArr4, 0, bArr5, KeyPair.x(bArr5, length3 + 1, length), length);
        return bArr5;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final boolean s(byte[] bArr) {
        int i;
        JSch.InstanceLogger instanceLogger = this.c;
        try {
            int i2 = this.a;
            if (i2 == 1) {
                return false;
            }
            int i3 = 256;
            if (i2 == 2 || i2 == 5) {
                Buffer buffer = new Buffer(bArr);
                buffer.h(bArr.length);
                try {
                    byte[] bArr2 = buffer.d(1, "")[0];
                    this.w = bArr2;
                    if (bArr2.length >= 64) {
                        i3 = 521;
                    } else if (bArr2.length >= 48) {
                        i3 = 384;
                    }
                    this.x = i3;
                    return true;
                } catch (JSchException e) {
                    if (instanceLogger.a().isEnabled(3)) {
                        instanceLogger.a().log(3, "failed to parse key", e);
                    }
                    return false;
                }
            }
            String[] strArr = z;
            if (i2 == 4) {
                Buffer buffer2 = new Buffer(bArr);
                if (buffer2.getInt() != buffer2.getInt()) {
                    throw new JSchException("check failed");
                }
                byte[] string = buffer2.getString();
                int length = string.length;
                Charset charset = StandardCharsets.UTF_8;
                String str = new String(string, 0, length, charset);
                if (!Arrays.asList(A).contains(str)) {
                    throw new IllegalArgumentException("unknown key type ".concat(str));
                }
                byte[] string2 = buffer2.getString();
                this.t = string2;
                String strC = Util.c(string2);
                if (!Arrays.asList(strArr).contains(strC)) {
                    throw new IllegalArgumentException("unknown curve name ".concat(strC));
                }
                if (!str.endsWith(strC)) {
                    throw new IllegalArgumentException("key type " + str + " does not match curve name " + strC);
                }
                int iHashCode = strC.hashCode();
                if (iHashCode != 537081663) {
                    if (iHashCode != 537082715) {
                        if (iHashCode == 537084448 && strC.equals("nistp521")) {
                            this.x = 521;
                        }
                    } else if (strC.equals("nistp384")) {
                        this.x = 384;
                    }
                } else if (strC.equals("nistp256")) {
                    this.x = 256;
                }
                byte[] string3 = buffer2.getString();
                if (string3[0] != 4) {
                    throw new IllegalArgumentException("only uncompressed ECPoint supported");
                }
                byte[][] bArrY = y(string3);
                this.w = buffer2.getMPInt();
                byte[] string4 = buffer2.getString();
                this.b = new String(string4, 0, string4.length, charset);
                this.u = bArrY[0];
                this.v = bArrY[1];
                return true;
            }
            if (bArr[0] != 48) {
                return false;
            }
            byte b = bArr[1];
            if ((b & 128) != 0) {
                int i4 = b & 127;
                i = 2;
                while (true) {
                    int i5 = i4 - 1;
                    if (i4 <= 0) {
                        break;
                    }
                    int i6 = i + 1;
                    byte b2 = bArr[i];
                    i = i6;
                    i4 = i5;
                }
            } else {
                i = 2;
            }
            if (bArr[i] != 2) {
                return false;
            }
            int i7 = i + 1;
            int i8 = i + 2;
            int i9 = bArr[i7];
            int i10 = i9 & 255;
            if ((i9 & 128) != 0) {
                int i11 = i9 & 127;
                i10 = 0;
                while (true) {
                    int i12 = i11 - 1;
                    if (i11 <= 0) {
                        break;
                    }
                    int i13 = (i10 << 8) + (bArr[i8] & 255);
                    i8++;
                    i10 = i13;
                    i11 = i12;
                }
            }
            int i14 = i8 + i10;
            int i15 = i14 + 1;
            int i16 = i14 + 2;
            int i17 = bArr[i15];
            int i18 = i17 & 255;
            if ((i17 & 128) != 0) {
                int i19 = i17 & 127;
                i18 = 0;
                while (true) {
                    int i20 = i19 - 1;
                    if (i19 <= 0) {
                        break;
                    }
                    int i21 = (i18 << 8) + (bArr[i16] & 255);
                    i16++;
                    i18 = i21;
                    i19 = i20;
                }
            }
            byte[] bArr3 = new byte[i18];
            this.w = bArr3;
            System.arraycopy(bArr, i16, bArr3, 0, i18);
            int i22 = i16 + i18;
            int i23 = i22 + 1;
            int i24 = i22 + 2;
            int i25 = bArr[i23];
            int i26 = i25 & 255;
            if ((i25 & 128) != 0) {
                int i27 = i25 & 127;
                i26 = 0;
                while (true) {
                    int i28 = i27 - 1;
                    if (i27 <= 0) {
                        break;
                    }
                    int i29 = (i26 << 8) + (bArr[i24] & 255);
                    i24++;
                    i26 = i29;
                    i27 = i28;
                }
            }
            byte[] bArr4 = new byte[i26];
            System.arraycopy(bArr, i24, bArr4, 0, i26);
            int i30 = i24 + i26;
            int i31 = 0;
            while (true) {
                byte[][] bArr5 = y;
                if (i31 >= 3) {
                    break;
                }
                if (Util.a(bArr5[i31], bArr4)) {
                    this.t = Util.p(strArr[i31], StandardCharsets.UTF_8);
                    break;
                }
                i31++;
            }
            int i32 = i30 + 1;
            int i33 = i30 + 2;
            int i34 = bArr[i32];
            int i35 = i34 & 255;
            if ((i34 & 128) != 0) {
                int i36 = i34 & 127;
                i35 = 0;
                while (true) {
                    int i37 = i36 - 1;
                    if (i36 <= 0) {
                        break;
                    }
                    int i38 = (i35 << 8) + (bArr[i33] & 255);
                    i33++;
                    i35 = i38;
                    i36 = i37;
                }
            }
            byte[] bArr6 = new byte[i35];
            System.arraycopy(bArr, i33, bArr6, 0, i35);
            byte[][] bArrY2 = y(bArr6);
            this.u = bArrY2[0];
            this.v = bArrY2[1];
            byte[] bArr7 = this.w;
            if (bArr7 != null) {
                if (bArr7.length >= 64) {
                    i3 = 521;
                } else if (bArr7.length >= 48) {
                    i3 = 384;
                }
                this.x = i3;
            }
            return true;
        } catch (Exception e2) {
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to parse key", e2);
            }
            return false;
        }
    }

    public KeyPairECDSA(JSch.InstanceLogger instanceLogger) {
        this(instanceLogger, null, null, null, null);
    }

    public KeyPairECDSA(JSch.InstanceLogger instanceLogger, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(instanceLogger);
        this.t = Util.p(z[0], StandardCharsets.UTF_8);
        int i = 256;
        this.x = 256;
        if (bArr != null) {
            this.t = bArr;
        }
        this.u = bArr2;
        this.v = bArr3;
        this.w = bArr4;
        if (bArr4 != null) {
            if (bArr4.length >= 64) {
                i = 521;
            } else if (bArr4.length >= 48) {
                i = 384;
            }
            this.x = i;
        }
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
