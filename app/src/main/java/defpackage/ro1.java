package defpackage;

import android.graphics.Typeface;
import androidx.credentials.playservices.controllers.blockstore.createrestorecredential.CredentialProviderCreateRestoreCredentialController;
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ro1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ro1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                ws4 ws4Var = (ws4) this.b;
                ga6 ga6Var = (ga6) this.c;
                synchronized (ws4Var) {
                    try {
                        if (ws4Var.b == null) {
                            ws4Var.a.add(ga6Var);
                        } else {
                            ws4Var.b.add(ga6Var.get());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 1:
                CredentialProviderCreatePasswordController.handleResponse$lambda$1$0((CredentialProviderCreatePasswordController) this.b, (c12) this.c);
                return;
            case 2:
                CredentialProviderCreateRestoreCredentialController.invokePlayServices$lambda$2$0$0((t22) this.b, (lh6) this.c);
                return;
            case 3:
                Runnable runnable = (Runnable) this.b;
                ln5 ln5Var = (ln5) this.c;
                try {
                    runnable.run();
                    dh2 dh2Var = (dh2) ln5Var.b;
                    if (h5.f.c(dh2Var, null, h5.k)) {
                        h5.c(dh2Var);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    ln5Var.o(e);
                    return;
                }
            default:
                ((g67) this.b).y((Typeface) this.c);
                return;
        }
    }
}
