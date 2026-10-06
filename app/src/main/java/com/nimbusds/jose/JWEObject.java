package com.nimbusds.jose;

import com.nimbusds.jose.crypto.impl.AAD;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64URL;
import defpackage.l0;
import defpackage.y5;
import java.text.ParseException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class JWEObject extends JOSEObject {
    public static final int MAX_COMPRESSED_CIPHER_TEXT_LENGTH = 100000;
    private static final long serialVersionUID = 1;
    private Base64URL authTag;
    private Base64URL cipherText;
    private Base64URL encryptedKey;
    private JWEHeader header;
    private Base64URL iv;
    private State state;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum State {
        UNENCRYPTED,
        ENCRYPTED,
        DECRYPTED
    }

    public JWEObject(Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, Base64URL base64URL4, Base64URL base64URL5) throws ParseException {
        try {
            Objects.requireNonNull(base64URL);
            this.header = JWEHeader.parse(base64URL);
            if (base64URL2 == null || base64URL2.toString().isEmpty()) {
                this.encryptedKey = null;
            } else {
                this.encryptedKey = base64URL2;
            }
            if (base64URL3 == null || base64URL3.toString().isEmpty()) {
                this.iv = null;
            } else {
                this.iv = base64URL3;
            }
            Objects.requireNonNull(base64URL4);
            this.cipherText = base64URL4;
            if (base64URL5 == null || base64URL5.toString().isEmpty()) {
                this.authTag = null;
            } else {
                this.authTag = base64URL5;
            }
            this.state = State.ENCRYPTED;
            setParsedParts(base64URL, base64URL2, base64URL3, base64URL4, base64URL5);
        } catch (ParseException e) {
            l0.j(e.getMessage(), "Invalid JWE header: ");
            throw null;
        }
    }

    private void ensureEncryptedOrDecryptedState() {
        State state = this.state;
        if (state == State.ENCRYPTED || state == State.DECRYPTED) {
            return;
        }
        l0.e("The JWE object must be in an encrypted or decrypted state");
    }

    private void ensureEncryptedState() {
        if (this.state == State.ENCRYPTED) {
            return;
        }
        l0.e("The JWE object must be in an encrypted state");
    }

    private void ensureJWEEncrypterSupport(JWEEncrypter jWEEncrypter) throws JOSEException {
        if (!jWEEncrypter.supportedJWEAlgorithms().contains(getHeader().getAlgorithm())) {
            StringBuilder sb = new StringBuilder("The ");
            sb.append(getHeader().getAlgorithm());
            Set<JWEAlgorithm> setSupportedJWEAlgorithms = jWEEncrypter.supportedJWEAlgorithms();
            sb.append(" algorithm is not supported by the JWE encrypter: Supported algorithms: ");
            sb.append(setSupportedJWEAlgorithms);
            throw new JOSEException(sb.toString());
        }
        if (jWEEncrypter.supportedEncryptionMethods().contains(getHeader().getEncryptionMethod())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder("The ");
        sb2.append(getHeader().getEncryptionMethod());
        Set<EncryptionMethod> setSupportedEncryptionMethods = jWEEncrypter.supportedEncryptionMethods();
        sb2.append(" encryption method or key size is not supported by the JWE encrypter: Supported methods: ");
        sb2.append(setSupportedEncryptionMethods);
        throw new JOSEException(sb2.toString());
    }

    private void ensureUnencryptedState() {
        if (this.state == State.UNENCRYPTED) {
            return;
        }
        l0.e("The JWE object must be in an unencrypted state");
    }

    public static JWEObject parse(String str) throws ParseException {
        Base64URL[] base64URLArrSplit = JOSEObject.split(str);
        if (base64URLArrSplit.length == 5) {
            return new JWEObject(base64URLArrSplit[0], base64URLArrSplit[1], base64URLArrSplit[2], base64URLArrSplit[3], base64URLArrSplit[4]);
        }
        y5.e(0, "Unexpected number of Base64URL parts, must be five");
        return null;
    }

    public synchronized void decrypt(JWEDecrypter jWEDecrypter) throws JOSEException {
        ensureEncryptedState();
        if (getHeader().getCompressionAlgorithm() != null && getCipherText().toString().length() > 100000) {
            throw new JOSEException("The JWE compressed cipher text exceeds the maximum allowed length of 100000 characters");
        }
        try {
            setPayload(new Payload(jWEDecrypter.decrypt(getHeader(), getEncryptedKey(), getIV(), getCipherText(), getAuthTag(), AAD.compute(getHeader()))));
            this.state = State.DECRYPTED;
        } catch (JOSEException e) {
            throw e;
        } catch (Exception e2) {
            throw new JOSEException(e2.getMessage(), e2);
        }
    }

    public synchronized void encrypt(JWEEncrypter jWEEncrypter) throws JOSEException {
        try {
            ensureUnencryptedState();
            ensureJWEEncrypterSupport(jWEEncrypter);
            try {
                JWECryptoParts jWECryptoPartsEncrypt = jWEEncrypter.encrypt(getHeader(), getPayload().toBytes(), AAD.compute(getHeader()));
                if (jWECryptoPartsEncrypt.getHeader() != null) {
                    this.header = jWECryptoPartsEncrypt.getHeader();
                }
                this.encryptedKey = jWECryptoPartsEncrypt.getEncryptedKey();
                this.iv = jWECryptoPartsEncrypt.getInitializationVector();
                this.cipherText = jWECryptoPartsEncrypt.getCipherText();
                this.authTag = jWECryptoPartsEncrypt.getAuthenticationTag();
                this.state = State.ENCRYPTED;
            } catch (JOSEException e) {
                throw e;
            } catch (Exception e2) {
                throw new JOSEException(e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public Base64URL getAuthTag() {
        return this.authTag;
    }

    public Base64URL getCipherText() {
        return this.cipherText;
    }

    public Base64URL getEncryptedKey() {
        return this.encryptedKey;
    }

    public Base64URL getIV() {
        return this.iv;
    }

    public State getState() {
        return this.state;
    }

    @Override // com.nimbusds.jose.JOSEObject
    public String serialize() {
        ensureEncryptedOrDecryptedState();
        StringBuilder sb = new StringBuilder(this.header.toBase64URL().toString());
        sb.append('.');
        Base64URL base64URL = this.encryptedKey;
        if (base64URL != null) {
            sb.append(base64URL);
        }
        sb.append('.');
        Base64URL base64URL2 = this.iv;
        if (base64URL2 != null) {
            sb.append(base64URL2);
        }
        sb.append('.');
        sb.append(this.cipherText);
        sb.append('.');
        Base64URL base64URL3 = this.authTag;
        if (base64URL3 != null) {
            sb.append(base64URL3);
        }
        return sb.toString();
    }

    @Override // com.nimbusds.jose.JOSEObject
    public JWEHeader getHeader() {
        return this.header;
    }

    public JWEObject(JWEHeader jWEHeader, Payload payload) {
        Objects.requireNonNull(jWEHeader);
        this.header = jWEHeader;
        Objects.requireNonNull(payload);
        setPayload(payload);
        this.encryptedKey = null;
        this.cipherText = null;
        this.state = State.UNENCRYPTED;
    }
}
