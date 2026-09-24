package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.jwk.Curve;
import defpackage.c6;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ECDSAProvider extends BaseJWSProvider {
    public static final Set<JWSAlgorithm> SUPPORTED_ALGORITHMS;
    public static final Set<Curve> SUPPORTED_CURVES;

    static {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(JWSAlgorithm.ES256);
        linkedHashSet.add(JWSAlgorithm.ES256K);
        linkedHashSet.add(JWSAlgorithm.ES384);
        linkedHashSet.add(JWSAlgorithm.ES512);
        SUPPORTED_ALGORITHMS = Collections.unmodifiableSet(linkedHashSet);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        linkedHashSet2.add(Curve.P_256);
        linkedHashSet2.add(Curve.SECP256K1);
        linkedHashSet2.add(Curve.P_384);
        linkedHashSet2.add(Curve.P_521);
        SUPPORTED_CURVES = Collections.unmodifiableSet(linkedHashSet2);
    }

    public ECDSAProvider(JWSAlgorithm jWSAlgorithm) throws JOSEException {
        super(Collections.singleton(jWSAlgorithm));
        if (SUPPORTED_ALGORITHMS.contains(jWSAlgorithm)) {
            return;
        }
        c6.e(jWSAlgorithm, "Unsupported EC DSA algorithm: ");
        throw null;
    }

    public JWSAlgorithm supportedECDSAAlgorithm() {
        return supportedJWSAlgorithms().iterator().next();
    }
}
