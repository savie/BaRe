package com.nimbusds.jose.jwk;

import com.nimbusds.jose.KeyException;
import defpackage.fz5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JWKException extends KeyException {
    public JWKException(String str) {
        super(str);
    }

    public static JWKException expectedClass(Class<? extends JWK> cls) {
        return new JWKException(fz5.k(cls, "Invalid JWK: Must be an instance of "));
    }

    public static JWKException expectedPrivate() {
        return new JWKException("Expected private JWK but none available");
    }
}
