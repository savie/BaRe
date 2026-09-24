package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import androidx.fragment.app.u;
import defpackage.va;
import defpackage.wa;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class SmartcardDialog {
    protected final u mActivity;
    protected Dialog mDialog = null;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int a;
        final /* synthetic */ SmartcardDialog this$0;

        public /* synthetic */ AnonymousClass1(SmartcardDialog smartcardDialog, int i) {
            this.a = i;
            this.this$0 = smartcardDialog;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.a;
            SmartcardDialog smartcardDialog = this.this$0;
            switch (i) {
                case 0:
                    smartcardDialog.mDialog.show();
                    break;
                case 1:
                    SmartcardNfcReminderDialog smartcardNfcReminderDialog = (SmartcardNfcReminderDialog) smartcardDialog;
                    va vaVar = new va(smartcardNfcReminderDialog.mActivity, R.style.UserChoiceAlertDialogTheme);
                    vaVar.l(R.string.smartcard_nfc_reminder_dialog_title);
                    vaVar.d(R.string.smartcard_nfc_reminder_dialog_message);
                    vaVar.i(R.string.smartcard_nfc_reminder_dialog_positive_button, new DialogInterface.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardNfcReminderDialog$1$1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            ((CertBasedAuthFactory.AnonymousClass3) ((SmartcardNfcReminderDialog) this.this$1.this$0).mDismissCallback).onDismiss();
                        }
                    });
                    wa waVarC = vaVar.c();
                    waVarC.setCanceledOnTouchOutside(false);
                    waVarC.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardNfcReminderDialog$1$2
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            ((CertBasedAuthFactory.AnonymousClass3) ((SmartcardNfcReminderDialog) this.this$1.this$0).mDismissCallback).onDismiss();
                        }
                    });
                    smartcardNfcReminderDialog.mDialog = waVarC;
                    break;
                default:
                    SmartcardRemovalPromptDialog smartcardRemovalPromptDialog = (SmartcardRemovalPromptDialog) smartcardDialog;
                    AlertDialog alertDialogCreate = new AlertDialog.Builder(smartcardRemovalPromptDialog.mActivity, R.style.TitleOnlyAlertDialogTheme).setTitle(R.string.smartcard_removal_prompt_dialog_title).setPositiveButton(R.string.smartcard_removal_prompt_dialog_positive_button, new DialogInterface.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardRemovalPromptDialog$1$1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            ((DialogHolder.AnonymousClass3) ((SmartcardRemovalPromptDialog) this.this$1.this$0).mDismissCallback).onDismiss();
                        }
                    }).create();
                    alertDialogCreate.setCanceledOnTouchOutside(false);
                    smartcardRemovalPromptDialog.mDialog = alertDialogCreate;
                    break;
            }
        }
    }

    public SmartcardDialog(u uVar) {
        this.mActivity = uVar;
    }

    public abstract void onUnexpectedUnplug();

    public void show() {
        this.mActivity.runOnUiThread(new AnonymousClass1(this, 0));
    }
}
