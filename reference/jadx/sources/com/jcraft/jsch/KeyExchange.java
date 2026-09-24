package com.jcraft.jsch;

import defpackage.a6;
import defpackage.dj7;
import defpackage.eq3;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class KeyExchange {
    public static final int STATE_END = 0;
    public static final String[] i = {"KEX algorithms", "host key algorithms", "ciphers c2s", "ciphers s2c", "MACs c2s", "MACs s2c", "compression c2s", "compression s2c", "languages c2s", "languages s2c"};
    public Session a = null;
    public HASH b = null;
    public byte[] c = null;
    public byte[] d = null;
    public byte[] e = null;
    public OpenSshCertificate f = null;
    public int g = 0;
    public String h = "";

    public static byte[] a(byte[] bArr, boolean z) {
        int i2 = (bArr[0] & 128) >>> 7;
        int length = bArr.length + i2;
        byte[] bArr2 = new byte[length + 4];
        byte[] bArr3 = new byte[i2 ^ 1];
        bArr2[0] = (byte) (length >>> 24);
        bArr2[1] = (byte) (length >>> 16);
        bArr2[2] = (byte) (length >>> 8);
        bArr2[3] = (byte) length;
        System.arraycopy(bArr, 0, bArr2, i2 + 4, length - i2);
        if (z) {
            Util.e(bArr);
        }
        return bArr2;
    }

    public static byte[] b(byte[] bArr, boolean z) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 4];
        bArr2[0] = (byte) (length >>> 24);
        bArr2[1] = (byte) (length >>> 16);
        bArr2[2] = (byte) (length >>> 8);
        bArr2[3] = (byte) length;
        System.arraycopy(bArr, 0, bArr2, 4, length);
        if (z) {
            Util.e(bArr);
        }
        return bArr2;
    }

    public static byte[] c(int i2) {
        return new byte[]{(byte) (i2 >>> 24), (byte) (i2 >>> 16), (byte) (i2 >>> 8), (byte) i2};
    }

    public static byte[] d(byte[] bArr) {
        int length = bArr.length;
        if (length < 2) {
            return bArr;
        }
        int i2 = bArr[0] & 255;
        int i3 = 0;
        for (int i4 = 0; i4 < 8; i4++) {
            i3 |= (i2 >>> i4) & 1;
        }
        int i5 = i3 ^ 1;
        int i6 = 0;
        for (int i7 = 1; i7 < length; i7++) {
            int i8 = bArr[i7];
            i5 &= ((i8 & 128) >>> 7) ^ 1;
            i6 += i5;
            int i9 = i8 & 127;
            for (int i10 = 0; i10 < 7; i10++) {
                i5 &= ((i9 >>> i10) & 1) ^ 1;
            }
        }
        int i11 = length - i6;
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, 0, new byte[i6], 0, i6);
        System.arraycopy(bArr, i6, bArr2, 0, i11);
        Util.e(bArr);
        return bArr2;
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:117)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public final boolean e(String str, byte[] bArr, int i2, byte[] bArr2) {
        byte[] bArr3;
        String strD;
        int i3;
        switch (str) {
            case "ssh-rsa-cert-v01@openssh.com":
            case "ssh-ed25519-cert-v01@openssh.com":
            case "rsa-sha2-512-cert-v01@openssh.com":
            case "ecdsa-sha2-nistp521-cert-v01@openssh.com":
            case "ssh-ed448-cert-v01@openssh.com":
            case "rsa-sha2-256-cert-v01@openssh.com":
            case "ssh-dss-cert-v01@openssh.com":
            case "ecdsa-sha2-nistp384-cert-v01@openssh.com":
            case "ecdsa-sha2-nistp256-cert-v01@openssh.com":
                OpenSshCertificate openSshCertificateA = OpenSshCertificateParser.a(this.a.k0.a, bArr);
                String str2 = openSshCertificateA.d;
                if (2 != openSshCertificateA.c) {
                    StringBuilder sbU = dj7.u("Rejected certificate '", str2, "': user certificate presented for host authentication. Host: ");
                    sbU.append(this.a.f0);
                    throw new JSchInvalidHostCertificateException(sbU.toString());
                }
                byte[] bArr4 = openSshCertificateA.b;
                bArr3 = bArr4 == null ? null : (byte[]) bArr4.clone();
                if (bArr3 == null) {
                    throw new JSchException(eq3.k("Invalid certificate '", str2, "': missing public key"));
                }
                int i4 = (bArr3[3] & 255) | ((bArr3[0] << 24) & (-16777216)) | ((bArr3[1] << 16) & 16711680) | ((bArr3[2] << 8) & 65280);
                strD = Util.d(bArr3, 4, i4);
                i3 = i4 + 4;
                this.f = openSshCertificateA;
                break;
                break;
            default:
                bArr3 = bArr;
                i3 = i2;
                strD = str;
                break;
        }
        if (strD.equals("ssh-rsa")) {
            this.g = 0;
            this.h = strD;
            int i5 = i3 + 3;
            int i6 = ((bArr3[i3 + 1] << 16) & 16711680) | ((bArr3[i3] << 24) & (-16777216)) | ((bArr3[i3 + 2] << 8) & 65280);
            int i7 = i3 + 4;
            int i8 = i6 | (bArr3[i5] & 255);
            byte[] bArr5 = new byte[i8];
            System.arraycopy(bArr3, i7, bArr5, 0, i8);
            int i9 = i7 + i8;
            int i10 = ((bArr3[i9 + 1] << 16) & 16711680) | ((bArr3[i9] << 24) & (-16777216)) | ((bArr3[i9 + 2] << 8) & 65280) | (bArr3[i9 + 3] & 255);
            byte[] bArr6 = new byte[i10];
            System.arraycopy(bArr3, i9 + 4, bArr6, 0, i10);
            byte[] string = new Buffer(bArr2).getString();
            byte[] bArr7 = Util.a;
            String str3 = new String(string, 0, string.length, StandardCharsets.UTF_8);
            try {
                SignatureRSA signatureRSA = (SignatureRSA) Class.forName(this.a.getConfig(str3)).asSubclass(SignatureRSA.class).getDeclaredConstructor(null).newInstance(null);
                signatureRSA.init();
                signatureRSA.setPubKey(bArr5, bArr6);
                signatureRSA.update(this.d);
                boolean zVerify = signatureRSA.verify(bArr2);
                if (this.a.getLogger().isEnabled(1)) {
                    this.a.getLogger().log(1, "ssh_rsa_verify: " + str3 + " signature " + zVerify);
                }
                return zVerify;
            } catch (Exception e) {
                a6.f(e);
                return false;
            }
        }
        if (strD.equals("ssh-dss")) {
            this.g = 1;
            this.h = strD;
            int i11 = i3 + 3;
            int i12 = ((bArr3[i3 + 1] << 16) & 16711680) | ((bArr3[i3] << 24) & (-16777216)) | ((bArr3[i3 + 2] << 8) & 65280);
            int i13 = i3 + 4;
            int i14 = i12 | (bArr3[i11] & 255);
            byte[] bArr8 = new byte[i14];
            System.arraycopy(bArr3, i13, bArr8, 0, i14);
            int i15 = i13 + i14;
            int i16 = i15 + 3;
            int i17 = ((bArr3[i15 + 1] << 16) & 16711680) | ((bArr3[i15] << 24) & (-16777216)) | ((bArr3[i15 + 2] << 8) & 65280);
            int i18 = i15 + 4;
            int i19 = i17 | (bArr3[i16] & 255);
            byte[] bArr9 = new byte[i19];
            System.arraycopy(bArr3, i18, bArr9, 0, i19);
            int i20 = i18 + i19;
            int i21 = i20 + 3;
            int i22 = ((bArr3[i20 + 1] << 16) & 16711680) | ((bArr3[i20] << 24) & (-16777216)) | ((bArr3[i20 + 2] << 8) & 65280);
            int i23 = i20 + 4;
            int i24 = i22 | (bArr3[i21] & 255);
            byte[] bArr10 = new byte[i24];
            System.arraycopy(bArr3, i23, bArr10, 0, i24);
            int i25 = i23 + i24;
            int i26 = ((bArr3[i25 + 1] << 16) & 16711680) | ((bArr3[i25] << 24) & (-16777216)) | ((bArr3[i25 + 2] << 8) & 65280) | (bArr3[i25 + 3] & 255);
            byte[] bArr11 = new byte[i26];
            System.arraycopy(bArr3, i25 + 4, bArr11, 0, i26);
            try {
                SignatureDSA signatureDSA = (SignatureDSA) Class.forName(this.a.getConfig("signature.dss")).asSubclass(SignatureDSA.class).getDeclaredConstructor(null).newInstance(null);
                signatureDSA.init();
                signatureDSA.setPubKey(bArr11, bArr8, bArr9, bArr10);
                signatureDSA.update(this.d);
                boolean zVerify2 = signatureDSA.verify(bArr2);
                if (this.a.getLogger().isEnabled(1)) {
                    this.a.getLogger().log(1, "ssh_dss_verify: signature " + zVerify2);
                }
                return zVerify2;
            } catch (Exception e2) {
                a6.f(e2);
                return false;
            }
        }
        if (!strD.equals("ecdsa-sha2-nistp256") && !strD.equals("ecdsa-sha2-nistp384") && !strD.equals("ecdsa-sha2-nistp521")) {
            if (!strD.equals("ssh-ed25519") && !strD.equals("ssh-ed448")) {
                if (this.a.getLogger().isEnabled(3)) {
                    this.a.getLogger().log(3, "unknown alg: ".concat(strD));
                }
                return false;
            }
            this.g = 3;
            this.h = strD;
            int i27 = ((bArr3[i3 + 1] << 16) & 16711680) | ((bArr3[i3] << 24) & (-16777216)) | ((bArr3[i3 + 2] << 8) & 65280) | (bArr3[i3 + 3] & 255);
            byte[] bArr12 = new byte[i27];
            System.arraycopy(bArr3, i3 + 4, bArr12, 0, i27);
            try {
                SignatureEdDSA signatureEdDSA = (SignatureEdDSA) Class.forName(this.a.getConfig(strD)).asSubclass(SignatureEdDSA.class).getDeclaredConstructor(null).newInstance(null);
                signatureEdDSA.init();
                signatureEdDSA.setPubKey(bArr12);
                signatureEdDSA.update(this.d);
                boolean zVerify3 = signatureEdDSA.verify(bArr2);
                if (this.a.getLogger().isEnabled(1)) {
                    this.a.getLogger().log(1, "ssh_eddsa_verify: " + strD + " signature " + zVerify3);
                }
                return zVerify3;
            } catch (Exception | LinkageError e3) {
                throw new JSchException(e3.toString(), e3);
            }
        }
        this.g = 2;
        this.h = strD;
        int i28 = i3 + 3;
        int i29 = ((bArr3[i3 + 1] << 16) & 16711680) | ((bArr3[i3] << 24) & (-16777216)) | ((bArr3[i3 + 2] << 8) & 65280);
        int i30 = i3 + 4;
        int i31 = i29 | (bArr3[i28] & 255);
        System.arraycopy(bArr3, i30, new byte[i31], 0, i31);
        int i32 = i30 + i31;
        int i33 = ((bArr3[i32 + 1] << 16) & 16711680) | ((bArr3[i32] << 24) & (-16777216)) | ((bArr3[i32 + 2] << 8) & 65280) | (bArr3[i32 + 3] & 255);
        int i34 = i32 + 5;
        int i35 = (i33 - 1) / 2;
        byte[] bArr13 = new byte[i35];
        System.arraycopy(bArr3, i34, bArr13, 0, i35);
        byte[] bArr14 = new byte[i35];
        System.arraycopy(bArr3, i34 + i35, bArr14, 0, i35);
        try {
            SignatureECDSA signatureECDSA = (SignatureECDSA) Class.forName(this.a.getConfig(strD)).asSubclass(SignatureECDSA.class).getDeclaredConstructor(null).newInstance(null);
            signatureECDSA.init();
            signatureECDSA.setPubKey(bArr13, bArr14);
            signatureECDSA.update(this.d);
            boolean zVerify4 = signatureECDSA.verify(bArr2);
            if (this.a.getLogger().isEnabled(1)) {
                this.a.getLogger().log(1, "ssh_ecdsa_verify: " + strD + " signature " + zVerify4);
            }
            return zVerify4;
        } catch (Exception e4) {
            a6.f(e4);
            return false;
        }
    }

    public final String getFingerPrint() {
        HASH hash = null;
        try {
            hash = (HASH) Class.forName(this.a.getConfig(this.a.getConfig("FingerprintHash").toLowerCase(Locale.ROOT))).asSubclass(HASH.class).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception e) {
            if (this.a.getLogger().isEnabled(3)) {
                this.a.getLogger().log(3, "getFingerPrint: " + e.getMessage(), e);
            }
        }
        return Util.k(hash, this.e);
    }

    public final String getKeyAlgorithName() {
        return this.h;
    }

    public final String getKeyType() {
        int i2 = this.g;
        if (i2 == 1) {
            return "DSA";
        }
        if (i2 == 0) {
            return "RSA";
        }
        return i2 == 3 ? "EDDSA" : "ECDSA";
    }

    public abstract int getState();

    public abstract void init(Session session, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws Exception;

    public abstract boolean next(Buffer buffer) throws Exception;
}
