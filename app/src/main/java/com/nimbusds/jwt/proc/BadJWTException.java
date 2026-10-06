package com.nimbusds.jwt.proc;

import com.nimbusds.jose.proc.BadJOSEException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class BadJWTException extends BadJOSEException {
    public BadJWTException(String str) {
        super(str);
    }

    public BadJWTException(String str, Throwable th) {
        super(str, th);
    }
}
