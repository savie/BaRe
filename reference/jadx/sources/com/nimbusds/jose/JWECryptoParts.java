package com.nimbusds.jose;

import com.nimbusds.jose.shaded.jcip.Immutable;
import com.nimbusds.jose.util.Base64URL;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class JWECryptoParts {
    private final Base64URL authenticationTag;
    private final Base64URL cipherText;
    private final Base64URL encryptedKey;
    private final JWEHeader header;
    private final Base64URL iv;

    public JWECryptoParts(JWEHeader jWEHeader, Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, Base64URL base64URL4) {
        this.header = jWEHeader;
        this.encryptedKey = base64URL;
        this.iv = base64URL2;
        Objects.requireNonNull(base64URL3);
        this.cipherText = base64URL3;
        this.authenticationTag = base64URL4;
    }

    public Base64URL getAuthenticationTag() {
        return this.authenticationTag;
    }

    public Base64URL getCipherText() {
        return this.cipherText;
    }

    public Base64URL getEncryptedKey() {
        return this.encryptedKey;
    }

    public JWEHeader getHeader() {
        return this.header;
    }

    public Base64URL getInitializationVector() {
        return this.iv;
    }

    public JWECryptoParts(Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, Base64URL base64URL4) {
        this(null, base64URL, base64URL2, base64URL3, base64URL4);
    }
}
