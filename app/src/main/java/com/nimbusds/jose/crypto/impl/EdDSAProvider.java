package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.jwk.Curve;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class EdDSAProvider extends BaseJWSProvider {
    public static final Set<JWSAlgorithm> SUPPORTED_ALGORITHMS = Collections.unmodifiableSet(new HashSet(Arrays.asList(JWSAlgorithm.EdDSA, JWSAlgorithm.Ed25519)));
    public static final Set<Curve> SUPPORTED_CURVES = Collections.singleton(Curve.Ed25519);

    public EdDSAProvider() {
        super(SUPPORTED_ALGORITHMS);
    }
}
