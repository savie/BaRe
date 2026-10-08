package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import com.microsoft.identity.common.PropertyBagUtil;
import defpackage.bt3;
import defpackage.gs4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class SwitchBrowserRequestHandler$span$2 extends gs4 implements bt3 {
    final /* synthetic */ SwitchBrowserRequestHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchBrowserRequestHandler$span$2(SwitchBrowserRequestHandler switchBrowserRequestHandler) {
        super(0);
        this.this$0 = switchBrowserRequestHandler;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        return PropertyBagUtil.createSpanFromParent("SwitchBrowserProcess", this.this$0.spanContext);
    }
}
