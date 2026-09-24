package com.microsoft.identity.common.internal.commands.parameters;

import android.app.Activity;
import com.microsoft.identity.common.internal.msafederation.google.SignInWithGoogleCredential;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters;
import com.microsoft.identity.common.java.providers.oauth2.OpenIdConnectPromptParameter;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import com.microsoft.identity.common.java.ui.BrowserDescriptor;
import com.microsoft.identity.common.java.ui.PreferredAuthMethod;
import defpackage.dj7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidInteractiveTokenCommandParameters extends InteractiveTokenCommandParameters {
    private final transient Activity activity;
    private final SignInWithGoogleCredential signInWithGoogleCredential;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class AndroidInteractiveTokenCommandParametersBuilder<C extends AndroidInteractiveTokenCommandParameters, B extends AndroidInteractiveTokenCommandParametersBuilder<C, B>> extends TokenCommandParameters.TokenCommandParametersBuilder<Object, Object> {
        private String accountTransferToken;
        private Activity activity;
        private AuthorizationAgent authorizationAgent;
        private boolean brokerBrowserSupportEnabled;
        private List<BrowserDescriptor> browserSafeList;
        private List<Map.Entry<String, String>> extraQueryStringParameters;
        private List<Map.Entry<String, String>> extraQueryStringParametersForWebApps;
        private List<String> extraScopesToConsent;
        private boolean handleNullTaskAffinity;
        private boolean isWebViewZoomControlsEnabled;
        private boolean isWebViewZoomEnabled;
        private PreferredAuthMethod preferredAuthMethod;
        private BrowserDescriptor preferredBrowser;
        private OpenIdConnectPromptParameter prompt;
        private HashMap<String, String> requestHeaders;
        private SignInWithGoogleCredential signInWithGoogleCredential;
        private boolean suppressBrokerAccountPicker;

        public final B $fillValuesFrom(C c) {
            $fillValuesFrom$1(c);
            this.browserSafeList = ((InteractiveTokenCommandParameters) c).browserSafeList;
            this.preferredBrowser = ((InteractiveTokenCommandParameters) c).preferredBrowser;
            this.preferredAuthMethod = ((InteractiveTokenCommandParameters) c).preferredAuthMethod;
            this.requestHeaders = ((InteractiveTokenCommandParameters) c).requestHeaders;
            this.brokerBrowserSupportEnabled = ((InteractiveTokenCommandParameters) c).brokerBrowserSupportEnabled;
            this.prompt = ((InteractiveTokenCommandParameters) c).prompt;
            this.authorizationAgent = ((InteractiveTokenCommandParameters) c).authorizationAgent;
            this.isWebViewZoomEnabled = ((InteractiveTokenCommandParameters) c).isWebViewZoomEnabled;
            this.isWebViewZoomControlsEnabled = ((InteractiveTokenCommandParameters) c).isWebViewZoomControlsEnabled;
            this.handleNullTaskAffinity = ((InteractiveTokenCommandParameters) c).handleNullTaskAffinity;
            this.extraQueryStringParameters = ((InteractiveTokenCommandParameters) c).extraQueryStringParameters;
            this.extraQueryStringParametersForWebApps = ((InteractiveTokenCommandParameters) c).extraQueryStringParametersForWebApps;
            this.extraScopesToConsent = ((InteractiveTokenCommandParameters) c).extraScopesToConsent;
            this.accountTransferToken = ((InteractiveTokenCommandParameters) c).accountTransferToken;
            this.suppressBrokerAccountPicker = ((InteractiveTokenCommandParameters) c).suppressBrokerAccountPicker;
            AndroidInteractiveTokenCommandParametersBuilderImpl androidInteractiveTokenCommandParametersBuilderImpl = (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
            this.activity = ((AndroidInteractiveTokenCommandParameters) c).activity;
            this.signInWithGoogleCredential = ((AndroidInteractiveTokenCommandParameters) c).signInWithGoogleCredential;
            return androidInteractiveTokenCommandParametersBuilderImpl;
        }

        public final B activity(Activity activity) {
            this.activity = activity;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final Object authorizationAgent(AuthorizationAgent authorizationAgent) {
            this.authorizationAgent = authorizationAgent;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final AndroidInteractiveTokenCommandParametersBuilder brokerBrowserSupportEnabled() {
            this.brokerBrowserSupportEnabled = false;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final Object browserSafeList(List<BrowserDescriptor> list) {
            this.browserSafeList = list;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public abstract C build();

        public abstract AndroidInteractiveTokenCommandParameters build$1();

        public final AndroidInteractiveTokenCommandParametersBuilder extraQueryStringParameters(ArrayList arrayList) {
            this.extraQueryStringParameters = arrayList;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final Object extraScopesToConsent(List<String> list) {
            this.extraScopesToConsent = list;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final Object handleNullTaskAffinity(boolean z) {
            this.handleNullTaskAffinity = z;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final Object isWebViewZoomControlsEnabled(boolean z) {
            this.isWebViewZoomControlsEnabled = z;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final Object isWebViewZoomEnabled(boolean z) {
            this.isWebViewZoomEnabled = z;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final AndroidInteractiveTokenCommandParametersBuilder preferredAuthMethod() {
            this.preferredAuthMethod = null;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final Object preferredBrowser(BrowserDescriptor browserDescriptor) {
            this.preferredBrowser = browserDescriptor;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final Object prompt(OpenIdConnectPromptParameter openIdConnectPromptParameter) {
            this.prompt = openIdConnectPromptParameter;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        public final Object requestHeaders(HashMap<String, String> map) {
            this.requestHeaders = map;
            return (AndroidInteractiveTokenCommandParametersBuilderImpl) this;
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters.TokenCommandParametersBuilder, com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final String toString() {
            return "AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder(super=" + toString$com$microsoft$identity$common$java$commands$parameters$InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder() + ", activity=" + this.activity + ", signInWithGoogleCredential=" + this.signInWithGoogleCredential + ")";
        }

        public final String toString$com$microsoft$identity$common$java$commands$parameters$InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder() {
            StringBuilder sb = new StringBuilder("InteractiveTokenCommandParameters.InteractiveTokenCommandParametersBuilder(super=");
            sb.append(super.toString());
            sb.append(", browserSafeList=");
            sb.append(this.browserSafeList);
            sb.append(", preferredBrowser=");
            sb.append(this.preferredBrowser);
            sb.append(", preferredAuthMethod=");
            sb.append(this.preferredAuthMethod);
            sb.append(", requestHeaders=");
            sb.append(this.requestHeaders);
            sb.append(", brokerBrowserSupportEnabled=");
            sb.append(this.brokerBrowserSupportEnabled);
            sb.append(", prompt=");
            sb.append(this.prompt);
            sb.append(", authorizationAgent=");
            sb.append(this.authorizationAgent);
            sb.append(", isWebViewZoomEnabled=");
            sb.append(this.isWebViewZoomEnabled);
            sb.append(", isWebViewZoomControlsEnabled=");
            sb.append(this.isWebViewZoomControlsEnabled);
            sb.append(", handleNullTaskAffinity=");
            sb.append(this.handleNullTaskAffinity);
            sb.append(", extraQueryStringParameters=");
            sb.append(this.extraQueryStringParameters);
            sb.append(", extraQueryStringParametersForWebApps=");
            sb.append(this.extraQueryStringParametersForWebApps);
            sb.append(", extraScopesToConsent=");
            sb.append(this.extraScopesToConsent);
            sb.append(", accountTransferToken=");
            sb.append(this.accountTransferToken);
            sb.append(", suppressBrokerAccountPicker=");
            return dj7.p(sb, this.suppressBrokerAccountPicker, ")");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AndroidInteractiveTokenCommandParametersBuilderImpl extends AndroidInteractiveTokenCommandParametersBuilder<AndroidInteractiveTokenCommandParameters, AndroidInteractiveTokenCommandParametersBuilderImpl> {
        @Override // com.microsoft.identity.common.internal.commands.parameters.AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder, com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final AndroidInteractiveTokenCommandParameters build() {
            return new AndroidInteractiveTokenCommandParameters(this);
        }

        @Override // com.microsoft.identity.common.internal.commands.parameters.AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder
        public final AndroidInteractiveTokenCommandParameters build$1() {
            return new AndroidInteractiveTokenCommandParameters(this);
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters.TokenCommandParametersBuilder, com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final TokenCommandParameters.TokenCommandParametersBuilder self() {
            return this;
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final CommandParameters build() {
            return new AndroidInteractiveTokenCommandParameters(this);
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final CommandParameters.CommandParametersBuilder self() {
            return this;
        }
    }

    public AndroidInteractiveTokenCommandParameters(AndroidInteractiveTokenCommandParametersBuilder<?, ?> androidInteractiveTokenCommandParametersBuilder) {
        super(androidInteractiveTokenCommandParametersBuilder);
        this.activity = ((AndroidInteractiveTokenCommandParametersBuilder) androidInteractiveTokenCommandParametersBuilder).activity;
        this.signInWithGoogleCredential = ((AndroidInteractiveTokenCommandParametersBuilder) androidInteractiveTokenCommandParametersBuilder).signInWithGoogleCredential;
    }

    public static AndroidInteractiveTokenCommandParametersBuilder<?, ?> builder() {
        return new AndroidInteractiveTokenCommandParametersBuilderImpl();
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters, com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public final boolean canEqual(CommandParameters commandParameters) {
        return commandParameters instanceof AndroidInteractiveTokenCommandParameters;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters, com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters, com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AndroidInteractiveTokenCommandParameters)) {
            return false;
        }
        AndroidInteractiveTokenCommandParameters androidInteractiveTokenCommandParameters = (AndroidInteractiveTokenCommandParameters) obj;
        if (!super.equals(obj)) {
            return false;
        }
        SignInWithGoogleCredential signInWithGoogleCredential = androidInteractiveTokenCommandParameters.signInWithGoogleCredential;
        SignInWithGoogleCredential signInWithGoogleCredential2 = this.signInWithGoogleCredential;
        return signInWithGoogleCredential2 != null ? signInWithGoogleCredential2.equals(signInWithGoogleCredential) : signInWithGoogleCredential == null;
    }

    public final Activity getActivity() {
        return this.activity;
    }

    public final SignInWithGoogleCredential getSignInWithGoogleCredential() {
        return this.signInWithGoogleCredential;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters, com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters, com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public final int hashCode() {
        int iHashCode = super.hashCode() * 59;
        SignInWithGoogleCredential signInWithGoogleCredential = this.signInWithGoogleCredential;
        return iHashCode + (signInWithGoogleCredential == null ? 43 : signInWithGoogleCredential.hashCode());
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters
    public final AndroidInteractiveTokenCommandParametersBuilder toBuilder() {
        return new AndroidInteractiveTokenCommandParametersBuilderImpl().$fillValuesFrom(this);
    }
}
