package com.nimbusds.jose.proc;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JOSEObject;
import com.nimbusds.jose.JWEObject;
import com.nimbusds.jose.JWSObject;
import com.nimbusds.jose.Payload;
import com.nimbusds.jose.PlainObject;
import com.nimbusds.jose.proc.SecurityContext;
import java.text.ParseException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface JOSEProcessor<C extends SecurityContext> {
    Payload process(JOSEObject jOSEObject, C c) throws BadJOSEException, JOSEException;

    Payload process(JWEObject jWEObject, C c) throws BadJOSEException, JOSEException;

    Payload process(JWSObject jWSObject, C c) throws BadJOSEException, JOSEException;

    Payload process(PlainObject plainObject, C c) throws BadJOSEException, JOSEException;

    Payload process(String str, C c) throws BadJOSEException, JOSEException, ParseException;
}
