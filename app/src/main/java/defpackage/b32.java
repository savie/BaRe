package defpackage;

import android.content.ServiceConnection;
import android.graphics.drawable.Drawable;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b32 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b32(int i, Object obj, Object obj2) {
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
                CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$1$0((CredentialProviderCreatePublicKeyCredentialController) obj2, (Throwable) obj);
                break;
            case 1:
                CredentialProviderGetSignInIntentController.invokePlayServices$lambda$0$0((CredentialProviderGetSignInIntentController) obj2, (dw3) obj);
                break;
            case 2:
                int[] iArr = MaterialButton.i0;
                ((MaterialButton) obj2).setIcon((Drawable) obj);
                break;
            default:
                bq6.a((ServiceConnection) obj2, (yp6) obj);
                break;
        }
    }
}
