package defpackage;

import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zu1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zu1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((js1) obj2).onSuccess((String) obj);
                break;
            case 1:
                CreateDigitalCredentialController.handleResponse$lambda$1$0((CreateDigitalCredentialController) obj2, (c12) obj);
                break;
            case 2:
                CredentialProviderBeginSignInController.handleResponse$lambda$2$0((CredentialProviderBeginSignInController) obj2, (bw3) obj);
                break;
            case 3:
                CredentialProviderGetSignInIntentController.handleResponse$lambda$1$0((CredentialProviderGetSignInIntentController) obj2, (wv3) obj);
                break;
            case 4:
                CredentialProviderPlayServicesImpl.onClearCredential$lambda$3$0$0((t22) obj2, (lh6) obj);
                break;
            default:
                ue7 ue7Var = (ue7) obj2;
                IBinder iBinder = (IBinder) obj;
                Iterator it = ue7Var.a.iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(ue7Var.b, iBinder);
                }
                break;
        }
    }
}
