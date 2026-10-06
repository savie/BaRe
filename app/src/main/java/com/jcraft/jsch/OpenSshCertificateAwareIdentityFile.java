package com.jcraft.jsch;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class OpenSshCertificateAwareIdentityFile implements Identity {
    public final OpenSshCertificate a;
    public final String b;
    public final byte[] c;
    public final KeyPair d;
    public final String e;

    private OpenSshCertificateAwareIdentityFile(String str, String str2, byte[] bArr, OpenSshCertificate openSshCertificate, KeyPair keyPair, String str3) {
        this.e = str;
        this.a = openSshCertificate;
        this.d = keyPair;
        this.b = str2;
        this.c = bArr;
    }

    public static boolean a(byte[] bArr) {
        byte[] bArrA;
        if (bArr == null || bArr.length == 0 || (bArrA = OpenSshCertificateUtil.a(bArr, 0)) == null || bArrA.length == 0 || bArrA.length > 100) {
            return false;
        }
        switch (new String(bArrA, StandardCharsets.UTF_8)) {
            case "ssh-rsa-cert-v01@openssh.com":
            case "ssh-ed25519-cert-v01@openssh.com":
            case "rsa-sha2-512-cert-v01@openssh.com":
            case "ecdsa-sha2-nistp521-cert-v01@openssh.com":
            case "ssh-ed448-cert-v01@openssh.com":
            case "rsa-sha2-256-cert-v01@openssh.com":
            case "ssh-dss-cert-v01@openssh.com":
            case "ecdsa-sha2-nistp384-cert-v01@openssh.com":
            case "ecdsa-sha2-nistp256-cert-v01@openssh.com":
                return true;
            default:
                return false;
        }
    }

    public static Identity b(String str, byte[] bArr, byte[] bArr2, JSch.InstanceLogger instanceLogger) {
        String str2;
        try {
            byte[] bArrA = OpenSshCertificateUtil.a(bArr2, 0);
            if (bArrA == null || bArrA.length == 0) {
                throw new JSchException("Invalid certificate file: missing or empty key type");
            }
            byte[] bArrA2 = OpenSshCertificateUtil.a(bArr2, 1);
            if (bArrA2 == null || bArrA2.length == 0) {
                throw new JSchException("Invalid certificate file: missing or empty key data");
            }
            byte[] bArrA3 = OpenSshCertificateUtil.a(bArr2, 2);
            byte[] bArrI = Util.i(bArrA2, 0, bArrA2.length);
            OpenSshCertificate openSshCertificateA = OpenSshCertificateParser.a(instanceLogger, bArrI);
            long j = openSshCertificateA.g;
            long j2 = openSshCertificateA.f;
            String str3 = openSshCertificateA.a;
            Charset charset = StandardCharsets.UTF_8;
            String str4 = new String(bArrA, 0, bArrA.length, charset);
            String str5 = bArrA3 != null ? new String(bArrA3, 0, bArrA3.length, charset) : null;
            if (str3 == null || str3.isEmpty() || !str3.equals(str4)) {
                instanceLogger.a().log(3, "Key type declared at the beginning of the certificate file, does not correspond to the encoded key type. Declared type: '" + str4 + "' - Encoded Key type: '" + str3 + "'");
                throw new JSchException("Certificate key type mismatch: declared type '" + str4 + "' does not match encoded type '" + str3 + "'");
            }
            long epochSecond = Instant.now().getEpochSecond();
            if (!(Long.compareUnsigned(j2, epochSecond) <= 0 && Long.compareUnsigned(epochSecond, j) < 0)) {
                Logger loggerA = instanceLogger.a();
                StringBuilder sb = new StringBuilder("certificate is not valid. Valid after: ");
                String str6 = "infinity";
                if (j2 < 0) {
                    str2 = "infinity";
                } else {
                    DateTimeFormatter dateTimeFormatter = SftpATTRS.i;
                    str2 = SftpATTRS.i.format(ZonedDateTime.ofInstant(Instant.ofEpochSecond(j2), ZoneId.systemDefault()));
                }
                sb.append(str2);
                sb.append(" - Valid before: ");
                if (j >= 0) {
                    DateTimeFormatter dateTimeFormatter2 = SftpATTRS.i;
                    str6 = SftpATTRS.i.format(ZonedDateTime.ofInstant(Instant.ofEpochSecond(j), ZoneId.systemDefault()));
                }
                sb.append(str6);
                loggerA.log(2, sb.toString());
            }
            byte[] bArr3 = openSshCertificateA.b;
            byte[] bArr4 = bArr3 == null ? null : (byte[]) bArr3.clone();
            if (bArr4 != null) {
                return new OpenSshCertificateAwareIdentityFile(str, str4, bArrI, openSshCertificateA, KeyPair.p(instanceLogger, bArr, bArr4), str5);
            }
            throw new JSchException("Invalid certificate: missing public key");
        } catch (IllegalArgumentException e) {
            throw new JSchException("Invalid certificate format: " + e.getMessage(), e);
        } catch (IllegalStateException e2) {
            throw new JSchException("Invalid certificate data: " + e2.getMessage(), e2);
        } catch (RuntimeException e3) {
            throw new JSchException("Unexpected error parsing certificate: " + e3.getMessage(), e3);
        }
    }

    @Override // com.jcraft.jsch.Identity
    public final void clear() {
        this.d.dispose();
    }

    @Override // com.jcraft.jsch.Identity
    public final String getAlgName() {
        return this.a.a;
    }

    @Override // com.jcraft.jsch.Identity
    public final String getName() {
        return this.e;
    }

    @Override // com.jcraft.jsch.Identity
    public final byte[] getPublicKeyBlob() {
        return this.c;
    }

    @Override // com.jcraft.jsch.Identity
    public final byte[] getSignature(byte[] bArr, String str) {
        String strA = OpenSshCertificateKeyTypes.a(str);
        String str2 = this.b;
        if (strA == null || strA.isEmpty()) {
            strA = OpenSshCertificateKeyTypes.a(str2);
        }
        if (strA != null) {
            str2 = strA;
        }
        return this.d.getSignature(bArr, str2);
    }

    @Override // com.jcraft.jsch.Identity
    public final boolean isEncrypted() {
        return this.d.i;
    }

    @Override // com.jcraft.jsch.Identity
    public final boolean setPassphrase(byte[] bArr) {
        return this.d.decrypt(bArr);
    }

    @Override // com.jcraft.jsch.Identity
    public final byte[] getSignature(byte[] bArr) {
        return this.d.getSignature(bArr);
    }
}
