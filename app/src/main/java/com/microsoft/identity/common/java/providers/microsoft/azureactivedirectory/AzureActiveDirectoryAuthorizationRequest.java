package com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.java.providers.microsoft.MicrosoftAuthorizationRequest;
import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AzureActiveDirectoryAuthorizationRequest extends MicrosoftAuthorizationRequest {

    @y77("claims")
    private String mClaimsChallenge;

    @y77("prompt")
    private String mPrompt;

    @y77("resource")
    private String mResource;

    @Override // com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest
    public final String getAuthorizationEndpoint() {
        return null;
    }
}
