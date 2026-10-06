package defpackage;

import android.content.ComponentName;
import android.graphics.drawable.Drawable;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.button.MaterialButton;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z22 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ z22(int i, Object obj, Object obj2) {
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
                ((t22) obj2).onError(obj);
                break;
            case 1:
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$5$0((CredentialProviderCreatePublicKeyCredentialController) obj2, (JSONException) obj);
                break;
            case 2:
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$1$0((CredentialProviderCreatePublicKeyCredentialController) obj2, (c12) obj);
                break;
            case 3:
                ((t22) obj2).onError((wv3) obj);
                break;
            case 4:
                CredentialProviderGetSignInIntentController.handleResponse$lambda$2$0((CredentialProviderGetSignInIntentController) obj2, (bw3) obj);
                break;
            case 5:
                ln5 ln5Var = (ln5) obj;
                try {
                    Object objCall = ((Callable) obj2).call();
                    dh2 dh2Var = (dh2) ln5Var.b;
                    if (objCall == null) {
                        objCall = h5.k;
                    }
                    if (h5.f.c(dh2Var, null, objCall)) {
                        h5.c(dh2Var);
                    }
                } catch (Exception e) {
                    ln5Var.o(e);
                    return;
                }
                break;
            case 6:
                int i2 = FolderPickerActivity.Q;
                ((FolderPickerActivity) obj2).N().e.f0(((hn3) obj).h.size() - 1);
                break;
            case 7:
                int[] iArr = MaterialButton.i0;
                ((MaterialButton) obj2).setIcon((Drawable) obj);
                break;
            case 8:
                ((TaskCompletionSource) obj2).trySetResult((eb2) obj);
                break;
            default:
                ((iq6) obj2).b.remove((ComponentName) obj);
                break;
        }
    }
}
