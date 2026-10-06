package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import androidx.fragment.app.u;
import defpackage.va;
import defpackage.wa;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SmartcardNfcPromptDialog extends SmartcardDialog {
    private final ICancelCbaCallback mCancelCbaCallback;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardNfcPromptDialog$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SmartcardNfcPromptDialog smartcardNfcPromptDialog = SmartcardNfcPromptDialog.this;
            va vaVar = new va(smartcardNfcPromptDialog.mActivity, R.style.UserChoiceAlertDialogTheme);
            vaVar.l(R.string.smartcard_nfc_prompt_dialog_title);
            vaVar.d(R.string.smartcard_nfc_prompt_dialog_message);
            vaVar.f(R.string.smartcard_nfc_prompt_dialog_negative_button, new SmartcardPromptDialog.AnonymousClass1.DialogInterfaceOnClickListenerC00071(this, 2));
            wa waVarC = vaVar.c();
            waVarC.setCanceledOnTouchOutside(false);
            smartcardNfcPromptDialog.mDialog = waVarC;
        }
    }

    public SmartcardNfcPromptDialog(ICancelCbaCallback iCancelCbaCallback, u uVar) {
        super(uVar);
        this.mCancelCbaCallback = iCancelCbaCallback;
        uVar.runOnUiThread(new AnonymousClass1());
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog
    public final void onUnexpectedUnplug() {
    }
}
