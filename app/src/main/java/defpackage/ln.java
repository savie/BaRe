package defpackage;

import androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.fragment.app.g;
import androidx.fragment.app.h0;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ln implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ln(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws xm2 {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                mn mnVar = (mn) obj2;
                try {
                    ((Runnable) obj).run();
                    return;
                } finally {
                    mnVar.a();
                }
            case 1:
                CredentialProviderBeginSignInController.handleResponse$lambda$1$0((CredentialProviderBeginSignInController) obj2, (wv3) obj);
                return;
            case 2:
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$3$0((CredentialProviderCreatePublicKeyCredentialController) obj2, (c12) obj);
                return;
            case 3:
                CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$0$1$0((t22) obj2, (Exception) obj);
                return;
            case 4:
                ((o21) obj2).E((r24) obj);
                return;
            case 5:
                g gVar = (g) obj2;
                h0 h0Var = (h0) obj;
                gVar.b.remove(h0Var);
                gVar.c.remove(h0Var);
                return;
            default:
                wg8 wg8Var = (wg8) obj2;
                vz0 vz0Var = (vz0) obj;
                wg8Var.getClass();
                try {
                    ky8 ky8VarB = wg8Var.b.b(rg8.class);
                    try {
                        vz0Var.invoke(new cn6(ky8VarB, null));
                        ky8VarB.close();
                        return;
                    } catch (Throwable th) {
                        try {
                            ky8VarB.close();
                            break;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    vz0Var.invoke(cn6.a(e));
                    return;
                }
        }
    }
}
