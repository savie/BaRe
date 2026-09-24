package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.fragment.app.u;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.ui.webview.authorization.IAuthorizationCompletionCallback;
import com.microsoft.identity.common.logging.Logger;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NtlmChallengeHandler implements IChallengeHandler<NtlmChallenge, Void> {
    private final Activity mActivity;
    private final IAuthorizationCompletionCallback mChallengeCallback;

    public NtlmChallengeHandler(u uVar, IAuthorizationCompletionCallback iAuthorizationCompletionCallback) {
        this.mActivity = uVar;
        this.mChallengeCallback = iAuthorizationCompletionCallback;
    }

    public static void access$000(NtlmChallengeHandler ntlmChallengeHandler) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("NtlmChallengeHandler:cancelRequest", "Sending intent to cancel authentication activity");
        ntlmChallengeHandler.mChallengeCallback.onChallengeResponseReceived(RawAuthorizationResult.fromResultCode(2));
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler
    public final Void processChallenge(NtlmChallenge ntlmChallenge) {
        final NtlmChallenge ntlmChallenge2 = ntlmChallenge;
        Activity activity = this.mActivity;
        View viewInflate = LayoutInflater.from(activity).inflate(activity.getResources().getLayout(R.layout.http_auth_dialog), (ViewGroup) null);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.editUserName);
        final EditText editText2 = (EditText) viewInflate.findViewById(R.id.editPassword);
        new AlertDialog.Builder(activity).setTitle(activity.getText(R.string.http_auth_dialog_title).toString()).setView(viewInflate).setPositiveButton(R.string.http_auth_dialog_login, new DialogInterface.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.challengehandlers.NtlmChallengeHandler.3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("NtlmChallengeHandler:showHttpAuthDialog", "Proceeding with user supplied username and password.");
                ntlmChallenge2.getHandler().proceed(editText.getText().toString(), editText2.getText().toString());
            }
        }).setNegativeButton(R.string.http_auth_dialog_cancel, new DialogInterface.OnClickListener() { // from class: com.microsoft.identity.common.internal.ui.webview.challengehandlers.NtlmChallengeHandler.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ntlmChallenge2.getHandler().cancel();
                NtlmChallengeHandler.access$000(NtlmChallengeHandler.this);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.identity.common.internal.ui.webview.challengehandlers.NtlmChallengeHandler.1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                ntlmChallenge2.getHandler().cancel();
                NtlmChallengeHandler.access$000(NtlmChallengeHandler.this);
            }
        }).create().show();
        return null;
    }
}
