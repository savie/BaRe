package com.microsoft.identity.common.java.nativeauth.authorities;

import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authorities.CIAMAuthority;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.net.UrlConnectionHttpClient;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import defpackage.b05;
import defpackage.el1;
import defpackage.eq3;
import defpackage.mk5;
import defpackage.nc8;
import defpackage.nk5;
import defpackage.ns0;
import defpackage.ok5;
import defpackage.ov2;
import defpackage.sl4;
import java.net.URL;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NativeAuthCIAMAuthority extends CIAMAuthority {
    public static final mk5 Companion = new mk5();
    private static final boolean NATIVE_AUTH_USE_OPENID_CONFIGURATION = false;
    private static final String TAG = "NativeAuthCIAMAuthority";
    private final String authorityUrl;
    private final String clientId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAuthCIAMAuthority(String str, String str2) {
        super(str);
        str.getClass();
        str2.getClass();
        this.authorityUrl = str;
        this.clientId = str2;
        this.mAuthorityTypeString = Authority.AAD_NA;
        this.mAuthorityUrlString = str;
    }

    private final nk5 createNativeAuthOAuth2Configuration(List<String> list, List<String> list2) {
        String str = TAG;
        str.getClass();
        Logger.info(str, null, str.concat(".createNativeAuthOAuth2Configuration"));
        URL authorityURL = getAuthorityURL();
        authorityURL.getClass();
        String str2 = this.clientId;
        String challengeTypesWithDefault = getChallengeTypesWithDefault(list);
        getCapabilities(list2);
        return new nk5(authorityURL, str2, challengeTypesWithDefault);
    }

    private final String getCapabilities(List<String> list) {
        String str = TAG;
        str.getClass();
        Logger.info(str, null, str.concat(".getCapabilities"));
        if (list == null) {
            list = ov2.a;
        }
        return el1.Y0(el1.v1(new LinkedHashSet(list)), TokenAuthenticationScheme.SCHEME_DELIMITER, null, null, null, 62);
    }

    private final String getChallengeTypesWithDefault(List<String> list) {
        String str = TAG;
        str.getClass();
        Logger.info(str, null, str.concat(".getChallengeTypesWithDefault"));
        if (list == null) {
            list = ov2.a;
        }
        String strY0 = el1.Y0(eq3.p(el1.g1(list, nc8.I("redirect"))), TokenAuthenticationScheme.SCHEME_DELIMITER, null, null, null, 62);
        Logger.info(str, "Challenge Types used = ".concat(strY0));
        return strY0;
    }

    @Override // com.microsoft.identity.common.java.authorities.CIAMAuthority, com.microsoft.identity.common.java.authorities.Authority
    public ok5 createOAuth2Strategy(OAuth2StrategyParameters oAuth2StrategyParameters) throws ClientException {
        oAuth2StrategyParameters.getClass();
        nk5 nk5VarCreateNativeAuthOAuth2Configuration = createNativeAuthOAuth2Configuration(null, null);
        oAuth2StrategyParameters.setUsingOpenIdConfiguration(NATIVE_AUTH_USE_OPENID_CONFIGURATION);
        nk5VarCreateNativeAuthOAuth2Configuration.getClass();
        UrlConnectionHttpClient.getDefaultInstance().getClass();
        URL url = nk5VarCreateNativeAuthOAuth2Configuration.a;
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/signup/v1.0/start", url, "/signup/v1.0/challenge");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/signup/v1.0/continue", url, "/oauth2/v2.0/initiate");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/oauth2/v2.0/introspect", url, "/oauth2/v2.0/challenge");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/oauth2/v2.0/token", url, "/resetpassword/v1.0/start");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/resetpassword/v1.0/challenge", url, "/resetpassword/v1.0/continue");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/resetpassword/v1.0/submit", url, "/resetpassword/v1.0/poll_completion");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/register/v1.0/introspect", url, "/register/v1.0/challenge");
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/register/v1.0/continue").toString().getClass();
        b05 b05Var = new b05();
        UrlConnectionHttpClient.getDefaultInstance().getClass();
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/signup/v1.0/start").toString().getClass();
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/signup/v1.0/challenge").toString().getClass();
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/signup/v1.0/continue", url, "/oauth2/v2.0/initiate");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/oauth2/v2.0/introspect", url, "/oauth2/v2.0/challenge");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/oauth2/v2.0/token", url, "/resetpassword/v1.0/start");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/resetpassword/v1.0/challenge", url, "/resetpassword/v1.0/continue");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/resetpassword/v1.0/submit", url, "/resetpassword/v1.0/poll_completion");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/register/v1.0/introspect", url, "/register/v1.0/challenge");
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/register/v1.0/continue").toString().getClass();
        sl4 sl4Var = new sl4();
        UrlConnectionHttpClient.getDefaultInstance().getClass();
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/signup/v1.0/start").toString().getClass();
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/signup/v1.0/challenge").toString().getClass();
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/signup/v1.0/continue", url, "/oauth2/v2.0/initiate");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/oauth2/v2.0/introspect", url, "/oauth2/v2.0/challenge");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/oauth2/v2.0/token", url, "/resetpassword/v1.0/start");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/resetpassword/v1.0/challenge", url, "/resetpassword/v1.0/continue");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/resetpassword/v1.0/submit", url, "/resetpassword/v1.0/poll_completion");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/register/v1.0/introspect", url, "/register/v1.0/challenge");
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/register/v1.0/continue").toString().getClass();
        sl4 sl4Var2 = new sl4();
        UrlConnectionHttpClient.getDefaultInstance().getClass();
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/signup/v1.0/start").toString().getClass();
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/signup/v1.0/challenge").toString().getClass();
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/signup/v1.0/continue", url, "/oauth2/v2.0/initiate");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/oauth2/v2.0/introspect", url, "/oauth2/v2.0/challenge");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/oauth2/v2.0/token", url, "/resetpassword/v1.0/start");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/resetpassword/v1.0/challenge", url, "/resetpassword/v1.0/continue");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/resetpassword/v1.0/submit", url, "/resetpassword/v1.0/poll_completion");
        eq3.q(nk5VarCreateNativeAuthOAuth2Configuration, url, "/register/v1.0/introspect", url, "/register/v1.0/challenge");
        nk5VarCreateNativeAuthOAuth2Configuration.a(url, "/register/v1.0/continue").toString().getClass();
        return new ok5(oAuth2StrategyParameters, nk5VarCreateNativeAuthOAuth2Configuration, b05Var, sl4Var, sl4Var2, new ns0(11));
    }

    public final String getClientId() {
        return this.clientId;
    }
}
