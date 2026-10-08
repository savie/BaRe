package com.nimbusds.jose.jwk;

import com.nimbusds.jose.shaded.jcip.Immutable;
import defpackage.c6;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class JWKSelector {
    private final JWKMatcher matcher;

    public JWKSelector(JWKMatcher jWKMatcher) {
        if (jWKMatcher != null) {
            this.matcher = jWKMatcher;
        } else {
            c6.f("The JWK matcher must not be null");
            throw null;
        }
    }

    public JWKMatcher getMatcher() {
        return this.matcher;
    }

    public List<JWK> select(JWKSet jWKSet) {
        LinkedList linkedList = new LinkedList();
        if (jWKSet != null) {
            for (JWK jwk : jWKSet.getKeys()) {
                if (this.matcher.matches(jwk)) {
                    linkedList.add(jwk);
                }
            }
        }
        return linkedList;
    }
}
