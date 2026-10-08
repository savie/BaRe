package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.JWEHeader;
import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JWEHeaderValidation {
    private JWEHeaderValidation() {
    }

    public static JWEAlgorithm getAlgorithmAndEnsureNotNull(JWEHeader jWEHeader) throws JOSEException {
        JWEAlgorithm algorithm = jWEHeader.getAlgorithm();
        if (algorithm != null) {
            return algorithm;
        }
        f6.j("The algorithm \"alg\" header parameter must not be null");
        return null;
    }
}
