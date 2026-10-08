package com.jcraft.jsch;

import defpackage.bu5;
import defpackage.cu5;
import defpackage.dj7;
import defpackage.e6;
import defpackage.eq3;
import defpackage.fz5;
import defpackage.i23;
import defpackage.xs1;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class OpenSshCertificateHostKeyVerifier {
    public static void a(Session session, OpenSshCertificate openSshCertificate) {
        final String string;
        byte[][] bArr;
        byte[] bArr2 = openSshCertificate.i;
        final byte[] bArr3 = bArr2 == null ? null : (byte[]) bArr2.clone();
        String str = session.f0;
        if (str == null) {
            e6.h("Cannot verify host certificate: session host is null");
            return;
        }
        String str2 = session.U;
        if (str2 != null) {
            string = str2;
        } else if (session.h0 != 22) {
            StringBuilder sbU = dj7.u("[", str, "]:");
            sbU.append(session.h0);
            string = sbU.toString();
        } else {
            string = str;
        }
        final HostKeyRepository hostKeyRepository = session.getHostKeyRepository();
        byte[] bArr4 = openSshCertificate.b;
        final byte[] bArr5 = bArr4 == null ? null : (byte[]) bArr4.clone();
        if (bArr5 != null && OpenSshCertificateUtil.b(hostKeyRepository).stream().filter(new i23(1)).map(new bu5(0)).filter(new cu5(0)).anyMatch(new Predicate() { // from class: com.jcraft.jsch.g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Util.b((byte[]) obj, bArr5);
            }
        })) {
            throw new JSchRevokedHostKeyException(eq3.n(new StringBuilder("Rejected certificate '"), openSshCertificate.d, "': host certificate public key is marked as revoked for ", string));
        }
        if (OpenSshCertificateUtil.c(hostKeyRepository).stream().filter(new i23(1)).filter(new Predicate() { // from class: com.jcraft.jsch.h
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return OpenSshCertificateUtil.d(hostKeyRepository, (HostKey) obj);
            }
        }).anyMatch(new Predicate() { // from class: com.jcraft.jsch.i
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                HostKey hostKey = (HostKey) obj;
                byte[] bArr6 = hostKey.d;
                return bArr6 != null && hostKey.b(string) && Util.b(bArr6, bArr3);
            }
        })) {
            throw new JSchRevokedHostKeyException("Rejected certificate: signing CA key has been revoked for ".concat(string));
        }
        if (!OpenSshCertificateUtil.c(hostKeyRepository).stream().filter(new i23(1)).filter(new Predicate() { // from class: com.jcraft.jsch.j
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return !OpenSshCertificateUtil.d(hostKeyRepository, (HostKey) obj);
            }
        }).anyMatch(new Predicate() { // from class: com.jcraft.jsch.k
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                HostKey hostKey = (HostKey) obj;
                byte[] bArr6 = hostKey.d;
                return bArr6 != null && hostKey.b(string) && Util.b(bArr6, bArr3);
            }
        })) {
            throw new JSchUnknownCAKeyException(eq3.n(new StringBuilder("Rejected certificate '"), openSshCertificate.d, "': Certification Authority not in the known hosts or revoked for ", string));
        }
        byte[] string2 = new Buffer(bArr3).getString();
        int length = string2.length;
        Charset charset = StandardCharsets.UTF_8;
        String str3 = new String(string2, 0, length, charset);
        String str4 = openSshCertificate.d;
        if (2 != openSshCertificate.c) {
            throw new JSchInvalidHostCertificateException(dj7.l("rejected HostKey: certificate id='", str4, "' is not a host certificate. Host:", str));
        }
        long epochSecond = Instant.now().getEpochSecond();
        if (Long.compareUnsigned(openSshCertificate.f, epochSecond) > 0 || Long.compareUnsigned(epochSecond, openSshCertificate.g) >= 0) {
            throw new JSchInvalidHostCertificateException(xs1.j("rejected HostKey: certificate not valid (expired or not yet valid) for id:", str4));
        }
        byte[] bArr6 = openSshCertificate.j;
        byte[] string3 = new Buffer(bArr6 == null ? null : (byte[]) bArr6.clone()).getString();
        byte[] bArr7 = Util.a;
        String str5 = new String(string3, 0, string3.length, charset);
        if (!str3.equals(str5)) {
            throw new JSchInvalidHostCertificateException(eq3.l("rejected HostKey: signature verification failed, signature algorithm: '", str5, "' - CA public Key algorithm: '", str3, "'"));
        }
        String config = session.getConfig("ca_signature_algorithms");
        for (String str6 : (config == null || config.isEmpty()) ? new String[0] : Util.o(config)) {
            if (str6.equals(str5)) {
                String[] strArr = session.s0;
                if (strArr != null) {
                    for (String str7 : strArr) {
                        if (str7.equals(str5)) {
                            throw new JSchException(eq3.k("CA signature algorithm '", str5, "' is not available at runtime. This may be due to missing cryptographic provider support (e.g., Ed25519 on Java 8 without Bouncy Castle)."));
                        }
                    }
                }
                SignatureWrapper signatureWrapper = new SignatureWrapper(str5, session);
                byte[] bArr8 = openSshCertificate.i;
                Buffer buffer = new Buffer(bArr8 == null ? null : (byte[]) bArr8.clone());
                byte[] string4 = buffer.getString();
                byte[] bArr9 = Util.a;
                String str8 = new String(string4, 0, string4.length, StandardCharsets.UTF_8);
                if (str8.startsWith("ssh-rsa") || str8.startsWith("rsa-")) {
                    bArr = new byte[][]{buffer.getMPInt(), buffer.getMPInt()};
                } else if (str8.startsWith("ssh-dss")) {
                    bArr = new byte[][]{buffer.getMPInt(), buffer.getMPInt(), buffer.getMPInt(), buffer.getMPInt()};
                } else if (str8.startsWith("ecdsa-sha2-")) {
                    buffer.getString();
                    int i = buffer.getInt();
                    if (i < 65 || i > 133) {
                        throw new JSchException(xs1.h(i, "Invalid ECDSA public key length: ", " (expected between 65 and 133)"));
                    }
                    int i2 = buffer.getByte();
                    if (i2 != 4) {
                        throw new JSchException("Invalid ECDSA public key format: expected uncompressed point (0x04), got 0x" + Integer.toHexString(i2 & 255));
                    }
                    int i3 = (i - 1) / 2;
                    byte[] bArr10 = new byte[i3];
                    byte[] bArr11 = new byte[i3];
                    buffer.c(bArr10, 0, i3);
                    buffer.c(bArr11, 0, i3);
                    bArr = new byte[][]{bArr10, bArr11};
                } else if (str8.startsWith("ssh-ed25519")) {
                    int i4 = buffer.getInt();
                    if (i4 != 32) {
                        throw new JSchException(fz5.j(i4, "Invalid Ed25519 public key length: expected 32, got "));
                    }
                    byte[] bArr12 = new byte[i4];
                    buffer.c(bArr12, 0, i4);
                    bArr = new byte[][]{bArr12};
                } else {
                    if (!str8.startsWith("ssh-ed448")) {
                        throw new JSchUnknownPublicKeyAlgorithmException("Unknown algorithm '" + str8.trim() + "'");
                    }
                    int i5 = buffer.getInt();
                    if (i5 != 57) {
                        throw new JSchException(fz5.j(i5, "Invalid Ed448 public key length: expected 57, got "));
                    }
                    byte[] bArr13 = new byte[i5];
                    buffer.c(bArr13, 0, i5);
                    bArr = new byte[][]{bArr13};
                }
                try {
                    signatureWrapper.init();
                    signatureWrapper.c.validatePublicKeyParameter(bArr);
                    signatureWrapper.b.setPubKey(bArr);
                    byte[] bArr14 = openSshCertificate.k;
                    signatureWrapper.update(bArr14 == null ? null : (byte[]) bArr14.clone());
                    byte[] bArr15 = openSshCertificate.j;
                    if (!signatureWrapper.a.verify(bArr15 == null ? null : (byte[]) bArr15.clone())) {
                        throw new JSchInvalidHostCertificateException("rejected HostKey: signature verification failed");
                    }
                    ArrayList arrayList = openSshCertificate.e;
                    Collection collectionUnmodifiableCollection = arrayList == null ? null : Collections.unmodifiableCollection(arrayList);
                    if (str2 != null) {
                        str = str2;
                    }
                    if (collectionUnmodifiableCollection == null || collectionUnmodifiableCollection.isEmpty()) {
                        throw new JSchException(eq3.k("rejected HostKey: invalid principal '", str, "', allowed principals list is null or empty."));
                    }
                    String lowerCase = str.toLowerCase(Locale.ROOT);
                    if (!collectionUnmodifiableCollection.contains(lowerCase)) {
                        throw new JSchException("rejected HostKey: invalid principal '" + lowerCase + "', allowed principals: " + collectionUnmodifiableCollection);
                    }
                    LinkedHashMap linkedHashMap = openSshCertificate.h;
                    Map mapUnmodifiableMap = linkedHashMap == null ? null : Collections.unmodifiableMap(linkedHashMap);
                    if (mapUnmodifiableMap == null || mapUnmodifiableMap.isEmpty()) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("rejected HostKey: unrecognized critical options ");
                    LinkedHashMap linkedHashMap2 = openSshCertificate.h;
                    sb.append(linkedHashMap2 != null ? Collections.unmodifiableMap(linkedHashMap2) : null);
                    throw new JSchInvalidHostCertificateException(sb.toString());
                } catch (Exception e) {
                    throw new JSchException("invalid signature key", e);
                }
            }
        }
        throw new JSchException(dj7.l("CA signature algorithm '", str5, "' is not in the allowed ca_signature_algorithms list: ", config));
    }
}
