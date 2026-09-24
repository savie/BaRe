package com.nimbusds.jose.proc;

import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.JWSHeader;
import com.nimbusds.jose.KeySourceException;
import com.nimbusds.jose.jwk.JWK;
import com.nimbusds.jose.jwk.JWKMatcher;
import com.nimbusds.jose.jwk.JWKSelector;
import com.nimbusds.jose.jwk.KeyConverter;
import com.nimbusds.jose.jwk.source.JWKSource;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import defpackage.c6;
import defpackage.g84;
import java.security.Key;
import java.security.PublicKey;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class JWSVerificationKeySelector<C extends SecurityContext> extends AbstractJWKSelectorWithSource<C> implements JWSKeySelector<C> {
    private final Set<JWSAlgorithm> jwsAlgs;
    private final boolean singleJwsAlgConstructorWasCalled;

    public JWSVerificationKeySelector(Set<JWSAlgorithm> set, JWKSource<C> jWKSource) {
        super(jWKSource);
        if (set.isEmpty()) {
            c6.f("The JWS algorithms must not be empty");
            throw null;
        }
        this.jwsAlgs = Collections.unmodifiableSet(set);
        this.singleJwsAlgConstructorWasCalled = false;
    }

    public JWKMatcher createJWKMatcher(JWSHeader jWSHeader) {
        if (isAllowed(jWSHeader.getAlgorithm())) {
            return JWKMatcher.forJWSHeader(jWSHeader);
        }
        return null;
    }

    @Deprecated
    public JWSAlgorithm getExpectedJWSAlgorithm() {
        if (this.singleJwsAlgConstructorWasCalled) {
            return this.jwsAlgs.iterator().next();
        }
        g84.j("Since this class was constructed with multiple algorithms, the behavior of this method is undefined.");
        return null;
    }

    @Override // com.nimbusds.jose.proc.AbstractJWKSelectorWithSource
    public /* bridge */ /* synthetic */ JWKSource getJWKSource() {
        return super.getJWKSource();
    }

    public boolean isAllowed(JWSAlgorithm jWSAlgorithm) {
        return this.jwsAlgs.contains(jWSAlgorithm);
    }

    @Override // com.nimbusds.jose.proc.JWSKeySelector
    public List<Key> selectJWSKeys(JWSHeader jWSHeader, C c) throws KeySourceException {
        if (!this.jwsAlgs.contains(jWSHeader.getAlgorithm())) {
            return Collections.EMPTY_LIST;
        }
        JWKMatcher jWKMatcherCreateJWKMatcher = createJWKMatcher(jWSHeader);
        if (jWKMatcherCreateJWKMatcher == null) {
            return Collections.EMPTY_LIST;
        }
        List<JWK> list = getJWKSource().get(new JWKSelector(jWKMatcherCreateJWKMatcher), c);
        LinkedList linkedList = new LinkedList();
        for (Key key : KeyConverter.toJavaKeys(list)) {
            if ((key instanceof PublicKey) || (key instanceof SecretKey)) {
                linkedList.add(key);
            }
        }
        return linkedList;
    }

    public JWSVerificationKeySelector(JWSAlgorithm jWSAlgorithm, JWKSource<C> jWKSource) {
        super(jWKSource);
        Objects.requireNonNull(jWSAlgorithm);
        this.jwsAlgs = Collections.singleton(jWSAlgorithm);
        this.singleJwsAlgConstructorWasCalled = true;
    }
}
