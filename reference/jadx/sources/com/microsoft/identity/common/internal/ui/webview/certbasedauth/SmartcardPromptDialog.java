package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.content.DialogInterface;
import androidx.fragment.app.u;
import com.microsoft.identity.common.logging.Logger;
import defpackage.va;
import defpackage.wa;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SmartcardPromptDialog extends SmartcardDialog {
    private final ICancelCbaCallback mCancelCbaCallback;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPromptDialog$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int a;
        final /* synthetic */ Object this$0;

        /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPromptDialog$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        final class DialogInterfaceOnClickListenerC00071 implements DialogInterface.OnClickListener {
            public final /* synthetic */ int a;
            final /* synthetic */ Runnable this$1;

            public /* synthetic */ DialogInterfaceOnClickListenerC00071(Runnable runnable, int i) {
                this.a = i;
                this.this$1 = runnable;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                int i2 = this.a;
                Runnable runnable = this.this$1;
                switch (i2) {
                    case 0:
                        ((CertBasedAuthFactory.AnonymousClass4) ((SmartcardPromptDialog) ((AnonymousClass1) runnable).this$0).mCancelCbaCallback).onCancel();
                        break;
                    case 1:
                        ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) SmartcardCertPickerDialog.this.mCancelCbaCallback).onCancel();
                        break;
                    default:
                        ((UsbSmartcardCertBasedAuthChallengeHandler.AnonymousClass5) SmartcardNfcPromptDialog.this.mCancelCbaCallback).onCancel();
                        break;
                }
            }
        }

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.a = i;
            this.this$0 = obj;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (this.a) {
                case 0:
                    SmartcardPromptDialog smartcardPromptDialog = (SmartcardPromptDialog) this.this$0;
                    va vaVar = new va(smartcardPromptDialog.mActivity, R.style.UserChoiceAlertDialogTheme);
                    vaVar.l(R.string.smartcard_prompt_dialog_title);
                    vaVar.d(R.string.smartcard_prompt_dialog_message);
                    vaVar.f(R.string.smartcard_prompt_dialog_negative_button, new DialogInterfaceOnClickListenerC00071(this, 0));
                    wa waVarC = vaVar.c();
                    waVarC.setCanceledOnTouchOutside(false);
                    waVarC.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPromptDialog.1.2
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            ((CertBasedAuthFactory.AnonymousClass4) ((SmartcardPromptDialog) AnonymousClass1.this.this$0).mCancelCbaCallback).onCancel();
                        }
                    });
                    smartcardPromptDialog.mDialog = waVarC;
                    return;
                default:
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("YubiKitUsbSmartcardCertBasedAuthManager:startDiscovery", "A YubiKey device was disconnected via USB.");
                    synchronized (YubiKitUsbSmartcardCertBasedAuthManager.sDeviceLock) {
                        YubiKitUsbSmartcardCertBasedAuthManager.this.mUsbDevice = null;
                        break;
                    }
                    YubiKeyPivProviderManager.removePivProvider();
                    IDisconnectionCallback iDisconnectionCallback = YubiKitUsbSmartcardCertBasedAuthManager.this.mDisconnectionCallback;
                    if (iDisconnectionCallback != null) {
                        iDisconnectionCallback.onClosedConnection();
                        return;
                    }
                    return;
            }
        }
    }

    public SmartcardPromptDialog(ICancelCbaCallback iCancelCbaCallback, u uVar) {
        super(uVar);
        this.mCancelCbaCallback = iCancelCbaCallback;
        uVar.runOnUiThread(new AnonymousClass1(this, 0));
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog
    public final void onUnexpectedUnplug() {
        ((CertBasedAuthFactory.AnonymousClass4) this.mCancelCbaCallback).onCancel();
    }
}
