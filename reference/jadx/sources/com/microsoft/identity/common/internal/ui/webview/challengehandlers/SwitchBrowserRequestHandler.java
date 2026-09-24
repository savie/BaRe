package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.content.Intent;
import androidx.fragment.app.u;
import com.microsoft.identity.common.internal.ui.DualScreenActivity;
import com.microsoft.identity.common.internal.ui.browser.AndroidBrowserSelector;
import com.microsoft.identity.common.internal.ui.webview.switchbrowser.SwitchBrowserUriHelper;
import com.microsoft.identity.common.java.browser.Browser;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.ui.BrowserDescriptor;
import com.microsoft.identity.common.logging.Logger;
import defpackage.be8;
import defpackage.gv7;
import defpackage.k55;
import defpackage.ph6;
import defpackage.qj7;
import defpackage.rj7;
import defpackage.v57;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SwitchBrowserRequestHandler implements IChallengeHandler<SwitchBrowserChallenge, be8> {
    private static final String TAG = ph6.a(SwitchBrowserRequestHandler.class).c();
    private final u activity;
    private final AndroidBrowserSelector browserSelector;
    private boolean isSwitchBrowserChallengeActive;
    private final gv7 span$delegate;
    private final rj7 spanContext;

    public SwitchBrowserRequestHandler(u uVar, rj7 rj7Var) {
        AndroidBrowserSelector androidBrowserSelector = new AndroidBrowserSelector(uVar.getApplicationContext());
        this.activity = uVar;
        this.browserSelector = androidBrowserSelector;
        this.spanContext = rj7Var;
        this.span$delegate = new gv7(new SwitchBrowserRequestHandler$span$2(this));
    }

    public final qj7 getSpan() {
        return (qj7) this.span$delegate.getValue();
    }

    public final boolean isSwitchBrowserChallengeActive() {
        return this.isSwitchBrowserChallengeActive;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler
    public final /* bridge */ /* synthetic */ be8 processChallenge(SwitchBrowserChallenge switchBrowserChallenge) {
        throw null;
    }

    /* JADX INFO: renamed from: processChallenge, reason: avoid collision after fix types in other method */
    public final void processChallenge2(SwitchBrowserChallenge switchBrowserChallenge) throws ClientException {
        u uVar = this.activity;
        v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(getSpan());
        try {
            String str = TAG + ":processChallenge";
            String queryParameter = switchBrowserChallenge.getProcessUri().getQueryParameter("state");
            int i = SwitchBrowserUriHelper.a;
            SwitchBrowserUriHelper.statesMatch(switchBrowserChallenge.getAuthorizationUrl(), queryParameter);
            Browser browserSelectBrowser = this.browserSelector.selectBrowser(BrowserDescriptor.getBrowserSafeListForSwitchBrowser(), null);
            if (browserSelectBrowser == null) {
                ClientException clientException = new ClientException("no_browsers_available", "No browser found for SwitchBrowserChallenge.", null);
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error(str, "No browser found for SwitchBrowserChallenge.", clientException);
                getSpan().getClass();
                getSpan().getClass();
                getSpan().getClass();
                throw clientException;
            }
            getSpan().getClass();
            getSpan().getClass();
            Intent intent = new Intent(uVar, (Class<?>) DualScreenActivity.class);
            intent.putExtra("browser_package_name", browserSelectBrowser.getPackageName());
            intent.putExtra("browser_supports_custom_tabs", browserSelectBrowser.isCustomTabsServiceSupported());
            intent.putExtra("process_uri", switchBrowserChallenge.getProcessUri().toString());
            intent.setFlags(268435456);
            uVar.startActivity(intent);
            getSpan().getClass();
            this.isSwitchBrowserChallengeActive = true;
            getSpan().getClass();
            k55.d(v57VarMakeCurrentSpan, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(v57VarMakeCurrentSpan, th);
                throw th2;
            }
        }
    }
}
