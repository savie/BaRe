package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.u;
import com.microsoft.identity.common.logging.Logger;
import defpackage.f6;
import defpackage.ra;
import defpackage.va;
import defpackage.wa;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SmartcardPinDialog extends SmartcardDialog {
    private final ICancelCbaCallback mCancelCbaCallback;
    private View mPinLayout;
    private final PositiveButtonListener mPositiveButtonListener;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog$1, reason: invalid class name */
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
            final int i2 = 0;
            switch (i) {
                case 0:
                    SmartcardPinDialog smartcardPinDialog = (SmartcardPinDialog) smartcardDialog;
                    u uVar = smartcardPinDialog.mActivity;
                    smartcardPinDialog.mPinLayout = uVar.getLayoutInflater().inflate(R.layout.pin_textview_layout, (ViewGroup) uVar.findViewById(android.R.id.content), false);
                    va vaVar = new va(uVar, R.style.CertAlertDialogTheme);
                    vaVar.l(R.string.smartcard_pin_dialog_title);
                    vaVar.d(R.string.smartcard_pin_dialog_message);
                    ((ra) vaVar.b).s = smartcardPinDialog.mPinLayout;
                    vaVar.i(R.string.smartcard_pin_dialog_positive_button, null);
                    vaVar.f(R.string.smartcard_pin_dialog_negative_button, new DialogInterface.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i3) {
                            int i4 = i2;
                            Runnable runnable = this;
                            switch (i4) {
                                case 0:
                                    ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) ((SmartcardPinDialog) ((AnonymousClass1) runnable).this$0).mCancelCbaCallback).onCancel();
                                    break;
                                default:
                                    ((SmartcardErrorDialog) ((AnonymousClass1) runnable).this$0).mDismissCallback.onDismiss();
                                    break;
                            }
                        }
                    });
                    wa waVarC = vaVar.c();
                    waVarC.setCanceledOnTouchOutside(false);
                    waVarC.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.1.2
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            int i3 = i2;
                            Runnable runnable = this;
                            switch (i3) {
                                case 0:
                                    ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) ((SmartcardPinDialog) ((AnonymousClass1) runnable).this$0).mCancelCbaCallback).onCancel();
                                    break;
                                default:
                                    ((SmartcardErrorDialog) ((AnonymousClass1) runnable).this$0).mDismissCallback.onDismiss();
                                    break;
                            }
                        }
                    });
                    smartcardPinDialog.mDialog = waVarC;
                    break;
                default:
                    SmartcardErrorDialog smartcardErrorDialog = (SmartcardErrorDialog) smartcardDialog;
                    va vaVar2 = new va(smartcardErrorDialog.mActivity, R.style.ErrorAlertDialogTheme);
                    vaVar2.l(smartcardErrorDialog.mTitleStringResourceId);
                    vaVar2.d(smartcardErrorDialog.mMessageStringResourceId);
                    final int i3 = 1;
                    vaVar2.i(smartcardErrorDialog.mDismissButtonStringResourceId, new DialogInterface.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i4) {
                            int i5 = i3;
                            Runnable runnable = this;
                            switch (i5) {
                                case 0:
                                    ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) ((SmartcardPinDialog) ((AnonymousClass1) runnable).this$0).mCancelCbaCallback).onCancel();
                                    break;
                                default:
                                    ((SmartcardErrorDialog) ((AnonymousClass1) runnable).this$0).mDismissCallback.onDismiss();
                                    break;
                            }
                        }
                    });
                    wa waVarC2 = vaVar2.c();
                    waVarC2.setCanceledOnTouchOutside(false);
                    waVarC2.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.1.2
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            int i4 = i3;
                            Runnable runnable = this;
                            switch (i4) {
                                case 0:
                                    ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) ((SmartcardPinDialog) ((AnonymousClass1) runnable).this$0).mCancelCbaCallback).onCancel();
                                    break;
                                default:
                                    ((SmartcardErrorDialog) ((AnonymousClass1) runnable).this$0).mDismissCallback.onDismiss();
                                    break;
                            }
                        }
                    });
                    smartcardErrorDialog.mDialog = waVarC2;
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 implements Runnable {
        public final /* synthetic */ int a;
        final /* synthetic */ SmartcardDialog this$0;

        public /* synthetic */ AnonymousClass3(SmartcardDialog smartcardDialog, int i) {
            this.a = i;
            this.this$0 = smartcardDialog;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.a;
            SmartcardDialog smartcardDialog = this.this$0;
            switch (i) {
                case 0:
                    SmartcardPinDialog smartcardPinDialog = (SmartcardPinDialog) smartcardDialog;
                    EditText editText = (EditText) smartcardPinDialog.mPinLayout.findViewById(R.id.pinEditText);
                    editText.getText().clear();
                    editText.setBackgroundTintList(ColorStateList.valueOf(smartcardPinDialog.mActivity.getResources().getColor(R.color.dialogErrorText)));
                    ((TextView) smartcardPinDialog.mPinLayout.findViewById(R.id.errorTextView)).setText(R.string.smartcard_pin_dialog_error_message);
                    break;
                default:
                    SmartcardNfcLoadingDialog smartcardNfcLoadingDialog = (SmartcardNfcLoadingDialog) smartcardDialog;
                    u uVar = smartcardNfcLoadingDialog.mActivity;
                    View viewInflate = uVar.getLayoutInflater().inflate(R.layout.nfc_loading_layout, (ViewGroup) null);
                    va vaVar = new va(uVar, R.style.UserChoiceAlertDialogTheme);
                    vaVar.l(R.string.smartcard_nfc_loading_dialog_title);
                    vaVar.d(R.string.smartcard_nfc_loading_dialog_message);
                    ((ra) vaVar.b).s = viewInflate;
                    wa waVarC = vaVar.c();
                    waVarC.setCanceledOnTouchOutside(false);
                    smartcardNfcLoadingDialog.mDialog = waVarC;
                    break;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface PositiveButtonListener {
        void onClick(char[] cArr);
    }

    public SmartcardPinDialog(PositiveButtonListener positiveButtonListener, ICancelCbaCallback iCancelCbaCallback, u uVar) {
        super(uVar);
        if (positiveButtonListener == null) {
            f6.n("positiveButtonListener is marked non-null but is null");
            throw null;
        }
        this.mPositiveButtonListener = positiveButtonListener;
        this.mCancelCbaCallback = iCancelCbaCallback;
        uVar.runOnUiThread(new AnonymousClass1(this, 0));
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog
    public final void onUnexpectedUnplug() {
        ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) this.mCancelCbaCallback).onCancel();
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog
    public final void show() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.2
            @Override // java.lang.Runnable
            public final void run() {
                SmartcardPinDialog smartcardPinDialog = SmartcardPinDialog.this;
                smartcardPinDialog.mDialog.show();
                final EditText editText = (EditText) smartcardPinDialog.mPinLayout.findViewById(R.id.pinEditText);
                if (editText != null) {
                    editText.addTextChangedListener(new TextWatcher() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.2.1
                        @Override // android.text.TextWatcher
                        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                            if (i == 0) {
                                final SmartcardPinDialog smartcardPinDialog2 = SmartcardPinDialog.this;
                                smartcardPinDialog2.mActivity.runOnUiThread(new Runnable() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SmartcardPinDialog smartcardPinDialog3 = SmartcardPinDialog.this;
                                        ((TextView) smartcardPinDialog3.mPinLayout.findViewById(R.id.errorTextView)).setText("");
                                        ((EditText) smartcardPinDialog3.mPinLayout.findViewById(R.id.pinEditText)).setBackgroundTintList(ColorStateList.valueOf(smartcardPinDialog3.mActivity.getResources().getColor(R.color.dialogPinEditText)));
                                    }
                                });
                            }
                        }

                        @Override // android.text.TextWatcher
                        public final void afterTextChanged(Editable editable) {
                        }

                        @Override // android.text.TextWatcher
                        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                        }
                    });
                    ((wa) smartcardPinDialog.mDialog).f(-1).setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.2.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            EditText editText2 = editText;
                            char[] cArr = new char[editText2.length()];
                            editText2.getText().getChars(0, editText2.length(), cArr, 0);
                            SmartcardPinDialog.this.mPositiveButtonListener.onClick(cArr);
                        }
                    });
                } else {
                    ((AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) smartcardPinDialog.mCancelCbaCallback).onCancel();
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.error("SmartcardPinDialog:show", "Error while retrieving dialog EditText component.", null);
                }
            }
        });
    }
}
