package defpackage;

import android.content.ComponentName;
import androidx.credentials.playservices.controllers.ResponseUtils;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pb implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ pb(int i, Object obj, Object obj2) {
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
                ((j58) obj2).g(((me4) obj).a);
                break;
            case 1:
                ((io1) obj2).k((zs5) obj);
                break;
            case 2:
                ((zy1) obj2).a((f80) obj);
                break;
            case 3:
                ((t22) obj2).onError((c12) obj);
                break;
            case 4:
                CredentialProviderBeginSignInController.handleResponse$lambda$3$0((CredentialProviderBeginSignInController) obj2, (lh6) obj);
                break;
            case 5:
                CredentialProviderCreatePasswordController.invokePlayServices$lambda$2$0$0((CredentialProviderCreatePasswordController) obj2, (c12) obj);
                break;
            case 6:
                CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$0$0((CredentialProviderCreatePublicKeyCredentialController) obj2, (JSONException) obj);
                break;
            case 7:
                ResponseUtils.Companion.handleGetCredentialResponse$lambda$4$0((t22) obj2, (wv3) obj);
                break;
            default:
                ComponentName componentName = (ComponentName) obj;
                componentName.getClassName();
                ((iq6) obj2).j(-1, componentName);
                break;
        }
    }
}
