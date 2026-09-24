package com.nimbusds.jwt.proc;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.proc.BadJOSEException;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jwt.EncryptedJWT;
import com.nimbusds.jwt.JWT;
import com.nimbusds.jwt.JWTClaimsSet;
import com.nimbusds.jwt.PlainJWT;
import com.nimbusds.jwt.SignedJWT;
import java.text.ParseException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface JWTProcessor<C extends SecurityContext> {
    JWTClaimsSet process(EncryptedJWT encryptedJWT, C c) throws BadJOSEException, JOSEException;

    JWTClaimsSet process(JWT jwt, C c) throws BadJOSEException, JOSEException;

    JWTClaimsSet process(PlainJWT plainJWT, C c) throws BadJOSEException, JOSEException;

    JWTClaimsSet process(SignedJWT signedJWT, C c) throws BadJOSEException, JOSEException;

    JWTClaimsSet process(String str, C c) throws BadJOSEException, JOSEException, ParseException;
}
