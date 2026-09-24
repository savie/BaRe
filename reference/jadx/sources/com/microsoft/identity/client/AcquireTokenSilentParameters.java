package com.microsoft.identity.client;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AcquireTokenSilentParameters extends TokenParameters {
    private SilentAuthenticationCallback mCallback;
    private final boolean mForceRefresh;

    public AcquireTokenSilentParameters(Builder builder) {
        super(builder);
        this.mForceRefresh = builder.mForceRefresh;
        this.mCallback = builder.mCallback;
    }

    public final SilentAuthenticationCallback getCallback() {
        return this.mCallback;
    }

    public final boolean getForceRefresh() {
        return this.mForceRefresh;
    }

    public final void setCallback(SilentAuthenticationCallback silentAuthenticationCallback) {
        this.mCallback = silentAuthenticationCallback;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Builder extends TokenParameters.Builder<Builder> {
        private SilentAuthenticationCallback mCallback;
        private boolean mForceRefresh;

        public final void forceRefresh(boolean z) {
            this.mForceRefresh = z;
        }

        public final void withCallback$1(AuthenticationCallback authenticationCallback) {
            this.mCallback = authenticationCallback;
        }

        @Override // com.microsoft.identity.client.TokenParameters.Builder
        public final TokenParameters.Builder self() {
            return this;
        }
    }
}
