package com.nimbusds.jose.proc;

import com.nimbusds.jose.jwk.JWK;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JWKSecurityContext implements SecurityContext {
    private final List<JWK> keys;

    public JWKSecurityContext(List<JWK> list) {
        Objects.requireNonNull(list);
        this.keys = list;
    }

    public List<JWK> getKeys() {
        return this.keys;
    }
}
