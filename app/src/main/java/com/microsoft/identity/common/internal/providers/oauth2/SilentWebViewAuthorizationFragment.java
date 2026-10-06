package com.microsoft.identity.common.internal.providers.oauth2;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import defpackage.l73;
import defpackage.z85;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SilentWebViewAuthorizationFragment extends WebViewAuthorizationFragment {
    private long webViewSilentAuthorizationFlowTimeOut = 5000;

    @Override // com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment, com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment
    public final void extractState$1(Bundle bundle) {
        bundle.getClass();
        super.extractState$1(bundle);
        this.webViewSilentAuthorizationFlowTimeOut = l73.i(bundle.getLong("com.microsoft.identity.web.view.silent.authorization.flow.timeout", 5000L), 1000L, 20000L);
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment, androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (viewOnCreateView == null) {
            return null;
        }
        viewOnCreateView.setVisibility(8);
        viewOnCreateView.setBackgroundColor(0);
        return viewOnCreateView;
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment, androidx.fragment.app.o
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("com.microsoft.identity.web.view.silent.authorization.flow.timeout", this.webViewSilentAuthorizationFlowTimeOut);
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment, androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        l73.v(z85.t(getViewLifecycleOwner()), null, new SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1(this.webViewSilentAuthorizationFlowTimeOut, this, null), 3);
    }
}
