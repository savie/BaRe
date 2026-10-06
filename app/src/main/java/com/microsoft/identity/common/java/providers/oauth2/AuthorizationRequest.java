package com.microsoft.identity.common.java.providers.oauth2;

import com.google.gson.a;
import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.base64.Base64Util;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import com.microsoft.identity.common.java.util.ObjectMapper;
import defpackage.dj7;
import defpackage.q03;
import defpackage.y77;
import java.io.Serializable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AuthorizationRequest<T extends AuthorizationRequest<T>> implements Serializable {

    @q03
    @y77("brk_client_id")
    private final String mBrkClientId;

    @y77("brk_redirect_uri")
    private final String mBrkRedirectUri;

    @q03
    @y77("claims")
    private final String mClaims;

    @q03
    @y77("client_id")
    private final String mClientId;
    private final transient ArrayList mExtraQueryParams;

    @y77("redirect_uri")
    private final String mRedirectUri;
    private final transient HashMap<String, String> mRequestHeaders;

    @q03
    @y77("response_type")
    private final String mResponseType = "code";

    @q03
    @y77("scope")
    private final String mScope;

    @q03
    @y77("state")
    private final String mState;

    @q03
    private final transient boolean mWebViewZoomControlsEnabled;

    @q03
    private final transient boolean mWebViewZoomEnabled;

    public AuthorizationRequest(MicrosoftStsAuthorizationRequest.Builder builder) {
        String strEncodeUrlSafeString;
        this.mClientId = builder.mClientId;
        this.mRedirectUri = builder.mRedirectUri;
        if (builder.mState == null) {
            strEncodeUrlSafeString = null;
        } else {
            String str = builder.mState;
            int i = Base64Util.a;
            str.getClass();
            byte[] bytes = str.getBytes(AuthenticationConstants.ENCODING_UTF8);
            bytes.getClass();
            strEncodeUrlSafeString = LibraryInfoHelper.encodeUrlSafeString(bytes);
        }
        this.mState = strEncodeUrlSafeString;
        this.mScope = builder.mScope;
        this.mBrkClientId = builder.mBrkClientId;
        this.mBrkRedirectUri = builder.mBrkRedirectUri;
        this.mExtraQueryParams = builder.mExtraQueryParams;
        this.mRequestHeaders = builder.mRequestHeaders;
        this.mClaims = builder.mClaims;
        this.mWebViewZoomEnabled = builder.mWebViewZoomEnabled;
        this.mWebViewZoomControlsEnabled = builder.mWebViewZoomControlsEnabled;
    }

    public abstract String getAuthorizationEndpoint() throws ClientException;

    public URI getAuthorizationRequestAsHttpRequest() throws ClientException {
        try {
            CommonURIBuilder commonURIBuilder = new CommonURIBuilder(getAuthorizationEndpoint());
            a aVar = ObjectMapper.GSON;
            commonURIBuilder.addParametersIfAbsent((Map) aVar.c(aVar.i(this), Map.class));
            ArrayList<Map.Entry> arrayList = this.mExtraQueryParams;
            if (arrayList != null) {
                for (Map.Entry entry : arrayList) {
                    commonURIBuilder.addParameterIfAbsent((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return commonURIBuilder.build();
        } catch (URISyntaxException e) {
            throw new ClientException("malformed_url", e.getMessage(), e);
        }
    }

    public final String getBrkRedirectUri() {
        return this.mBrkRedirectUri;
    }

    public final String getClaims() {
        return this.mClaims;
    }

    public final String getClientId() {
        return this.mClientId;
    }

    public final String getRedirectUri() {
        return this.mRedirectUri;
    }

    public final HashMap<String, String> getRequestHeaders() {
        return this.mRequestHeaders;
    }

    public final String getScope() {
        return this.mScope;
    }

    public final String getState() {
        return this.mState;
    }

    public final boolean isWebViewZoomControlsEnabled() {
        return this.mWebViewZoomControlsEnabled;
    }

    public final boolean isWebViewZoomEnabled() {
        return this.mWebViewZoomEnabled;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AuthorizationRequest{mResponseType='");
        sb.append(this.mResponseType);
        sb.append("', mClientId='");
        sb.append(this.mClientId);
        sb.append("', mRedirectUri='");
        sb.append(this.mRedirectUri);
        sb.append("', mBrkClientId='");
        sb.append(this.mBrkClientId);
        sb.append("', mBrkRedirectUri='");
        sb.append(this.mBrkRedirectUri);
        sb.append("', mScope='");
        sb.append(this.mScope);
        sb.append("', mState='");
        return dj7.n(sb, this.mState, "'}");
    }
}
