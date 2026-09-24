package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.Context;
import android.content.Intent;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import defpackage.dj7;
import defpackage.fz5;
import defpackage.pe4;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthorizationActivityParameters {
    private final Intent authIntent;
    private final AuthorizationAgent authorizationAgent;
    private final Context context;
    private final String redirectUri;
    private final HashMap<String, String> requestHeader;
    private final String requestUrl;
    private final String sourceLibraryName;
    private final String sourceLibraryVersion;
    private final String utid;
    private final boolean webViewZoomControlsEnabled;
    private final boolean webViewZoomEnabled;

    public AuthorizationActivityParameters(Context context, Intent intent, String str, String str2, HashMap map, AuthorizationAgent authorizationAgent, boolean z, boolean z2, String str3, String str4, String str5, int i) {
        z = (i & 64) != 0 ? true : z;
        z2 = (i & 128) != 0 ? true : z2;
        str3 = (i & 256) != 0 ? null : str3;
        str4 = (i & 512) != 0 ? null : str4;
        str5 = (i & 1024) != 0 ? null : str5;
        this.context = context;
        this.authIntent = intent;
        this.requestUrl = str;
        this.redirectUri = str2;
        this.requestHeader = map;
        this.authorizationAgent = authorizationAgent;
        this.webViewZoomEnabled = z;
        this.webViewZoomControlsEnabled = z2;
        this.sourceLibraryName = str3;
        this.sourceLibraryVersion = str4;
        this.utid = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthorizationActivityParameters)) {
            return false;
        }
        AuthorizationActivityParameters authorizationActivityParameters = (AuthorizationActivityParameters) obj;
        return pe4.d(this.context, authorizationActivityParameters.context) && pe4.d(this.authIntent, authorizationActivityParameters.authIntent) && pe4.d(this.requestUrl, authorizationActivityParameters.requestUrl) && pe4.d(this.redirectUri, authorizationActivityParameters.redirectUri) && pe4.d(this.requestHeader, authorizationActivityParameters.requestHeader) && this.authorizationAgent == authorizationActivityParameters.authorizationAgent && this.webViewZoomEnabled == authorizationActivityParameters.webViewZoomEnabled && this.webViewZoomControlsEnabled == authorizationActivityParameters.webViewZoomControlsEnabled && pe4.d(this.sourceLibraryName, authorizationActivityParameters.sourceLibraryName) && pe4.d(this.sourceLibraryVersion, authorizationActivityParameters.sourceLibraryVersion) && pe4.d(this.utid, authorizationActivityParameters.utid);
    }

    public final Intent getAuthIntent() {
        return this.authIntent;
    }

    public final AuthorizationAgent getAuthorizationAgent() {
        return this.authorizationAgent;
    }

    public final Context getContext() {
        return this.context;
    }

    public final String getRedirectUri() {
        return this.redirectUri;
    }

    public final HashMap<String, String> getRequestHeader() {
        return this.requestHeader;
    }

    public final String getRequestUrl() {
        return this.requestUrl;
    }

    public final String getSourceLibraryName() {
        return this.sourceLibraryName;
    }

    public final String getSourceLibraryVersion() {
        return this.sourceLibraryVersion;
    }

    public final String getUtid() {
        return this.utid;
    }

    public final boolean getWebViewZoomControlsEnabled() {
        return this.webViewZoomControlsEnabled;
    }

    public final boolean getWebViewZoomEnabled() {
        return this.webViewZoomEnabled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [int] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    public final int hashCode() {
        int iHashCode = this.context.hashCode() * 31;
        Intent intent = this.authIntent;
        int iG = fz5.g(fz5.g((iHashCode + (intent == null ? 0 : intent.hashCode())) * 31, 31, this.requestUrl), 31, this.redirectUri);
        HashMap<String, String> map = this.requestHeader;
        int iHashCode2 = (this.authorizationAgent.hashCode() + ((iG + (map == null ? 0 : map.hashCode())) * 31)) * 31;
        boolean z = this.webViewZoomEnabled;
        ?? r4 = z;
        if (z) {
            r4 = 1;
        }
        int i = (iHashCode2 + r4) * 31;
        boolean z2 = this.webViewZoomControlsEnabled;
        int i2 = (i + (z2 ? 1 : z2)) * 31;
        String str = this.sourceLibraryName;
        int iHashCode3 = (i2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.sourceLibraryVersion;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.utid;
        return (iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 961;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AuthorizationActivityParameters(context=");
        sb.append(this.context);
        sb.append(", authIntent=");
        sb.append(this.authIntent);
        sb.append(", requestUrl=");
        sb.append(this.requestUrl);
        sb.append(", redirectUri=");
        sb.append(this.redirectUri);
        sb.append(", requestHeader=");
        sb.append(this.requestHeader);
        sb.append(", authorizationAgent=");
        sb.append(this.authorizationAgent);
        sb.append(", webViewZoomEnabled=");
        sb.append(this.webViewZoomEnabled);
        sb.append(", webViewZoomControlsEnabled=");
        sb.append(this.webViewZoomControlsEnabled);
        sb.append(", sourceLibraryName=");
        sb.append(this.sourceLibraryName);
        sb.append(", sourceLibraryVersion=");
        sb.append(this.sourceLibraryVersion);
        sb.append(", utid=");
        return dj7.n(sb, this.utid, ", webViewEnableSilentAuthorizationFlowTimeOutMs=null, isWebViewWebCpEnabled=false)");
    }
}
