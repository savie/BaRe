package com.nimbusds.jose.crypto.impl;

import com.google.crypto.tink.subtle.X25519;
import com.nimbusds.jose.EncryptionMethod;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.JWEHeader;
import com.nimbusds.jose.jwk.Curve;
import com.nimbusds.jose.jwk.OctetKeyPair;
import defpackage.c6;
import defpackage.f6;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.interfaces.ECPublicKey;
import javax.crypto.KeyAgreement;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ECDH {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum AlgorithmMode {
        DIRECT,
        KW
    }

    private ECDH() {
    }

    public static SecretKey deriveSharedKey(JWEHeader jWEHeader, SecretKey secretKey, ConcatKDF concatKDF) throws JOSEException {
        String name;
        int iSharedKeyLength = sharedKeyLength(jWEHeader.getAlgorithm(), jWEHeader.getEncryptionMethod());
        AlgorithmMode algorithmModeResolveAlgorithmMode = resolveAlgorithmMode(jWEHeader.getAlgorithm());
        if (algorithmModeResolveAlgorithmMode == AlgorithmMode.DIRECT) {
            name = jWEHeader.getEncryptionMethod().getName();
        } else {
            if (algorithmModeResolveAlgorithmMode != AlgorithmMode.KW) {
                c6.e(algorithmModeResolveAlgorithmMode, "Unsupported JWE ECDH algorithm mode: ");
                return null;
            }
            name = jWEHeader.getAlgorithm().getName();
        }
        return concatKDF.deriveKey(secretKey, iSharedKeyLength, ConcatKDF.encodeDataWithLength(name.getBytes(StandardCharsets.US_ASCII)), ConcatKDF.encodeDataWithLength(jWEHeader.getAgreementPartyUInfo()), ConcatKDF.encodeDataWithLength(jWEHeader.getAgreementPartyVInfo()), ConcatKDF.encodeIntData(iSharedKeyLength), ConcatKDF.encodeNoData());
    }

    public static SecretKey deriveSharedSecret(OctetKeyPair octetKeyPair, OctetKeyPair octetKeyPair2) throws JOSEException {
        if (octetKeyPair.isPrivate()) {
            f6.j("Expected public key but received OKP with 'd' value");
            return null;
        }
        Curve curve = Curve.X25519;
        if (!curve.equals(octetKeyPair.getCurve())) {
            f6.j("Expected public key OKP with crv=X25519");
            return null;
        }
        if (!octetKeyPair2.isPrivate()) {
            f6.j("Expected private key but received OKP without 'd' value");
            return null;
        }
        if (!curve.equals(octetKeyPair2.getCurve())) {
            f6.j("Expected private key OKP with crv=X25519");
            return null;
        }
        try {
            return new SecretKeySpec(X25519.computeSharedSecret(octetKeyPair2.getDecodedD(), octetKeyPair.getDecodedX()), "AES");
        } catch (InvalidKeyException e) {
            throw new JOSEException(e.getMessage(), e);
        }
    }

    public static AlgorithmMode resolveAlgorithmMode(JWEAlgorithm jWEAlgorithm) throws JOSEException {
        if (jWEAlgorithm.equals(JWEAlgorithm.ECDH_ES)) {
            return AlgorithmMode.DIRECT;
        }
        if (jWEAlgorithm.equals(JWEAlgorithm.ECDH_ES_A128KW) || jWEAlgorithm.equals(JWEAlgorithm.ECDH_ES_A192KW) || jWEAlgorithm.equals(JWEAlgorithm.ECDH_ES_A256KW)) {
            return AlgorithmMode.KW;
        }
        throw new JOSEException(AlgorithmSupportMessage.unsupportedJWEAlgorithm(jWEAlgorithm, ECDHCryptoProvider.SUPPORTED_ALGORITHMS));
    }

    public static int sharedKeyLength(JWEAlgorithm jWEAlgorithm, EncryptionMethod encryptionMethod) throws JOSEException {
        if (jWEAlgorithm.equals(JWEAlgorithm.ECDH_ES)) {
            int iCekBitLength = encryptionMethod.cekBitLength();
            if (iCekBitLength != 0) {
                return iCekBitLength;
            }
            c6.e(encryptionMethod, "Unsupported JWE encryption method ");
            return 0;
        }
        if (jWEAlgorithm.equals(JWEAlgorithm.ECDH_ES_A128KW)) {
            return 128;
        }
        if (jWEAlgorithm.equals(JWEAlgorithm.ECDH_ES_A192KW)) {
            return XC20P.IV_BIT_LENGTH;
        }
        if (jWEAlgorithm.equals(JWEAlgorithm.ECDH_ES_A256KW)) {
            return 256;
        }
        throw new JOSEException(AlgorithmSupportMessage.unsupportedJWEAlgorithm(jWEAlgorithm, ECDHCryptoProvider.SUPPORTED_ALGORITHMS));
    }

    public static SecretKey deriveSharedSecret(ECPublicKey eCPublicKey, PrivateKey privateKey, Provider provider) throws JOSEException {
        KeyAgreement keyAgreement;
        try {
            if (provider != null) {
                keyAgreement = KeyAgreement.getInstance("ECDH", provider);
            } else {
                keyAgreement = KeyAgreement.getInstance("ECDH");
            }
            try {
                keyAgreement.init(privateKey);
                keyAgreement.doPhase(eCPublicKey, true);
                return new SecretKeySpec(keyAgreement.generateSecret(), "AES");
            } catch (InvalidKeyException e) {
                throw new JOSEException("Invalid key for ECDH key agreement: " + e.getMessage(), e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new JOSEException("Couldn't get an ECDH key agreement instance: " + e2.getMessage(), e2);
        }
    }
}
