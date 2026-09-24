package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.jwk.source.JWKSetSource;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.util.events.Event;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class AbstractJWKSetSourceEvent<S extends JWKSetSource<C>, C extends SecurityContext> implements Event<S, C> {
    private final C context;
    private final S source;

    public AbstractJWKSetSourceEvent(S s, C c) {
        Objects.requireNonNull(s);
        this.source = s;
        this.context = c;
    }

    @Override // com.nimbusds.jose.util.events.Event
    public C getContext() {
        return this.context;
    }

    @Override // com.nimbusds.jose.util.events.Event
    public S getSource() {
        return this.source;
    }
}
