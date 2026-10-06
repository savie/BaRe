package com.microsoft.identity.client;

import com.microsoft.identity.client.exception.MsalException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface SilentAuthenticationCallback {
    void onError(MsalException msalException);

    void onSuccess(AuthenticationResult authenticationResult);
}
