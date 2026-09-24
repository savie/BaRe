package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.content.DialogInterface;
import androidx.fragment.app.u;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthChoice;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;
import defpackage.va;
import defpackage.wa;
import java.util.ArrayList;
import java.util.Arrays;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class UserChoiceDialog extends SmartcardDialog {
    private final ICancelCbaCallback mCancelCbaCallback;
    private final PositiveButtonListener mPositiveButtonListener;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface PositiveButtonListener {
    }

    public UserChoiceDialog(PositiveButtonListener positiveButtonListener, ICancelCbaCallback iCancelCbaCallback, u uVar) {
        super(uVar);
        this.mPositiveButtonListener = positiveButtonListener;
        this.mCancelCbaCallback = iCancelCbaCallback;
        ArrayList arrayList = new ArrayList();
        arrayList.add(uVar.getResources().getString(R.string.user_choice_dialog_on_device_name));
        arrayList.add(uVar.getResources().getString(R.string.user_choice_dialog_smartcard_name));
        String[] strArr = (String[]) Arrays.copyOf(arrayList.toArray(), arrayList.size(), String[].class);
        va vaVar = new va(uVar, R.style.UserChoiceAlertDialogTheme);
        vaVar.l(R.string.user_choice_dialog_title);
        vaVar.k(strArr, 0, null);
        vaVar.i(R.string.user_choice_dialog_positive_button, new DialogInterface.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.UserChoiceDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                int checkedItemPosition = ((wa) dialogInterface).k.f.getCheckedItemPosition();
                CertBasedAuthFactory.AnonymousClass1 anonymousClass1 = (CertBasedAuthFactory.AnonymousClass1) UserChoiceDialog.this.mPositiveButtonListener;
                CertBasedAuthFactory.CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback = anonymousClass1.val$callback;
                CertBasedAuthFactory certBasedAuthFactory = anonymousClass1.this$0;
                CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper = anonymousClass1.val$telemetryHelper;
                if (checkedItemPosition != 0) {
                    certBasedAuthTelemetryHelper.setUserChoice(CertBasedAuthChoice.SMARTCARD_CHOICE);
                    CertBasedAuthFactory.access$200(certBasedAuthChallengeHandlerCallback, certBasedAuthFactory, certBasedAuthTelemetryHelper);
                } else {
                    certBasedAuthFactory.mDialogHolder.dismissDialog();
                    certBasedAuthTelemetryHelper.setUserChoice(CertBasedAuthChoice.ON_DEVICE_CHOICE);
                    certBasedAuthChallengeHandlerCallback.onReceived(new OnDeviceCertBasedAuthChallengeHandler(certBasedAuthFactory.mActivity, certBasedAuthTelemetryHelper));
                }
            }
        });
        vaVar.f(R.string.user_choice_dialog_negative_button, new DialogInterface.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.UserChoiceDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ((CertBasedAuthFactory.AnonymousClass2) UserChoiceDialog.this.mCancelCbaCallback).onCancel();
            }
        });
        wa waVarC = vaVar.c();
        waVarC.setCanceledOnTouchOutside(false);
        waVarC.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.UserChoiceDialog.3
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                ((CertBasedAuthFactory.AnonymousClass2) UserChoiceDialog.this.mCancelCbaCallback).onCancel();
            }
        });
        this.mDialog = waVarC;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardDialog
    public final void onUnexpectedUnplug() {
    }
}
