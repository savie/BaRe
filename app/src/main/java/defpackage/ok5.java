package defpackage;

import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ok5 extends MicrosoftStsOAuth2Strategy {
    public final nk5 a;

    public ok5(OAuth2StrategyParameters oAuth2StrategyParameters, nk5 nk5Var, b05 b05Var, sl4 sl4Var, sl4 sl4Var2, ns0 ns0Var) {
        super(nk5Var, oAuth2StrategyParameters);
        this.a = nk5Var;
    }

    @Override // com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy
    public final String getIssuerCacheIdentifierFromTokenEndpoint() {
        this.a.getClass();
        String issuerCacheIdentifierFromTokenEndpoint = super.getIssuerCacheIdentifierFromTokenEndpoint();
        issuerCacheIdentifierFromTokenEndpoint.getClass();
        return issuerCacheIdentifierFromTokenEndpoint;
    }
}
