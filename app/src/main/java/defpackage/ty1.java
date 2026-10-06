package defpackage;

import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ty1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ty1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Exception {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((zy1) obj2).a((f80) obj);
                return;
            case 1:
                CreatePublicKeyCredentialController.handleResponse$lambda$3$0((CreatePublicKeyCredentialController) obj2, (k12) obj);
                return;
            case 2:
                CredentialProviderBeginSignInController.handleResponse$lambda$5$0((CredentialProviderBeginSignInController) obj2, (cw3) obj);
                return;
            case 3:
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$6$0((CredentialProviderCreatePublicKeyCredentialController) obj2, (Throwable) obj);
                return;
            case 4:
                ((t22) obj2).onResult((bw3) obj);
                return;
            case 5:
                CredentialProviderGetSignInIntentController.invokePlayServices$lambda$3$0$0((CredentialProviderGetSignInIntentController) obj2, (wv3) obj);
                return;
            case 6:
                ln5 ln5Var = (ln5) obj;
                try {
                    ((Runnable) obj2).run();
                    return;
                } catch (Exception e) {
                    ln5Var.o(e);
                    throw e;
                }
            case 7:
                vz0 vz0Var = (vz0) obj;
                try {
                    ky8 ky8VarA = ((um5) obj2).a();
                    try {
                        vz0Var.invoke(new cn6(ky8VarA, null));
                        ky8VarA.close();
                        return;
                    } catch (Throwable th) {
                        try {
                            ky8VarA.close();
                            break;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    vz0Var.invoke(cn6.a(e2));
                    return;
                } catch (Exception e3) {
                    vz0Var.invoke(cn6.a(new IOException("openConnection(" + tm5.class.getSimpleName() + ") exception: " + e3.getMessage())));
                    return;
                }
            default:
                ((t22) obj2).onError((wv3) obj);
                return;
        }
    }
}
