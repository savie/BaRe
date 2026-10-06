package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.proc.SecurityContext;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class JWKSetSourceWrapper<C extends SecurityContext> implements JWKSetSource<C> {
    private final JWKSetSource<C> source;

    public JWKSetSourceWrapper(JWKSetSource<C> jWKSetSource) {
        Objects.requireNonNull(jWKSetSource);
        this.source = jWKSetSource;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    public JWKSetSource<C> getSource() {
        return this.source;
    }
}
