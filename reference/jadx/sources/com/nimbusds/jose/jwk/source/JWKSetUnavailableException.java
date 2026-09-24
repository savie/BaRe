package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.KeySourceException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JWKSetUnavailableException extends KeySourceException {
    private static final long serialVersionUID = 1;

    public JWKSetUnavailableException(String str) {
        super(str);
    }

    public JWKSetUnavailableException(String str, Throwable th) {
        super(str, th);
    }
}
