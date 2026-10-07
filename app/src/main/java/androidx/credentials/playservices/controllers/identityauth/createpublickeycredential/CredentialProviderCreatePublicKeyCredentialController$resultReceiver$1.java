package androidx.credentials.playservices.controllers.identityauth.createpublickeycredential;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.content.Intent;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import java.util.concurrent.Executor;

public final class CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1 extends ResultReceiver {
    private final CredentialProviderCreatePublicKeyCredentialController this$0;

    public CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1(
            CredentialProviderCreatePublicKeyCredentialController owner, Handler handler) {
        super(handler);
        this.this$0 = owner;
    }

    @Override
    protected void onReceiveResult(int resultCode, Bundle bundle) {
        bundle.getClass();
        CredentialProviderCreatePublicKeyCredentialController owner = this.this$0;
        CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 mapper =
                new CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1(
                        CredentialProviderBaseController.Companion);
        Executor executor = owner.executor;
        if (executor == null) {
            throw new IllegalStateException("executor");
        }
        defpackage.t22 callback = owner.callback;
        if (callback == null) {
            throw new IllegalStateException("callback");
        }
        if (owner.maybeReportErrorFromResultReceiver(bundle, mapper, executor, callback, owner.cancellationSignal)) {
            return;
        }
        int requestCode = bundle.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG);
        Intent data = (Intent) bundle.getParcelable(CredentialProviderBaseController.RESULT_DATA_TAG);
        owner.handleResponse$credentials_play_services_auth(requestCode, resultCode, data);
    }
}
