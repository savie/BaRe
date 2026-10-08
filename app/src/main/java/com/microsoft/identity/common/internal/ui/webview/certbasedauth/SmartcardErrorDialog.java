package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import androidx.fragment.app.u;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SmartcardErrorDialog extends SmartcardDialog {
    private final int mDismissButtonStringResourceId;
    private final IDismissCallback mDismissCallback;
    private final int mMessageStringResourceId;
    private final int mTitleStringResourceId;

    public SmartcardErrorDialog(int i, int i2, int i3, IDismissCallback iDismissCallback, u uVar) {
        super(uVar);
        this.mTitleStringResourceId = i;
        this.mMessageStringResourceId = i2;
        this.mDismissButtonStringResourceId = i3;
        this.mDismissCallback = iDismissCallback;
        uVar.runOnUiThread(new SmartcardPinDialog.AnonymousClass1(this, 1));
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog
    public final void onUnexpectedUnplug() {
        this.mDismissCallback.onDismiss();
    }
}
