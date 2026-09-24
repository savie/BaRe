package com.microsoft.identity.common.java.providers.oauth2;

import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class OAuth2StrategyParameters {
    private final transient AbstractAuthenticationScheme mAuthenticationScheme;
    private final transient PlatformComponents mPlatformComponents;
    private transient boolean mUsingOpenIdConfiguration = false;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class OAuth2StrategyParametersBuilder {
        private AbstractAuthenticationScheme authenticationScheme;
        private PlatformComponents platformComponents;

        public final void authenticationScheme(AbstractAuthenticationScheme abstractAuthenticationScheme) {
            this.authenticationScheme = abstractAuthenticationScheme;
        }

        public final OAuth2StrategyParameters build() {
            return new OAuth2StrategyParameters(this.platformComponents, this.authenticationScheme);
        }

        public final void platformComponents(PlatformComponents platformComponents) {
            this.platformComponents = platformComponents;
        }

        public final String toString() {
            return "OAuth2StrategyParameters.OAuth2StrategyParametersBuilder(platformComponents=" + this.platformComponents + ", authenticationScheme=" + this.authenticationScheme + ", challengeTypes=null, capabilities=null, usingOpenIdConfiguration=false)";
        }
    }

    public OAuth2StrategyParameters(PlatformComponents platformComponents, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        this.mPlatformComponents = platformComponents;
        this.mAuthenticationScheme = abstractAuthenticationScheme;
    }

    public final AbstractAuthenticationScheme getAuthenticationScheme() {
        return this.mAuthenticationScheme;
    }

    public final PlatformComponents getPlatformComponents() {
        return this.mPlatformComponents;
    }

    public final boolean isUsingOpenIdConfiguration() {
        return this.mUsingOpenIdConfiguration;
    }

    public final void setUsingOpenIdConfiguration(boolean z) {
        this.mUsingOpenIdConfiguration = z;
    }
}
