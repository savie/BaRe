package com.nimbusds.jose.crypto.opts;

import com.nimbusds.jose.JWSSignerOption;
import com.nimbusds.jose.shaded.jcip.Immutable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class UserAuthenticationRequired implements JWSSignerOption {
    private static final UserAuthenticationRequired SINGLETON = new UserAuthenticationRequired();

    private UserAuthenticationRequired() {
    }

    public static UserAuthenticationRequired getInstance() {
        return SINGLETON;
    }

    public String toString() {
        return "UserAuthenticationRequired";
    }
}
