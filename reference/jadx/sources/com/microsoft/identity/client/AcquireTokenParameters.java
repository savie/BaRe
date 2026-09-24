package com.microsoft.identity.client;

import android.app.Activity;
import androidx.fragment.app.o;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AcquireTokenParameters extends TokenParameters {
    private final Activity mActivity;
    private final AuthenticationCallback mCallback;
    private final List<Map.Entry<String, String>> mExtraQueryStringParameters;
    private final List<String> mExtraScopesToConsent;
    private final o mFragment;
    private final String mLoginHint;
    private final Prompt mPrompt;

    public AcquireTokenParameters(Builder builder) {
        super(builder);
        this.mActivity = builder.mActivity;
        this.mFragment = null;
        this.mLoginHint = builder.mLoginHint;
        this.mPrompt = builder.mPrompt;
        this.mExtraScopesToConsent = builder.mExtraScopesToConsent;
        this.mExtraQueryStringParameters = null;
        this.mCallback = builder.mCallback;
    }

    public final Activity getActivity() {
        return this.mActivity;
    }

    public final AuthenticationCallback getCallback() {
        return this.mCallback;
    }

    public final List<Map.Entry<String, String>> getExtraQueryStringParameters() {
        return this.mExtraQueryStringParameters;
    }

    public final List<String> getExtraScopesToConsent() {
        return this.mExtraScopesToConsent;
    }

    public final o getFragment() {
        return this.mFragment;
    }

    public final String getLoginHint() {
        return this.mLoginHint;
    }

    public final Prompt getPrompt() {
        return this.mPrompt;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Builder extends TokenParameters.Builder<Builder> {
        private Activity mActivity;
        private AuthenticationCallback mCallback;
        private List<String> mExtraScopesToConsent;
        private String mLoginHint;
        private Prompt mPrompt;

        public final void startAuthorizationFromActivity(Activity activity) {
            this.mActivity = activity;
        }

        public final void withCallback(AuthenticationCallback authenticationCallback) {
            this.mCallback = authenticationCallback;
        }

        public final void withLoginHint(String str) {
            this.mLoginHint = str;
        }

        public final void withOtherScopesToAuthorize(List list) {
            this.mExtraScopesToConsent = list;
        }

        public final void withPrompt(Prompt prompt) {
            this.mPrompt = prompt;
        }

        @Override // com.microsoft.identity.client.TokenParameters.Builder
        public final TokenParameters.Builder self() {
            return this;
        }
    }
}
