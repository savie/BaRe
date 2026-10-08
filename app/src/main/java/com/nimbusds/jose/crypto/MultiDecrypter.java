package com.nimbusds.jose.crypto;

import com.nimbusds.jose.CriticalHeaderParamsAware;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.JWEDecrypter;
import com.nimbusds.jose.JWEHeader;
import com.nimbusds.jose.JWEObjectJSON;
import com.nimbusds.jose.crypto.impl.AAD;
import com.nimbusds.jose.crypto.impl.AESCryptoProvider;
import com.nimbusds.jose.crypto.impl.CriticalHeaderParamsDeferral;
import com.nimbusds.jose.crypto.impl.DirectCryptoProvider;
import com.nimbusds.jose.crypto.impl.ECDHCryptoProvider;
import com.nimbusds.jose.crypto.impl.JWEHeaderValidation;
import com.nimbusds.jose.crypto.impl.MultiCryptoProvider;
import com.nimbusds.jose.crypto.impl.RSACryptoProvider;
import com.nimbusds.jose.jwk.JWK;
import com.nimbusds.jose.jwk.KeyType;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64;
import com.nimbusds.jose.util.Base64URL;
import com.nimbusds.jose.util.JSONObjectUtils;
import defpackage.c6;
import defpackage.f6;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class MultiDecrypter extends MultiCryptoProvider implements JWEDecrypter, CriticalHeaderParamsAware {
    private final CriticalHeaderParamsDeferral critPolicy;
    private final JWK jwk;
    private final String kid;
    private final Base64URL thumbprint;
    private final List<Base64> x5c;
    private final Base64URL x5t;
    private final Base64URL x5t256;
    private final URI x5u;

    public MultiDecrypter(JWK jwk, Set<String> set) throws JOSEException {
        super(null);
        CriticalHeaderParamsDeferral criticalHeaderParamsDeferral = new CriticalHeaderParamsDeferral();
        this.critPolicy = criticalHeaderParamsDeferral;
        if (jwk == null) {
            c6.f("The private key (JWK) must not be null");
            throw null;
        }
        this.jwk = jwk;
        this.kid = jwk.getKeyID();
        this.x5c = jwk.getX509CertChain();
        this.x5u = jwk.getX509CertURL();
        this.x5t = jwk.getX509CertThumbprint();
        this.x5t256 = jwk.getX509CertSHA256Thumbprint();
        this.thumbprint = jwk.computeThumbprint();
        criticalHeaderParamsDeferral.setDeferredCriticalHeaderParams(set);
    }

    private boolean jwkMatched(JWEHeader jWEHeader) throws JOSEException {
        if (this.thumbprint.toString().equals(jWEHeader.getKeyID())) {
            return true;
        }
        JWK jwk = jWEHeader.getJWK();
        if (jwk != null && this.thumbprint.equals(jwk.computeThumbprint())) {
            return true;
        }
        URI uri = this.x5u;
        if (uri != null && uri.equals(jWEHeader.getX509CertURL())) {
            return true;
        }
        Base64URL base64URL = this.x5t;
        if (base64URL != null && base64URL.equals(jWEHeader.getX509CertThumbprint())) {
            return true;
        }
        Base64URL base64URL2 = this.x5t256;
        if (base64URL2 != null && base64URL2.equals(jWEHeader.getX509CertSHA256Thumbprint())) {
            return true;
        }
        List x509CertChain = jWEHeader.getX509CertChain();
        List<Base64> list = this.x5c;
        if (list != null && x509CertChain != null && list.containsAll(x509CertChain) && x509CertChain.containsAll(this.x5c)) {
            return true;
        }
        String str = this.kid;
        return str != null && str.equals(jWEHeader.getKeyID());
    }

    @Override // com.nimbusds.jose.JWEDecrypter
    public byte[] decrypt(JWEHeader jWEHeader, Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, Base64URL base64URL4, byte[] bArr) throws JOSEException {
        JWEObjectJSON.Recipient recipient;
        JWEDecrypter x25519Decrypter;
        if (base64URL2 == null) {
            f6.j("Unexpected present JWE initialization vector (IV)");
            return null;
        }
        if (base64URL4 == null) {
            f6.j("Missing JWE authentication tag");
            return null;
        }
        if (bArr == null) {
            f6.j("Missing JWE additional authenticated data (AAD)");
            return null;
        }
        KeyType keyType = this.jwk.getKeyType();
        Set<String> deferredCriticalHeaderParams = this.critPolicy.getDeferredCriticalHeaderParams();
        try {
            Iterator<Object> it = JSONObjectUtils.getJSONArray(JSONObjectUtils.parse(base64URL.decodeToString()), "recipients").iterator();
            recipient = null;
            while (true) {
                if (!it.hasNext()) {
                    jWEHeader = null;
                    break;
                }
                try {
                    recipient = JWEObjectJSON.Recipient.parse((Map) it.next());
                    JWEHeader jWEHeader2 = (JWEHeader) jWEHeader.join(recipient.getUnprotectedHeader());
                    if (jwkMatched(jWEHeader2)) {
                        jWEHeader = jWEHeader2;
                        break;
                    }
                } catch (Exception e) {
                    throw new JOSEException(e.getMessage());
                }
            }
        } catch (Exception unused) {
            recipient = new JWEObjectJSON.Recipient(null, base64URL);
        }
        if (jWEHeader == null) {
            f6.j("No recipient found");
            return null;
        }
        JWEAlgorithm algorithmAndEnsureNotNull = JWEHeaderValidation.getAlgorithmAndEnsureNotNull(jWEHeader);
        this.critPolicy.ensureHeaderPasses(jWEHeader);
        if (KeyType.RSA.equals(keyType) && RSACryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
            x25519Decrypter = new RSADecrypter(this.jwk.toRSAKey().toRSAPrivateKey(), deferredCriticalHeaderParams);
        } else if (KeyType.EC.equals(keyType) && ECDHCryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
            x25519Decrypter = new ECDHDecrypter(this.jwk.toECKey().toECPrivateKey(), deferredCriticalHeaderParams);
        } else {
            KeyType keyType2 = KeyType.OCT;
            if (keyType2.equals(keyType) && AESCryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
                x25519Decrypter = new AESDecrypter(this.jwk.toOctetSequenceKey().toSecretKey("AES"), deferredCriticalHeaderParams);
            } else if (keyType2.equals(keyType) && DirectCryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
                x25519Decrypter = new DirectDecrypter(this.jwk.toOctetSequenceKey().toSecretKey("AES"), deferredCriticalHeaderParams);
            } else {
                if (!KeyType.OKP.equals(keyType) || !ECDHCryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
                    f6.j("Unsupported algorithm");
                    return null;
                }
                x25519Decrypter = new X25519Decrypter(this.jwk.toOctetKeyPair(), deferredCriticalHeaderParams);
            }
        }
        return x25519Decrypter.decrypt(jWEHeader, recipient.getEncryptedKey(), base64URL2, base64URL3, base64URL4, bArr);
    }

    @Override // com.nimbusds.jose.CriticalHeaderParamsAware
    public Set<String> getDeferredCriticalHeaderParams() {
        return this.critPolicy.getProcessedCriticalHeaderParams();
    }

    @Override // com.nimbusds.jose.CriticalHeaderParamsAware
    public Set<String> getProcessedCriticalHeaderParams() {
        return this.critPolicy.getProcessedCriticalHeaderParams();
    }

    public MultiDecrypter(JWK jwk) throws JOSEException {
        this(jwk, null);
    }

    @Deprecated
    public byte[] decrypt(JWEHeader jWEHeader, Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, Base64URL base64URL4) throws JOSEException {
        return decrypt(jWEHeader, base64URL, base64URL2, base64URL3, base64URL4, AAD.compute(jWEHeader));
    }
}
