package com.microsoft.identity.common.internal.ui.webview.switchbrowser;

import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import defpackage.bt3;
import defpackage.gs4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2 extends gs4 implements bt3 {
    public static final SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2 INSTANCE = new SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2(0);

    @Override // defpackage.bt3
    public final Object invoke() {
        return Boolean.valueOf(CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.SWITCH_BROWSER_PROTOCOL_REQUIRES_STATE));
    }
}
