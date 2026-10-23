package defpackage;

import android.credentials.Credential;
import android.credentials.GetCredentialException;
import android.credentials.GetCredentialResponse;
import android.os.Bundle;
import android.os.OutcomeReceiver;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f32 implements OutcomeReceiver {
    public final /* synthetic */ nh a;

    public f32(nh nhVar, g32 g32Var) {
        this.a = nhVar;
    }

    public final void onError(Throwable th) {
        GetCredentialException getCredentialException = (GetCredentialException) th;
        getCredentialException.getClass();
        Log.i("CredManProvService", "GetCredentialResponse error returned from framework");
        String type = getCredentialException.getType();
        type.getClass();
        this.a.onError(cy0.J(getCredentialException.getMessage(), type));
    }

    public final void onResult(Object obj) {
        GetCredentialResponse getCredentialResponse = (GetCredentialResponse) obj;
        getCredentialResponse.getClass();
        Log.i("CredManProvService", "GetCredentialResponse returned from framework");
        Credential credential = getCredentialResponse.getCredential();
        credential.getClass();
        String type = credential.getType();
        type.getClass();
        Bundle data = credential.getData();
        data.getClass();
        this.a.onResult(new bw3(pe4.h(data, type)));
    }
}
