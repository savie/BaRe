package com.nimbusds.jose.proc;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSHeader;
import com.nimbusds.jose.JWSProvider;
import com.nimbusds.jose.JWSVerifier;
import java.security.Key;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface JWSVerifierFactory extends JWSProvider {
    JWSVerifier createJWSVerifier(JWSHeader jWSHeader, Key key) throws JOSEException;
}
