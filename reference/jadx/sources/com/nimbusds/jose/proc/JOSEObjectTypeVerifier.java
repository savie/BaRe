package com.nimbusds.jose.proc;

import com.nimbusds.jose.JOSEObjectType;
import com.nimbusds.jose.proc.SecurityContext;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface JOSEObjectTypeVerifier<C extends SecurityContext> {
    void verify(JOSEObjectType jOSEObjectType, C c) throws BadJOSEException;
}
