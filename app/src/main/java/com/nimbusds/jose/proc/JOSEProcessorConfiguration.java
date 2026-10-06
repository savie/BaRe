package com.nimbusds.jose.proc;

import com.nimbusds.jose.proc.SecurityContext;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface JOSEProcessorConfiguration<C extends SecurityContext> {
    JWEDecrypterFactory getJWEDecrypterFactory();

    JWEKeySelector<C> getJWEKeySelector();

    JOSEObjectTypeVerifier<C> getJWETypeVerifier();

    JWSKeySelector<C> getJWSKeySelector();

    JOSEObjectTypeVerifier<C> getJWSTypeVerifier();

    JWSVerifierFactory getJWSVerifierFactory();

    void setJWEDecrypterFactory(JWEDecrypterFactory jWEDecrypterFactory);

    void setJWEKeySelector(JWEKeySelector<C> jWEKeySelector);

    void setJWETypeVerifier(JOSEObjectTypeVerifier<C> jOSEObjectTypeVerifier);

    void setJWSKeySelector(JWSKeySelector<C> jWSKeySelector);

    void setJWSTypeVerifier(JOSEObjectTypeVerifier<C> jOSEObjectTypeVerifier);

    void setJWSVerifierFactory(JWSVerifierFactory jWSVerifierFactory);
}
