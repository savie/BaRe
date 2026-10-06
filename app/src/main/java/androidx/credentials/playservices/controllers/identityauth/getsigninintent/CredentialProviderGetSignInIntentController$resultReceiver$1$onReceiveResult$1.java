package androidx.credentials.playservices.controllers.identityauth.getsigninintent;

import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import defpackage.cu3;
import defpackage.qt3;
import defpackage.wv3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CredentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1 extends cu3 implements qt3 {
    public CredentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1(Object obj) {
        super(2, obj, CredentialProviderBaseController.Companion.class, "getCredentialExceptionTypeToException", "getCredentialExceptionTypeToException$credentials_play_services_auth(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", 0);
    }

    @Override // defpackage.qt3
    public final wv3 invoke(String str, String str2) {
        return ((CredentialProviderBaseController.Companion) this.receiver).getCredentialExceptionTypeToException$credentials_play_services_auth(str, str2);
    }
}
