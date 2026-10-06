package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.nfc.tech.IsoDep;
import android.util.Pair;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o12 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ o12(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                CreateDigitalCredentialController.handleResponse$lambda$3$0((CreateDigitalCredentialController) obj2, (c12) obj);
                break;
            case 1:
                CreatePasswordCredentialController.handleResponse$lambda$1$0((CreatePasswordCredentialController) obj2, (c12) obj);
                break;
            case 2:
                CredentialProviderBeginSignInController.invokePlayServices$lambda$2$0$0((CredentialProviderBeginSignInController) obj2, (wv3) obj);
                break;
            case 3:
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$4$0((CredentialProviderCreatePublicKeyCredentialController) obj2, (k12) obj);
                break;
            case 4:
                Runnable runnable = (Runnable) obj;
                try {
                    IsoDep isoDep = IsoDep.get(((um5) obj2).c);
                    isoDep.connect();
                    while (isoDep.isConnected()) {
                        Thread.sleep(250L);
                    }
                } catch (IOException | InterruptedException | SecurityException unused) {
                }
                runnable.run();
                break;
            case 5:
                ((t22) obj2).onResult((bw3) obj);
                break;
            default:
                ((ServiceConnection) obj).onServiceDisconnected((ComponentName) ((Pair) ((wp6) ((Pair) ((up6) obj2)).first).a).first);
                break;
        }
    }
}
