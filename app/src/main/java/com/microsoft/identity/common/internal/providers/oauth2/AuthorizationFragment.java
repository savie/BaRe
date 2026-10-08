package com.microsoft.identity.common.internal.providers.oauth2;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.o;
import androidx.fragment.app.u;
import androidx.fragment.app.z;
import com.microsoft.identity.common.internal.telemetry.events.UiEndEvent;
import com.microsoft.identity.common.java.logging.DiagnosticContext;
import com.microsoft.identity.common.java.logging.RequestContext;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.util.ported.LocalBroadcaster;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import com.microsoft.identity.common.logging.Logger;
import defpackage.fz5;
import defpackage.ss5;
import java.net.URI;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AuthorizationFragment extends o {
    private Bundle mInstanceState;
    protected boolean mAuthResultSent = false;
    private final LocalBroadcaster.IReceiverCallback mCancelRequestReceiver = new LocalBroadcaster.IReceiverCallback() { // from class: com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment.1
        @Override // com.microsoft.identity.common.java.util.ported.LocalBroadcaster.IReceiverCallback
        public final void onReceive(PropertyBag propertyBag) {
            AuthorizationFragment.this.cancelAuthorization(((Boolean) propertyBag.getOrDefault("cancel_authorization_request", Boolean.FALSE)).booleanValue());
        }
    };
    private final LinkedHashMap mUrlStatusTracker = new LinkedHashMap();
    private int mUrlLoadCounter = 0;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class UrlStatus {
        private String authError;
        private String loadingError;
        private final String url;

        public UrlStatus(String str) {
            if (str != null && !str.isEmpty()) {
                try {
                    URI uri = new URI(str);
                    str = uri.getHost();
                    if (str != null && !str.isEmpty()) {
                        if (str.endsWith(".microsoftonline.com") || str.endsWith(".microsoft.com") || str.endsWith(".microsoftonline.us") || str.endsWith(".microsoftonline.cn") || str.endsWith(".live.com")) {
                            StringBuilder sb = new StringBuilder();
                            String scheme = uri.getScheme();
                            if (scheme != null) {
                                sb.append(scheme);
                                sb.append("://");
                            }
                            sb.append(str);
                            String path = uri.getPath();
                            if (path != null && !path.isEmpty()) {
                                sb.append(path);
                            }
                            str = sb.toString();
                        } else {
                            str = "[REDACTED]";
                        }
                    }
                } catch (Exception unused) {
                    str = "[PARSING_ERROR]";
                }
            }
            this.url = str;
            this.loadingError = null;
            this.authError = null;
        }

        public final void setAuthError(String str) {
            this.authError = str;
        }

        public final void setLoadingError(String str) {
            this.loadingError = str;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("url=");
            sb.append(this.url);
            if (this.loadingError != null) {
                sb.append(", loadingError=");
                sb.append(this.loadingError);
            }
            if (this.authError != null) {
                sb.append(", authError=");
                sb.append(this.authError);
            }
            return sb.toString();
        }
    }

    public final void cancelAuthorization(boolean z) {
        if (z) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AuthorizationFragment:cancelAuthorization", "Received Authorization flow cancelled by the user");
            sendResult(RawAuthorizationResult.fromResultCode(2));
            updateLatestUrlStatus(null, "CANCELLED: Authorization cancelled by user.");
        } else {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AuthorizationFragment:cancelAuthorization", "Received Authorization flow cancel request from SDK");
            sendResult(RawAuthorizationResult.fromResultCode(7));
            updateLatestUrlStatus(null, "SDK_CANCELLED: Authorization cancelled by SDK.");
        }
        UiEndEvent uiEndEvent = new UiEndEvent();
        uiEndEvent.isUserCancelled();
        Telemetry.emit(uiEndEvent);
        finish();
    }

    public void extractState$1(Bundle bundle) {
        String string = bundle.getString("correlation_id");
        RequestContext requestContext = new RequestContext();
        requestContext.put("correlation_id", string);
        DiagnosticContext.INSTANCE.setRequestContext(requestContext);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("AuthorizationFragment:setDiagnosticContextForAuthorizationActivity", "Initializing diagnostic context for AuthorizationActivity");
    }

    public final void finish() {
        LocalBroadcaster.INSTANCE.unregisterCallback("cancel_authorization_request");
        u activity = getActivity();
        if (activity instanceof AuthorizationActivity) {
            activity.finish();
            return;
        }
        try {
            z fragmentManager = getFragmentManager();
            if (fragmentManager != null) {
                androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
                aVar.i(this);
                if (aVar.g) {
                    throw new IllegalStateException("This transaction is already being added to the back stack");
                }
                aVar.h = false;
                aVar.r.A(aVar, false);
            }
        } catch (Exception e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AuthorizationFragment#finish", "Logged as error to capture 'cause'; Exception occurred when removing ourselves from provided FragmentManager", e);
        }
    }

    public void handleBackButtonPressed() {
        cancelAuthorization(true);
    }

    @Override // androidx.fragment.app.o
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LocalBroadcaster.INSTANCE.registerCallback("cancel_authorization_request", this.mCancelRequestReceiver);
        if (bundle == null && this.mInstanceState == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("AuthorizationFragment:onCreate", "No stored state. Unable to handle response");
            finish();
        } else if (bundle == null) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("AuthorizationFragment:onCreate", "Extract state from the intent bundle.");
            extractState$1(this.mInstanceState);
        } else {
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("AuthorizationFragment:onCreate", "Extract state from the saved bundle.");
            extractState$1(bundle);
        }
    }

    @Override // androidx.fragment.app.o
    public void onDestroy() {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AuthorizationFragment:onDestroy", "");
        if (!this.mAuthResultSent) {
            com.microsoft.identity.common.java.logging.Logger.info("AuthorizationFragment:onDestroy", "Hosting Activity is destroyed before Auth request is completed, sending request cancel");
            UiEndEvent uiEndEvent = new UiEndEvent();
            uiEndEvent.isUserCancelled();
            Telemetry.emit(uiEndEvent);
            sendResult(RawAuthorizationResult.fromResultCode(7));
            updateLatestUrlStatus(null, "SDK_CANCELLED: Activity destroyed before auth completion");
        }
        LocalBroadcaster.INSTANCE.unregisterCallback("cancel_authorization_request");
        super.onDestroy();
    }

    @Override // androidx.fragment.app.o
    public final void onStop() {
        u activity = getActivity();
        if (!this.mAuthResultSent && (activity == null || activity.isFinishing())) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AuthorizationFragment:onStop", "Hosting Activity is destroyed before Auth request is completed, sending request cancel");
            UiEndEvent uiEndEvent = new UiEndEvent();
            uiEndEvent.isUserCancelled();
            Telemetry.emit(uiEndEvent);
            sendResult(RawAuthorizationResult.fromResultCode(7));
        }
        super.onStop();
    }

    @Override // androidx.fragment.app.o
    public void onViewCreated(View view, Bundle bundle) {
        requireActivity().getOnBackPressedDispatcher().a(getViewLifecycleOwner(), new ss5() { // from class: com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment.2
            @Override // defpackage.ss5
            public final void handleOnBackPressed() {
                AuthorizationFragment.this.handleBackButtonPressed();
            }
        });
    }

    public final void sendResult(RawAuthorizationResult rawAuthorizationResult) {
        String strConcat = "Sending result from Authorization Activity, resultCode: ".concat(fz5.v(rawAuthorizationResult.getResultCode()));
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AuthorizationFragment:sendResult", strConcat);
        PropertyBag propertyBag = RawAuthorizationResult.toPropertyBag(rawAuthorizationResult);
        propertyBag.put("com.microsoft.identity.client.request.code", 1001);
        LocalBroadcaster.INSTANCE.broadcast("return_authorization_request_result", propertyBag);
        this.mAuthResultSent = true;
    }

    public final void setInstanceState(Bundle bundle) {
        this.mInstanceState = bundle;
    }

    public final void trackUrlStatus(String str) {
        int i = this.mUrlLoadCounter + 1;
        this.mUrlLoadCounter = i;
        this.mUrlStatusTracker.put(Integer.valueOf(i), new UrlStatus(str));
    }

    public final void updateLatestUrlStatus(String str, String str2) {
        Integer numValueOf = Integer.valueOf(this.mUrlLoadCounter);
        LinkedHashMap linkedHashMap = this.mUrlStatusTracker;
        UrlStatus urlStatus = (UrlStatus) linkedHashMap.get(numValueOf);
        if (urlStatus == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("AuthorizationFragment", "No URL load status to update.");
        } else {
            urlStatus.setLoadingError(str);
            urlStatus.setAuthError(str2);
            linkedHashMap.put(Integer.valueOf(this.mUrlLoadCounter), urlStatus);
        }
    }
}
