package defpackage;

import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s32 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ t22 b;

    public /* synthetic */ s32(t22 t22Var, int i) {
        this.a = i;
        this.b = t22Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        t22 t22Var = this.b;
        switch (i) {
            case 0:
                CredentialProviderPlayServicesImpl.onGetCredential$lambda$0$0(t22Var);
                break;
            default:
                t22Var.onResult(null);
                break;
        }
    }
}
