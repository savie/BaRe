package com.microsoft.identity.common.java.authorities;

import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import java.net.URI;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class UnknownAuthority extends Authority {
    @Override // com.microsoft.identity.common.java.authorities.Authority
    public OAuth2Strategy createOAuth2Strategy(OAuth2StrategyParameters oAuth2StrategyParameters) {
        if (oAuth2StrategyParameters == null) {
            throw new NullPointerException("parameters is marked non-null but is null");
        }
        throw new UnsupportedOperationException();
    }

    @Override // com.microsoft.identity.common.java.authorities.Authority
    public URL getAuthorityURL() {
        throw new UnsupportedOperationException();
    }

    @Override // com.microsoft.identity.common.java.authorities.Authority
    public URI getAuthorityUri() {
        throw new UnsupportedOperationException();
    }
}
