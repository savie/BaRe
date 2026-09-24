package com.nimbusds.jose.crypto;

import com.nimbusds.jose.CriticalHeaderParamsAware;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.JWEDecrypter;
import com.nimbusds.jose.JWEHeader;
import com.nimbusds.jose.KeyLengthException;
import com.nimbusds.jose.crypto.impl.AAD;
import com.nimbusds.jose.crypto.impl.AESCryptoProvider;
import com.nimbusds.jose.crypto.impl.AESGCMKW;
import com.nimbusds.jose.crypto.impl.AESKW;
import com.nimbusds.jose.crypto.impl.AlgorithmSupportMessage;
import com.nimbusds.jose.crypto.impl.AuthenticatedCipherText;
import com.nimbusds.jose.crypto.impl.ContentCryptoProvider;
import com.nimbusds.jose.crypto.impl.CriticalHeaderParamsDeferral;
import com.nimbusds.jose.crypto.impl.JWEHeaderValidation;
import com.nimbusds.jose.jwk.OctetSequenceKey;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64URL;
import defpackage.f6;
import java.util.Set;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class AESDecrypter extends AESCryptoProvider implements JWEDecrypter, CriticalHeaderParamsAware {
    private final CriticalHeaderParamsDeferral critPolicy;

    public AESDecrypter(SecretKey secretKey, Set<String> set) throws KeyLengthException {
        super(secretKey, null);
        CriticalHeaderParamsDeferral criticalHeaderParamsDeferral = new CriticalHeaderParamsDeferral();
        this.critPolicy = criticalHeaderParamsDeferral;
        criticalHeaderParamsDeferral.setDeferredCriticalHeaderParams(set);
    }

    @Override // com.nimbusds.jose.JWEDecrypter
    public byte[] decrypt(JWEHeader jWEHeader, Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, Base64URL base64URL4, byte[] bArr) throws JOSEException {
        SecretKey secretKeyUnwrapCEK;
        if (base64URL == null) {
            f6.j("Missing JWE encrypted key");
            return null;
        }
        if (base64URL2 == null) {
            f6.j("Missing JWE initialization vector (IV)");
            return null;
        }
        if (base64URL4 == null) {
            f6.j("Missing JWE authentication tag");
            return null;
        }
        JWEAlgorithm algorithmAndEnsureNotNull = JWEHeaderValidation.getAlgorithmAndEnsureNotNull(jWEHeader);
        this.critPolicy.ensureHeaderPasses(jWEHeader);
        int iCekBitLength = jWEHeader.getEncryptionMethod().cekBitLength();
        if (algorithmAndEnsureNotNull.equals(JWEAlgorithm.A128KW) || algorithmAndEnsureNotNull.equals(JWEAlgorithm.A192KW) || algorithmAndEnsureNotNull.equals(JWEAlgorithm.A256KW)) {
            secretKeyUnwrapCEK = AESKW.unwrapCEK(getKey(), base64URL.decode(), getJCAContext().getKeyEncryptionProvider());
        } else {
            if (!algorithmAndEnsureNotNull.equals(JWEAlgorithm.A128GCMKW) && !algorithmAndEnsureNotNull.equals(JWEAlgorithm.A192GCMKW) && !algorithmAndEnsureNotNull.equals(JWEAlgorithm.A256GCMKW)) {
                throw new JOSEException(AlgorithmSupportMessage.unsupportedJWEAlgorithm(algorithmAndEnsureNotNull, AESCryptoProvider.SUPPORTED_ALGORITHMS));
            }
            if (jWEHeader.getIV() == null) {
                f6.j("Missing JWE \"iv\" header parameter");
                return null;
            }
            byte[] bArrDecode = jWEHeader.getIV().decode();
            if (jWEHeader.getAuthTag() == null) {
                f6.j("Missing JWE \"tag\" header parameter");
                return null;
            }
            secretKeyUnwrapCEK = AESGCMKW.decryptCEK(getKey(), bArrDecode, new AuthenticatedCipherText(base64URL.decode(), jWEHeader.getAuthTag().decode()), iCekBitLength, getJCAContext().getKeyEncryptionProvider());
        }
        return ContentCryptoProvider.decrypt(jWEHeader, bArr, base64URL, base64URL2, base64URL3, base64URL4, secretKeyUnwrapCEK, getJCAContext());
    }

    @Override // com.nimbusds.jose.CriticalHeaderParamsAware
    public Set<String> getDeferredCriticalHeaderParams() {
        return this.critPolicy.getProcessedCriticalHeaderParams();
    }

    @Override // com.nimbusds.jose.CriticalHeaderParamsAware
    public Set<String> getProcessedCriticalHeaderParams() {
        return this.critPolicy.getProcessedCriticalHeaderParams();
    }

    public AESDecrypter(byte[] bArr) throws KeyLengthException {
        this(new SecretKeySpec(bArr, "AES"));
    }

    public AESDecrypter(OctetSequenceKey octetSequenceKey) throws KeyLengthException {
        this(octetSequenceKey.toSecretKey("AES"));
    }

    public AESDecrypter(SecretKey secretKey) throws KeyLengthException {
        this(secretKey, null);
    }

    @Deprecated
    public byte[] decrypt(JWEHeader jWEHeader, Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, Base64URL base64URL4) throws JOSEException {
        return decrypt(jWEHeader, base64URL, base64URL2, base64URL3, base64URL4, AAD.compute(jWEHeader));
    }
}
