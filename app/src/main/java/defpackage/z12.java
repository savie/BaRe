package defpackage;

import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z12 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ t22 b;

    public /* synthetic */ z12(t22 t22Var, int i) {
        this.a = i;
        this.b = t22Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        t22 t22Var = this.b;
        switch (i) {
            case 0:
                CreatePublicKeyCredentialController.invokePlayServices$lambda$0$3$0(t22Var);
                break;
            default:
                t22Var.onResult(null);
                break;
        }
    }
}
