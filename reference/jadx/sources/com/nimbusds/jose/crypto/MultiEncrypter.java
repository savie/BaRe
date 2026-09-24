package com.nimbusds.jose.crypto;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.JWECryptoParts;
import com.nimbusds.jose.JWEEncrypter;
import com.nimbusds.jose.JWEHeader;
import com.nimbusds.jose.KeyLengthException;
import com.nimbusds.jose.Payload;
import com.nimbusds.jose.UnprotectedHeader;
import com.nimbusds.jose.crypto.impl.AAD;
import com.nimbusds.jose.crypto.impl.AESCryptoProvider;
import com.nimbusds.jose.crypto.impl.DirectCryptoProvider;
import com.nimbusds.jose.crypto.impl.ECDHCryptoProvider;
import com.nimbusds.jose.crypto.impl.JWEHeaderValidation;
import com.nimbusds.jose.crypto.impl.MultiCryptoProvider;
import com.nimbusds.jose.crypto.impl.RSACryptoProvider;
import com.nimbusds.jose.jwk.JWK;
import com.nimbusds.jose.jwk.JWKSet;
import com.nimbusds.jose.jwk.KeyType;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64URL;
import com.nimbusds.jose.util.JSONArrayUtils;
import com.nimbusds.jose.util.JSONObjectUtils;
import defpackage.c6;
import defpackage.f6;
import defpackage.g84;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class MultiEncrypter extends MultiCryptoProvider implements JWEEncrypter {
    private static final String[] RECIPIENT_HEADER_PARAMS = {"kid", "alg", "x5u", "x5t", "x5t#S256", "x5c"};
    private final JWKSet keys;

    public MultiEncrypter(JWKSet jWKSet, SecretKey secretKey) throws KeyLengthException {
        super(secretKey);
        for (JWK jwk : jWKSet.getKeys()) {
            KeyType keyType = jwk.getKeyType();
            if (jwk.getAlgorithm() == null) {
                c6.f("Each JWK must specify a key encryption algorithm");
                throw null;
            }
            JWEAlgorithm jWEAlgorithm = JWEAlgorithm.parse(jwk.getAlgorithm().toString());
            if (JWEAlgorithm.DIR.equals(jWEAlgorithm) && KeyType.OCT.equals(keyType) && !jwk.toOctetSequenceKey().toSecretKey("AES").equals(secretKey)) {
                c6.f("Bad CEK");
                throw null;
            }
            if (!KeyType.RSA.equals(keyType) || !RSACryptoProvider.SUPPORTED_ALGORITHMS.contains(jWEAlgorithm)) {
                if (!KeyType.EC.equals(keyType) || !ECDHCryptoProvider.SUPPORTED_ALGORITHMS.contains(jWEAlgorithm)) {
                    KeyType keyType2 = KeyType.OCT;
                    if (!keyType2.equals(keyType) || !AESCryptoProvider.SUPPORTED_ALGORITHMS.contains(jWEAlgorithm)) {
                        if (!keyType2.equals(keyType) || !DirectCryptoProvider.SUPPORTED_ALGORITHMS.contains(jWEAlgorithm)) {
                            if (!KeyType.OKP.equals(keyType) || !ECDHCryptoProvider.SUPPORTED_ALGORITHMS.contains(jWEAlgorithm)) {
                                g84.k(jWEAlgorithm, "Unsupported key encryption algorithm: ");
                                throw null;
                            }
                        }
                    }
                }
            }
        }
        this.keys = jWKSet;
    }

    private static SecretKey findDirectCEK(JWKSet jWKSet) {
        if (jWKSet == null) {
            return null;
        }
        for (JWK jwk : jWKSet.getKeys()) {
            if (JWEAlgorithm.DIR.equals(jwk.getAlgorithm()) && KeyType.OCT.equals(jwk.getKeyType())) {
                return jwk.toOctetSequenceKey().toSecretKey("AES");
            }
        }
        return null;
    }

    @Override // com.nimbusds.jose.JWEEncrypter
    public JWECryptoParts encrypt(JWEHeader jWEHeader, byte[] bArr, byte[] bArr2) throws JOSEException {
        Base64URL base64URLEncode;
        JWEEncrypter x25519Encrypter;
        Base64URL base64URL = null;
        if (bArr2 == null) {
            f6.j("Missing JWE additional authenticated data (AAD)");
            return null;
        }
        SecretKey cek = getCEK(jWEHeader.getEncryptionMethod());
        Payload payload = new Payload(bArr);
        List<Object> listNewJSONArray = JSONArrayUtils.newJSONArray();
        Iterator<JWK> it = this.keys.getKeys().iterator();
        Base64URL base64URL2 = null;
        Base64URL base64URL3 = null;
        Base64URL authenticationTag = null;
        while (it.hasNext()) {
            JWK next = it.next();
            KeyType keyType = next.getKeyType();
            Map<String, Object> jSONObject = next.toJSONObject();
            UnprotectedHeader.Builder builder = new UnprotectedHeader.Builder();
            String[] strArr = RECIPIENT_HEADER_PARAMS;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                Iterator<JWK> it2 = it;
                String str = strArr[i];
                if (jSONObject.containsKey(str)) {
                    builder.param(str, jSONObject.get(str));
                }
                i++;
                it = it2;
                base64URL = base64URL;
            }
            it = it;
            Base64URL base64URL4 = base64URL;
            try {
                JWEHeader jWEHeader2 = (JWEHeader) jWEHeader.join(builder.build());
                JWEAlgorithm algorithmAndEnsureNotNull = JWEHeaderValidation.getAlgorithmAndEnsureNotNull(jWEHeader2);
                if (KeyType.RSA.equals(keyType) && RSACryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
                    x25519Encrypter = new RSAEncrypter(next.toRSAKey().toRSAPublicKey(), cek);
                } else if (KeyType.EC.equals(keyType) && ECDHCryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
                    x25519Encrypter = new ECDHEncrypter(next.toECKey().toECPublicKey(), cek);
                } else {
                    KeyType keyType2 = KeyType.OCT;
                    if (keyType2.equals(keyType) && AESCryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
                        x25519Encrypter = new AESEncrypter(next.toOctetSequenceKey().toSecretKey("AES"), cek);
                    } else if (keyType2.equals(keyType) && DirectCryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
                        x25519Encrypter = new DirectEncrypter(next.toOctetSequenceKey().toSecretKey("AES"));
                    } else if (KeyType.OKP.equals(keyType) && ECDHCryptoProvider.SUPPORTED_ALGORITHMS.contains(algorithmAndEnsureNotNull)) {
                        x25519Encrypter = new X25519Encrypter(next.toOctetKeyPair().toPublicJWK(), cek);
                    } else {
                        base64URL = base64URL4;
                    }
                }
                JWECryptoParts jWECryptoPartsEncrypt = x25519Encrypter.encrypt(jWEHeader2, payload.toBytes(), bArr2);
                Map<String, Object> jSONObject2 = jWECryptoPartsEncrypt.getHeader().toJSONObject();
                Iterator<String> it3 = jWEHeader.getIncludedParams().iterator();
                while (it3.hasNext()) {
                    jSONObject2.remove(it3.next());
                }
                Map<String, Object> mapNewJSONObject = JSONObjectUtils.newJSONObject();
                mapNewJSONObject.put("header", jSONObject2);
                if (!JWEAlgorithm.DIR.equals(algorithmAndEnsureNotNull)) {
                    mapNewJSONObject.put("encrypted_key", jWECryptoPartsEncrypt.getEncryptedKey().toString());
                }
                listNewJSONArray.add(mapNewJSONObject);
                if (listNewJSONArray.size() == 1) {
                    Payload payload2 = new Payload("");
                    Base64URL encryptedKey = jWECryptoPartsEncrypt.getEncryptedKey();
                    Base64URL initializationVector = jWECryptoPartsEncrypt.getInitializationVector();
                    Base64URL cipherText = jWECryptoPartsEncrypt.getCipherText();
                    payload = payload2;
                    base64URL = encryptedKey;
                    authenticationTag = jWECryptoPartsEncrypt.getAuthenticationTag();
                    base64URL2 = initializationVector;
                    base64URL3 = cipherText;
                } else {
                    base64URL = base64URL4;
                }
            } catch (Exception e) {
                throw new JOSEException(e.getMessage(), e);
            }
        }
        Base64URL base64URL5 = base64URL;
        if (listNewJSONArray.size() > 1) {
            Map<String, Object> mapNewJSONObject2 = JSONObjectUtils.newJSONObject();
            mapNewJSONObject2.put("recipients", listNewJSONArray);
            base64URLEncode = Base64URL.encode(JSONObjectUtils.toJSONString(mapNewJSONObject2));
        } else {
            base64URLEncode = base64URL5;
        }
        return new JWECryptoParts(jWEHeader, base64URLEncode, base64URL2, base64URL3, authenticationTag);
    }

    public MultiEncrypter(JWKSet jWKSet) throws KeyLengthException {
        this(jWKSet, findDirectCEK(jWKSet));
    }

    @Deprecated
    public JWECryptoParts encrypt(JWEHeader jWEHeader, byte[] bArr) throws JOSEException {
        return encrypt(jWEHeader, bArr, AAD.compute(jWEHeader));
    }
}
