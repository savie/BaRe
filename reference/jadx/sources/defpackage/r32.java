package defpackage;

import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r32 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ t22 b;

    public /* synthetic */ r32(t22 t22Var, int i) {
        this.a = i;
        this.b = t22Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        t22 t22Var = this.b;
        switch (i) {
            case 0:
                CredentialProviderPlayServicesImpl.onGetCredential$lambda$1$0(t22Var);
                break;
            case 1:
                CredentialProviderPlayServicesImpl.onCreateCredential$lambda$0$0(t22Var);
                break;
            default:
                GetCredentialController.invokePlayServices$lambda$0$0$0(t22Var);
                break;
        }
    }
}
