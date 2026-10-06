package com.nimbusds.jose.proc;

import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.JWSHeader;
import com.nimbusds.jose.proc.SecurityContext;
import java.security.Key;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SingleKeyJWSKeySelector<C extends SecurityContext> implements JWSKeySelector<C> {
    private final JWSAlgorithm expectedJWSAlg;
    private final List<Key> singletonKeyList;

    public SingleKeyJWSKeySelector(JWSAlgorithm jWSAlgorithm, Key key) {
        Objects.requireNonNull(key);
        this.singletonKeyList = Collections.singletonList(key);
        Objects.requireNonNull(jWSAlgorithm);
        this.expectedJWSAlg = jWSAlgorithm;
    }

    @Override // com.nimbusds.jose.proc.JWSKeySelector
    public List<? extends Key> selectJWSKeys(JWSHeader jWSHeader, C c) {
        return !this.expectedJWSAlg.equals(jWSHeader.getAlgorithm()) ? Collections.EMPTY_LIST : this.singletonKeyList;
    }
}
