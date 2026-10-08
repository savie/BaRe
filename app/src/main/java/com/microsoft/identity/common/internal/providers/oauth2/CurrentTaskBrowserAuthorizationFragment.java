package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.microsoft.identity.common.internal.telemetry.events.UiEndEvent;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.util.UrlUtil;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CurrentTaskBrowserAuthorizationFragment extends AuthorizationFragment {
    private Intent mAuthIntent;
    private boolean mBrowserFlowStarted = false;
    private boolean mResponseReceived = false;

    public final void completeAuthorizationInBrowserFlow(String str) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("CurrentTaskBrowserAuthorizationFragment:completeAuthorizationInBrowserFlow", null, "Received redirect from customTab/browser.");
        RawAuthorizationResult rawAuthorizationResultFromRedirectUri = RawAuthorizationResult.fromRedirectUri(str);
        int iA = dj7.A(rawAuthorizationResultFromRedirectUri.getResultCode());
        if (iA == 1) {
            UiEndEvent uiEndEvent = new UiEndEvent();
            uiEndEvent.isUserCancelled();
            Telemetry.emit(uiEndEvent);
        } else if (iA == 3) {
            UiEndEvent uiEndEvent2 = new UiEndEvent();
            uiEndEvent2.put("Microsoft.MSAL.ui_complete", Boolean.TRUE.toString());
            Telemetry.emit(uiEndEvent2);
        } else if (iA == 4) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(UrlUtil.getParameters(rawAuthorizationResultFromRedirectUri.getAuthorizationFinalUri()).get("app_link"))));
        }
        sendResult(rawAuthorizationResultFromRedirectUri);
        finish();
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment
    public final void extractState$1(Bundle bundle) {
        super.extractState$1(bundle);
        this.mAuthIntent = (Intent) bundle.getParcelable("com.microsoft.identity.auth.intent");
        this.mBrowserFlowStarted = bundle.getBoolean("browserFlowStarted", false);
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment, androidx.fragment.app.o
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mResponseReceived = arguments.getBoolean("RESPONSE", false);
        }
    }

    @Override // androidx.fragment.app.o
    public final void onResume() {
        super.onResume();
        if (this.mResponseReceived) {
            finish();
        }
        if (this.mBrowserFlowStarted) {
            cancelAuthorization(true);
            return;
        }
        this.mBrowserFlowStarted = true;
        Intent intent = this.mAuthIntent;
        if (intent != null) {
            startActivity(intent);
        } else {
            sendResult(RawAuthorizationResult.fromException(new ClientException("Authorization intent is null.", null, null)));
            finish();
        }
    }

    @Override // androidx.fragment.app.o
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("com.microsoft.identity.auth.intent", this.mAuthIntent);
        bundle.putBoolean("browserFlowStarted", this.mBrowserFlowStarted);
    }
}
