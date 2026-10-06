package com.nimbusds.jose.proc;

import com.nimbusds.jose.JWEHeader;
import com.nimbusds.jose.KeySourceException;
import com.nimbusds.jose.proc.SecurityContext;
import java.security.Key;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface JWEKeySelector<C extends SecurityContext> {
    List<? extends Key> selectJWEKeys(JWEHeader jWEHeader, C c) throws KeySourceException;
}
