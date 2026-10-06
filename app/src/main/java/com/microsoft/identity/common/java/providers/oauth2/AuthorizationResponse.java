package com.microsoft.identity.common.java.providers.oauth2;

import defpackage.q03;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AuthorizationResponse implements ISuccessResponse {
    private final String mCode;
    private transient Iterable<Map.Entry<String, String>> mExtraParameters;

    @q03
    private String mState;

    public AuthorizationResponse(String str, String str2) {
        this.mCode = str;
        this.mState = str2;
    }

    public final String getCode() {
        return this.mCode;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.IHasExtraParameters
    public final Iterable<Map.Entry<String, String>> getExtraParameters() {
        return this.mExtraParameters;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.IHasExtraParameters
    public final void setExtraParameters(Iterable<Map.Entry<String, String>> iterable) {
        this.mExtraParameters = iterable;
    }
}
