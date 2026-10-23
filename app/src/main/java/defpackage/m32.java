package defpackage;

import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m32 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Executor b;
    public final /* synthetic */ t22 c;
    public final /* synthetic */ lh6 d;

    public /* synthetic */ m32(Executor executor, t22 t22Var, lh6 lh6Var, int i) {
        this.a = i;
        this.b = executor;
        this.c = t22Var;
        this.d = lh6Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        lh6 lh6Var = this.d;
        t22 t22Var = this.c;
        Executor executor = this.b;
        switch (i) {
            case 0:
                return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$2$0(executor, t22Var, lh6Var);
            default:
                return CredentialProviderPlayServicesImpl.onClearCredential$lambda$3$0(executor, t22Var, lh6Var);
        }
    }
}
