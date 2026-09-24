package defpackage;

import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.blockstore.createrestorecredential.CredentialProviderCreateRestoreCredentialController;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c32 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ t22 b;
    public final /* synthetic */ Exception c;

    public /* synthetic */ c32(t22 t22Var, Exception exc, int i) {
        this.a = i;
        this.b = t22Var;
        this.c = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                CredentialProviderCreateRestoreCredentialController.invokePlayServices$lambda$0$1$0(this.b, this.c);
                break;
            default:
                CredentialProviderPlayServicesImpl.runFallbackClearCredFlow$lambda$2$0$0$0(this.b, this.c);
                break;
        }
    }
}
