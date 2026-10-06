package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.JWSAlgorithm;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class RSASSAProvider extends BaseJWSProvider {
    public static final Set<JWSAlgorithm> SUPPORTED_ALGORITHMS;

    static {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(JWSAlgorithm.RS256);
        linkedHashSet.add(JWSAlgorithm.RS384);
        linkedHashSet.add(JWSAlgorithm.RS512);
        linkedHashSet.add(JWSAlgorithm.PS256);
        linkedHashSet.add(JWSAlgorithm.PS384);
        linkedHashSet.add(JWSAlgorithm.PS512);
        SUPPORTED_ALGORITHMS = Collections.unmodifiableSet(linkedHashSet);
    }

    public RSASSAProvider() {
        super(SUPPORTED_ALGORITHMS);
    }
}
