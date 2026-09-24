package com.jcraft.jsch;

import defpackage.e6;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class KeyPairEdDSA extends KeyPair {
    public byte[] t;
    public byte[] u;

    public KeyPairEdDSA(JSch.InstanceLogger instanceLogger, byte[] bArr, byte[] bArr2) {
        super(instanceLogger);
        this.t = bArr;
        this.u = bArr2;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final void dispose() {
        Util.e(this.u);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] forSSHAgent() throws JSchException {
        if (this.i) {
            e6.h("key is encrypted.");
            return null;
        }
        Buffer buffer = new Buffer();
        buffer.putString(k());
        buffer.putString(this.t);
        byte[] bArr = this.u;
        int length = bArr.length + this.t.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        byte[] bArr3 = this.t;
        System.arraycopy(bArr3, 0, bArr2, this.u.length, bArr3.length);
        buffer.putString(bArr2, 0, length);
        buffer.putString(Util.p(this.b, StandardCharsets.UTF_8));
        int length2 = buffer.getLength();
        byte[] bArr4 = new byte[length2];
        buffer.c(bArr4, 0, length2);
        return bArr4;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getPublicKeyBlob() {
        byte[] bArr = this.l;
        if (bArr != null) {
            return bArr;
        }
        if (this.t == null) {
            return null;
        }
        return Buffer.b(new byte[][]{k(), this.t}).b;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getSignature(byte[] bArr, String str) {
        try {
            SignatureEdDSA signatureEdDSA = (SignatureEdDSA) Class.forName(JSch.getConfig(str)).asSubclass(SignatureEdDSA.class).getDeclaredConstructor(null).newInstance(null);
            signatureEdDSA.init();
            signatureEdDSA.setPrvKey(this.u);
            signatureEdDSA.update(bArr);
            byte[] bArrSign = signatureEdDSA.sign();
            byte[] bArr2 = Util.a;
            return Buffer.b(new byte[][]{str.getBytes(StandardCharsets.UTF_8), bArrSign}).b;
        } catch (Exception | LinkageError e) {
            JSch.InstanceLogger instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to generate signature", e);
            }
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0050  */
    @Override // com.jcraft.jsch.KeyPair
    public final Signature getVerifier(String str) {
        JSch.InstanceLogger instanceLogger;
        try {
            SignatureEdDSA signatureEdDSA = (SignatureEdDSA) Class.forName(JSch.getConfig(str)).asSubclass(SignatureEdDSA.class).getDeclaredConstructor(null).newInstance(null);
            signatureEdDSA.init();
            if (this.t == null && getPublicKeyBlob() != null) {
                Buffer buffer = new Buffer(getPublicKeyBlob());
                buffer.getString();
                this.t = buffer.getString();
            }
            signatureEdDSA.setPubKey(this.t);
            return signatureEdDSA;
        } catch (Exception e) {
            e = e;
            instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to create verifier", e);
            }
            return null;
        } catch (LinkageError e2) {
            e = e2;
            instanceLogger = this.c;
            if (instanceLogger.a().isEnabled(3)) {
                instanceLogger.a().log(3, "failed to create verifier", e);
            }
            return null;
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final void h(int i) throws JSchException {
        try {
            KeyPairGenEdDSA keyPairGenEdDSA = (KeyPairGenEdDSA) Class.forName(JSch.getConfig("keypairgen.eddsa")).asSubclass(KeyPairGenEdDSA.class).getDeclaredConstructor(null).newInstance(null);
            keyPairGenEdDSA.init(y(), getKeySize());
            this.t = keyPairGenEdDSA.getPub();
            this.u = keyPairGenEdDSA.getPrv();
        } catch (Exception | LinkageError e) {
            throw new JSchException(e.toString(), e);
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] i() {
        throw new UnsupportedOperationException();
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] j() {
        throw new UnsupportedOperationException();
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] k() {
        String strZ = z();
        byte[] bArr = Util.a;
        return strZ.getBytes(StandardCharsets.UTF_8);
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] l() throws Throwable {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArrK = k();
        byte[] bArr3 = null;
        buffer = null;
        Buffer buffer = null;
        if (bArrK == null || (bArr = this.t) == null || (bArr2 = this.u) == null) {
            return null;
        }
        try {
            int length = bArr2.length + bArr.length;
            byte[] bArr4 = new byte[length];
            try {
                try {
                    System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length);
                    byte[] bArr5 = this.t;
                    System.arraycopy(bArr5, 0, bArr4, this.u.length, bArr5.length);
                    Buffer buffer2 = new Buffer(length + 4 + this.t.length + 4 + bArrK.length + 4);
                    try {
                        buffer2.putString(bArrK, 0, bArrK.length);
                        buffer2.putString(this.t);
                        buffer2.putString(bArr4, 0, length);
                        byte[] bArr6 = buffer2.b;
                        Util.e(bArr4);
                        return bArr6;
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
            } catch (Throwable th) {
                th = th;
                bArr3 = bArr4;
                Util.e(bArr3);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] m() {
        throw new UnsupportedOperationException();
    }

    @Override // com.jcraft.jsch.KeyPair
    public final boolean s(byte[] bArr) {
        int i = this.a;
        JSch.InstanceLogger instanceLogger = this.c;
        if (i == 2 || i == 5) {
            Buffer buffer = new Buffer(bArr);
            buffer.h(bArr.length);
            try {
                this.u = buffer.d(1, "")[0];
                return true;
            } catch (JSchException e) {
                if (instanceLogger.a().isEnabled(3)) {
                    instanceLogger.a().log(3, "failed to parse key", e);
                }
            }
        } else if (i == 4) {
            try {
                Buffer buffer2 = new Buffer(bArr);
                if (buffer2.getInt() != buffer2.getInt()) {
                    throw new JSchException("check failed");
                }
                Util.c(buffer2.getString());
                this.t = buffer2.getString();
                this.u = Arrays.copyOf(buffer2.getString(), getKeySize());
                byte[] string = buffer2.getString();
                this.b = new String(string, 0, string.length, StandardCharsets.UTF_8);
                return true;
            } catch (Exception e2) {
                if (instanceLogger.a().isEnabled(3)) {
                    instanceLogger.a().log(3, "failed to parse key", e2);
                }
            }
        } else if (i == 3) {
            try {
                KeyPairGenEdDSA keyPairGenEdDSA = (KeyPairGenEdDSA) Class.forName(JSch.getConfig("keypairgen_fromprivate.eddsa")).asSubclass(KeyPairGenEdDSA.class).getDeclaredConstructor(null).newInstance(null);
                keyPairGenEdDSA.init(y(), bArr);
                this.t = keyPairGenEdDSA.getPub();
                this.u = keyPairGenEdDSA.getPrv();
                return true;
            } catch (Exception | LinkageError e3) {
                if (instanceLogger.a().isEnabled(3)) {
                    instanceLogger.a().log(3, "failed to parse key", e3);
                }
            }
        } else if (instanceLogger.a().isEnabled(3)) {
            instanceLogger.a().log(3, "failed to parse key");
            return false;
        }
        return false;
    }

    public abstract String y();

    public abstract String z();

    @Override // com.jcraft.jsch.KeyPair
    public final byte[] getSignature(byte[] bArr) {
        return getSignature(bArr, z());
    }

    @Override // com.jcraft.jsch.KeyPair
    public final Signature getVerifier() {
        return getVerifier(z());
    }
}
