package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import androidx.fragment.app.u;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SmartcardRemovalPromptDialog extends SmartcardDialog {
    private final IDismissCallback mDismissCallback;

    public SmartcardRemovalPromptDialog(IDismissCallback iDismissCallback, u uVar) {
        super(uVar);
        this.mDismissCallback = iDismissCallback;
        uVar.runOnUiThread(new SmartcardDialog.AnonymousClass1(this, 2));
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog
    public final void onUnexpectedUnplug() {
        ((DialogHolder.AnonymousClass3) this.mDismissCallback).onDismiss();
    }
}
