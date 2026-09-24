package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.jwk.RSAKey;
import defpackage.f6;
import java.security.PrivateKey;
import java.security.interfaces.RSAPrivateKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class RSAKeyUtils {
    public static int keyBitLength(PrivateKey privateKey) {
        if (!(privateKey instanceof RSAPrivateKey)) {
            return -1;
        }
        try {
            return ((RSAPrivateKey) privateKey).getModulus().bitLength();
        } catch (Exception unused) {
            return -1;
        }
    }

    public static PrivateKey toRSAPrivateKey(RSAKey rSAKey) throws JOSEException {
        if (rSAKey.isPrivate()) {
            return rSAKey.toPrivateKey();
        }
        f6.j("The RSA JWK doesn't contain a private part");
        return null;
    }
}
