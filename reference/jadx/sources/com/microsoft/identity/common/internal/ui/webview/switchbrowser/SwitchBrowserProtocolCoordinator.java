package com.microsoft.identity.common.internal.ui.webview.switchbrowser;

import androidx.fragment.app.u;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.SwitchBrowserRequestHandler;
import com.microsoft.identity.common.logging.Logger;
import defpackage.gv7;
import defpackage.rj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SwitchBrowserProtocolCoordinator {
    private final rj7 spanContext;
    private final SwitchBrowserRequestHandler switchBrowserRequestHandler;

    public SwitchBrowserProtocolCoordinator(u uVar, rj7 rj7Var) {
        this.switchBrowserRequestHandler = new SwitchBrowserRequestHandler(uVar, rj7Var);
        this.spanContext = rj7Var;
        new gv7(new SwitchBrowserProtocolCoordinator$span$2(this));
    }

    public final SwitchBrowserRequestHandler getSwitchBrowserRequestHandler() {
        return this.switchBrowserRequestHandler;
    }

    public final boolean isExpectingSwitchBrowserResume() {
        StringBuilder sb = new StringBuilder("ExpectingRequest: ");
        SwitchBrowserRequestHandler switchBrowserRequestHandler = this.switchBrowserRequestHandler;
        sb.append(switchBrowserRequestHandler.isSwitchBrowserChallengeActive());
        String string = sb.toString();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("SwitchBrowserProtocolCoordinator:isExpectingSwitchBrowserResume", string);
        return switchBrowserRequestHandler.isSwitchBrowserChallengeActive();
    }
}
