package com.microsoft.identity.common.java.authscheme;

import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class BearerAuthenticationSchemeInternal extends TokenAuthenticationScheme {
    public static final String SCHEME_BEARER = "Bearer";
    private static final long serialVersionUID = 823164758655077118L;

    public BearerAuthenticationSchemeInternal() {
        super(SCHEME_BEARER);
    }

    @Override // com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme
    public String getAccessTokenForScheme(String str) {
        if (str != null) {
            return str;
        }
        f6.n("accessToken is marked non-null but is null");
        return null;
    }
}
