package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.view.WindowManager;
import androidx.fragment.app.u;
import com.microsoft.identity.common.logging.Logger;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class DialogHolder {
    private final u mActivity;
    private SmartcardDialog mCurrentDialog = null;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.DialogHolder$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements IDismissCallback, IConnectionCallback {
        final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(Object obj) {
            this.this$0 = obj;
        }

        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IConnectionCallback
        public void onCreateConnection() {
            ((UsbSmartcardCertBasedAuthChallengeHandler) this.this$0).mDialogHolder.dismissDialog();
        }

        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDismissCallback
        public void onDismiss() {
            ((DialogHolder) this.this$0).dismissDialog();
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.DialogHolder$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements IDismissCallback, IDisconnectionCallback {
        final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass2(Object obj) {
            this.this$0 = obj;
        }

        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDisconnectionCallback
        public void onClosedConnection() {
            UsbSmartcardCertBasedAuthChallengeHandler usbSmartcardCertBasedAuthChallengeHandler = (UsbSmartcardCertBasedAuthChallengeHandler) this.this$0;
            DialogHolder dialogHolder = usbSmartcardCertBasedAuthChallengeHandler.mDialogHolder;
            if (dialogHolder.isDialogShowing()) {
                dialogHolder.onUnexpectedUnplug();
                if (dialogHolder.isSmartcardRemovalPromptDialogShowing()) {
                    return;
                }
                dialogHolder.showErrorDialog(R.string.smartcard_early_unplug_dialog_title, R.string.smartcard_early_unplug_dialog_message);
                String str = usbSmartcardCertBasedAuthChallengeHandler.TAG;
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose(str, "Smartcard was disconnected while dialog was still displayed.");
            }
        }

        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDismissCallback
        public void onDismiss() {
            ((DialogHolder) this.this$0).dismissDialog();
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.DialogHolder$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 implements IDismissCallback {
        final /* synthetic */ IDismissCallback val$dismissCallback;

        public AnonymousClass3(IDismissCallback iDismissCallback) {
            this.val$dismissCallback = iDismissCallback;
        }

        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDismissCallback
        public final void onDismiss() {
            DialogHolder.this.dismissDialog();
            this.val$dismissCallback.onDismiss();
        }
    }

    public DialogHolder(u uVar) {
        this.mActivity = uVar;
    }

    public final synchronized void dismissDialog() {
        showDialog(null);
    }

    public final synchronized boolean isDialogShowing() {
        return this.mCurrentDialog != null;
    }

    public final synchronized boolean isSmartcardRemovalPromptDialogShowing() {
        return this.mCurrentDialog instanceof SmartcardRemovalPromptDialog;
    }

    public final synchronized void onUnexpectedUnplug() {
        SmartcardDialog smartcardDialog = this.mCurrentDialog;
        if (smartcardDialog != null) {
            smartcardDialog.onUnexpectedUnplug();
        }
    }

    public final synchronized void setPinDialogErrorMode() {
        SmartcardDialog smartcardDialog = this.mCurrentDialog;
        if (smartcardDialog instanceof SmartcardPinDialog) {
            SmartcardPinDialog smartcardPinDialog = (SmartcardPinDialog) smartcardDialog;
            smartcardPinDialog.mActivity.runOnUiThread(new SmartcardPinDialog.AnonymousClass3(smartcardPinDialog, 0));
        }
    }

    public final synchronized void showCertPickerDialog(ArrayList arrayList, SmartcardCertPickerDialog.PositiveButtonListener positiveButtonListener, ICancelCbaCallback iCancelCbaCallback) {
        try {
            showDialog(new SmartcardCertPickerDialog(arrayList, positiveButtonListener, iCancelCbaCallback, this.mActivity));
        } catch (WindowManager.BadTokenException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showCertPickerDialog", "Failed to show CertPickerDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
            ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) iCancelCbaCallback).onCancel();
        }
    }

    public final synchronized void showDialog(SmartcardDialog smartcardDialog) {
        SmartcardDialog smartcardDialog2 = this.mCurrentDialog;
        if (smartcardDialog2 != null) {
            smartcardDialog2.mActivity.runOnUiThread(new Runnable() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog.2
                public AnonymousClass2() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    SmartcardDialog.this.mDialog.dismiss();
                }
            });
        }
        this.mCurrentDialog = smartcardDialog;
        if (smartcardDialog != null) {
            smartcardDialog.show();
        }
    }

    public final synchronized void showErrorDialog() {
        try {
            showDialog(new SmartcardErrorDialog(R.string.smartcard_nfc_diff_connected_title, R.string.smartcard_nfc_diff_connected_message, R.string.smartcard_nfc_diff_connected_positive_button, new AnonymousClass2(this), this.mActivity));
        } catch (WindowManager.BadTokenException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showErrorDialog", "Failed to show ErrorDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
        }
    }

    public final synchronized void showPinDialog(SmartcardPinDialog.PositiveButtonListener positiveButtonListener, ICancelCbaCallback iCancelCbaCallback) {
        try {
            showDialog(new SmartcardPinDialog(positiveButtonListener, iCancelCbaCallback, this.mActivity));
        } catch (WindowManager.BadTokenException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showPinDialog", "Failed to show PinDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
            ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) iCancelCbaCallback).onCancel();
        }
    }

    public final synchronized void showSmartcardNfcLoadingDialog() {
        try {
            u uVar = this.mActivity;
            SmartcardNfcLoadingDialog smartcardNfcLoadingDialog = new SmartcardNfcLoadingDialog(uVar);
            uVar.runOnUiThread(new SmartcardPinDialog.AnonymousClass3(smartcardNfcLoadingDialog, 1));
            showDialog(smartcardNfcLoadingDialog);
        } catch (WindowManager.BadTokenException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showSmartcardNfcLoadingDialog", "Failed to show SmartcardNfcLoadingDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
        }
    }

    public final synchronized void showSmartcardNfcPromptDialog(ICancelCbaCallback iCancelCbaCallback) {
        try {
            showDialog(new SmartcardNfcPromptDialog(iCancelCbaCallback, this.mActivity));
        } catch (WindowManager.BadTokenException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showSmartcardNfcPromptDialog", "Failed to show SmartcardNfcPromptDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
            ((UsbSmartcardCertBasedAuthChallengeHandler.AnonymousClass5) iCancelCbaCallback).onCancel();
        }
    }

    public final synchronized void showSmartcardNfcReminderDialog(IDismissCallback iDismissCallback) {
        try {
            showDialog(new SmartcardNfcReminderDialog(iDismissCallback, this.mActivity));
        } catch (WindowManager.BadTokenException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showSmartcardNfcReminderDialog", "Failed to show SmartcardNfcReminderDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
            ((CertBasedAuthFactory.AnonymousClass3) iDismissCallback).onDismiss();
        }
    }

    public final synchronized void showSmartcardPromptDialog(ICancelCbaCallback iCancelCbaCallback) {
        try {
            showDialog(new SmartcardPromptDialog(iCancelCbaCallback, this.mActivity));
        } catch (WindowManager.BadTokenException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showSmartcardPromptDialog", "Failed to show SmartcardPromptDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
            ((CertBasedAuthFactory.AnonymousClass4) iCancelCbaCallback).onCancel();
        }
    }

    public final synchronized void showSmartcardRemovalPromptDialog(IDismissCallback iDismissCallback) {
        try {
            showDialog(new SmartcardRemovalPromptDialog(new AnonymousClass3(iDismissCallback), this.mActivity));
        } catch (WindowManager.BadTokenException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showSmartcardRemovalPromptDialog", "Failed to show SmartcardRemovalPromptDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
            iDismissCallback.onDismiss();
        }
    }

    public final synchronized void showUserChoiceDialog(UserChoiceDialog.PositiveButtonListener positiveButtonListener, ICancelCbaCallback iCancelCbaCallback) {
        try {
            showDialog(new UserChoiceDialog(positiveButtonListener, iCancelCbaCallback, this.mActivity));
        } catch (WindowManager.BadTokenException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showUserChoiceDialog", "Failed to show UserChoiceDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
            ((CertBasedAuthFactory.AnonymousClass2) iCancelCbaCallback).onCancel();
        }
    }

    public final synchronized void showErrorDialog(int i, int i2) {
        try {
            showDialog(new SmartcardErrorDialog(i, i2, R.string.smartcard_error_dialog_positive_button, new AnonymousClass1(this), this.mActivity));
        } catch (WindowManager.BadTokenException e) {
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("DialogHolder:showErrorDialog", "Failed to show ErrorDialog due to BadTokenException. Activity may be finishing or destroyed.", e);
        }
    }
}
