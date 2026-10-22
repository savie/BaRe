package defpackage;

import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class av1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ av1(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((js1) obj2).B((String) obj);
                break;
            case 1:
                ((sy1) obj2).c((String) obj, Boolean.FALSE);
                break;
            case 2:
                CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$4$0$0((CredentialProviderCreatePublicKeyCredentialController) obj2, (c12) obj);
                break;
            case 3:
                CredentialProviderGetSignInIntentController.handleResponse$lambda$3$0((CredentialProviderGetSignInIntentController) obj2, (lh6) obj);
                break;
            default:
                ((t22) obj2).onResult((rf7) obj);
                break;
        }
    }
}
