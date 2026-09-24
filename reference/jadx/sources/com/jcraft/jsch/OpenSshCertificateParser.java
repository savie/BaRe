package com.jcraft.jsch;

import defpackage.c6;
import defpackage.dj7;
import defpackage.fz5;
import defpackage.l0;
import defpackage.x5;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class OpenSshCertificateParser {
    public static OpenSshCertificate a(JSch.InstanceLogger instanceLogger, byte[] bArr) throws JSchException {
        KeyPair keyPairRSA;
        int i;
        OpenSshCertificateBuffer openSshCertificateBuffer = new OpenSshCertificateBuffer(bArr);
        OpenSshCertificate.Builder builder = new OpenSshCertificate.Builder();
        byte[] string = openSshCertificateBuffer.getString();
        Charset charset = StandardCharsets.UTF_8;
        byte[] bArr2 = Util.a;
        String strTrim = new String(string, 0, string.length, charset).trim();
        builder.a = strTrim;
        builder.b = openSshCertificateBuffer.getString();
        strTrim.getClass();
        switch (strTrim) {
            case "ssh-rsa-cert-v01@openssh.com":
            case "rsa-sha2-512-cert-v01@openssh.com":
            case "rsa-sha2-256-cert-v01@openssh.com":
                keyPairRSA = new KeyPairRSA(instanceLogger, openSshCertificateBuffer.getMPInt(), openSshCertificateBuffer.getMPInt(), null);
                break;
            case "ssh-ed25519-cert-v01@openssh.com":
                int i2 = openSshCertificateBuffer.getInt();
                if (i2 != 32) {
                    throw new JSchException(fz5.j(i2, "Invalid Ed25519 public key length: expected 32, got "));
                }
                byte[] bArr3 = new byte[i2];
                openSshCertificateBuffer.c(bArr3, 0, i2);
                keyPairRSA = new KeyPairEd25519(instanceLogger, bArr3, null);
                break;
                break;
            case "ecdsa-sha2-nistp521-cert-v01@openssh.com":
            case "ecdsa-sha2-nistp384-cert-v01@openssh.com":
            case "ecdsa-sha2-nistp256-cert-v01@openssh.com":
                byte[] string2 = openSshCertificateBuffer.getString();
                int i3 = openSshCertificateBuffer.getInt();
                switch (strTrim) {
                    case "ecdsa-sha2-nistp521-cert-v01@openssh.com":
                        i = 133;
                        break;
                    case "ecdsa-sha2-nistp384-cert-v01@openssh.com":
                        i = 97;
                        break;
                    case "ecdsa-sha2-nistp256-cert-v01@openssh.com":
                        i = 65;
                        break;
                    default:
                        throw new JSchException("Unknown ECDSA certificate key type: ".concat(strTrim));
                }
                if (i3 != i) {
                    StringBuilder sbV = dj7.v("Invalid ECDSA public key length for ", strTrim, ": expected ", i, ", got ");
                    sbV.append(i3);
                    throw new JSchException(sbV.toString());
                }
                int i4 = openSshCertificateBuffer.getByte();
                if (i4 != 4) {
                    throw new JSchException("Invalid ECDSA public key format: expected uncompressed point (0x04), got 0x" + Integer.toHexString(i4 & 255));
                }
                int i5 = (i3 - 1) / 2;
                byte[] bArr4 = new byte[i5];
                byte[] bArr5 = new byte[i5];
                openSshCertificateBuffer.c(bArr4, 0, i5);
                openSshCertificateBuffer.c(bArr5, 0, i5);
                keyPairRSA = new KeyPairECDSA(instanceLogger, string2, bArr4, bArr5, null);
                break;
                break;
            case "ssh-ed448-cert-v01@openssh.com":
                int i6 = openSshCertificateBuffer.getInt();
                if (i6 != 57) {
                    throw new JSchException(fz5.j(i6, "Invalid Ed448 public key length: expected 57, got "));
                }
                byte[] bArr6 = new byte[i6];
                openSshCertificateBuffer.c(bArr6, 0, i6);
                keyPairRSA = new KeyPairEd448(instanceLogger, bArr6, null);
                break;
                break;
            case "ssh-dss-cert-v01@openssh.com":
                keyPairRSA = new KeyPairDSA(instanceLogger, openSshCertificateBuffer.getMPInt(), openSshCertificateBuffer.getMPInt(), openSshCertificateBuffer.getMPInt(), openSshCertificateBuffer.getMPInt(), null);
                break;
            default:
                throw new JSchException("Unsupported Algorithm for Certificate public key: ".concat(strTrim));
        }
        builder.c = keyPairRSA.getPublicKeyBlob();
        openSshCertificateBuffer.getLong();
        builder.d = openSshCertificateBuffer.getInt();
        byte[] string3 = openSshCertificateBuffer.getString();
        builder.e = new String(string3, 0, string3.length, charset);
        int i7 = openSshCertificateBuffer.getInt();
        if (i7 < 0) {
            c6.f(fz5.j(i7, "Invalid length in certificate data: negative length "));
            return null;
        }
        if (i7 > openSshCertificateBuffer.getLength()) {
            StringBuilder sbR = dj7.r(i7, "Invalid length in certificate data: requested ", " bytes but only ");
            sbR.append(openSshCertificateBuffer.getLength());
            sbR.append(" available");
            throw new IllegalArgumentException(sbR.toString());
        }
        byte[] bArr7 = new byte[i7];
        openSshCertificateBuffer.c(bArr7, 0, i7);
        OpenSshCertificateBuffer openSshCertificateBuffer2 = new OpenSshCertificateBuffer(bArr7);
        ArrayList arrayList = new ArrayList();
        while (openSshCertificateBuffer2.getLength() > 0) {
            byte[] string4 = openSshCertificateBuffer2.getString();
            Charset charset2 = StandardCharsets.UTF_8;
            byte[] bArr8 = Util.a;
            arrayList.add(new String(string4, 0, string4.length, charset2));
        }
        builder.f = arrayList;
        builder.g = openSshCertificateBuffer.getLong();
        builder.h = openSshCertificateBuffer.getLong();
        builder.i = openSshCertificateBuffer.i();
        openSshCertificateBuffer.i();
        byte[] string5 = openSshCertificateBuffer.getString();
        new String(string5, 0, string5.length, StandardCharsets.UTF_8);
        builder.j = openSshCertificateBuffer.getString();
        builder.l = Arrays.copyOfRange(openSshCertificateBuffer.b, 0, openSshCertificateBuffer.d);
        builder.k = openSshCertificateBuffer.getString();
        String str = builder.a;
        if (str == null || str.trim().isEmpty()) {
            l0.e("keyType is required and cannot be null or empty");
            return null;
        }
        byte[] bArr9 = builder.b;
        if (bArr9 == null || bArr9.length == 0) {
            l0.e("nonce is required and cannot be null or empty");
            return null;
        }
        byte[] bArr10 = builder.c;
        if (bArr10 == null || bArr10.length == 0) {
            l0.e("certificatePublicKey is required and cannot be null or empty");
            return null;
        }
        int i8 = builder.d;
        if (i8 != 1 && i8 != 2) {
            x5.g(builder.d, "type must be SSH2_CERT_TYPE_USER (1) or SSH2_CERT_TYPE_HOST (2), got: ");
            return null;
        }
        byte[] bArr11 = builder.j;
        if (bArr11 == null || bArr11.length == 0) {
            l0.e("signatureKey is required and cannot be null or empty");
            return null;
        }
        byte[] bArr12 = builder.k;
        if (bArr12 == null || bArr12.length == 0) {
            l0.e("signature is required and cannot be null or empty");
            return null;
        }
        byte[] bArr13 = builder.l;
        if (bArr13 == null || bArr13.length == 0) {
            l0.e("message is required and cannot be null or empty");
            return null;
        }
        OpenSshCertificate openSshCertificate = new OpenSshCertificate(builder);
        if (openSshCertificateBuffer.d == openSshCertificateBuffer.c) {
            return openSshCertificate;
        }
        throw new JSchException("Cannot read OpenSSH certificate, got more data than expected: " + openSshCertificateBuffer.d + ", actual: " + openSshCertificateBuffer.c + ". ID of the ca certificate: " + openSshCertificate.d);
    }
}
