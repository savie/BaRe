package defpackage;

import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a22 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Executor b;
    public final /* synthetic */ t22 c;

    public /* synthetic */ a22(Executor executor, t22 t22Var, int i) {
        this.a = i;
        this.b = executor;
        this.c = t22Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        switch (this.a) {
            case 0:
                return CreatePublicKeyCredentialController.invokePlayServices$lambda$0$0(this.b, this.c);
            default:
                return CredentialProviderPlayServicesImpl.onGetCredential$lambda$1(this.b, this.c);
        }
    }
}
