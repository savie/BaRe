package defpackage;

import androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController;
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import androidx.fragment.app.g;
import androidx.fragment.app.h0;
import java.util.concurrent.atomic.AtomicMarkableReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xu1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xu1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Exception {
        boolean zEquals;
        switch (this.a) {
            case 0:
                t40 t40Var = (t40) this.b;
                Runnable runnable = (Runnable) this.c;
                v57 v57VarA = xs4.b.a(t40Var);
                try {
                    runnable.run();
                    v57VarA.close();
                    return;
                } catch (Throwable th) {
                    try {
                        v57VarA.close();
                        break;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            case 1:
                zy1 zy1Var = (zy1) this.b;
                String str = (String) this.c;
                i75 i75Var = zy1Var.h.d;
                i75Var.getClass();
                String strA = bp4.a(1024, str);
                synchronized (((AtomicMarkableReference) i75Var.k)) {
                    try {
                        String str2 = (String) ((AtomicMarkableReference) i75Var.k).getReference();
                        if (strA == null) {
                            zEquals = str2 == null;
                        } else {
                            zEquals = strA.equals(str2);
                        }
                        if (zEquals) {
                            return;
                        }
                        ((AtomicMarkableReference) i75Var.k).set(strA, true);
                        ((o02) ((s02) i75Var.b).b).a(new vn1(i75Var, 8));
                        return;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            case 2:
                CreateDigitalCredentialController.handleResponse$lambda$4$0((CreateDigitalCredentialController) this.b, (k12) this.c);
                return;
            case 3:
                CreatePasswordCredentialController.handleResponse$lambda$3$0((CreatePasswordCredentialController) this.b, (k12) this.c);
                return;
            case 4:
                CreatePublicKeyCredentialController.handleResponse$lambda$4$0((CreatePublicKeyCredentialController) this.b, (c12) this.c);
                return;
            case 5:
                CredentialProviderCreatePasswordController.handleResponse$lambda$2$0((CredentialProviderCreatePasswordController) this.b, (k12) this.c);
                return;
            case 6:
                CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$2$0$0((t22) this.b, (lh6) this.c);
                return;
            case 7:
                ((g) this.b).a((h0) this.c);
                return;
            case 8:
                Runnable runnable2 = (Runnable) this.c;
                ln5 ln5Var = (ln5) this.b;
                try {
                    runnable2.run();
                    return;
                } catch (Exception e) {
                    ln5Var.o(e);
                    return;
                }
            default:
                Runnable runnable3 = (Runnable) this.c;
                d98 d98Var = (d98) this.b;
                try {
                    runnable3.run();
                    return;
                } finally {
                    d98Var.a();
                }
        }
    }

    public /* synthetic */ xu1(Runnable runnable, Object obj, int i) {
        this.a = i;
        this.c = runnable;
        this.b = obj;
    }
}
