package defpackage;

import android.widget.LinearLayout;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController;
import com.google.android.material.button.MaterialButton;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p12 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ p12(int i, Object obj, Object obj2) {
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
                CreateDigitalCredentialController.invokePlayServices$lambda$2$0$0((t22) obj2, (Exception) obj);
                break;
            case 1:
                CreatePasswordCredentialController.handleResponse$lambda$4$0((CreatePasswordCredentialController) obj2, (c12) obj);
                break;
            case 2:
                ((t22) obj2).onResult((k12) obj);
                break;
            case 3:
                CredentialProviderGetSignInIntentController.handleResponse$lambda$5$0((CredentialProviderGetSignInIntentController) obj2, (cw3) obj);
                break;
            case 4:
                MaterialButton materialButton = (MaterialButton) obj2;
                int[] iArr = MaterialButton.i0;
                ((Runnable) obj).run();
                LinearLayout.LayoutParams layoutParams = materialButton.U;
                if (layoutParams != null) {
                    materialButton.setLayoutParams(layoutParams);
                    materialButton.U = null;
                    materialButton.R = -2.14748365E9f;
                }
                materialButton.requestLayout();
                break;
            case 5:
                CountDownLatch countDownLatch = (CountDownLatch) obj;
                try {
                    rh3 rh3Var = ((dk6) obj2).h;
                    ya8.a().d.a(((oe0) rh3Var.a).b(d66.c), 1);
                    break;
                } catch (Exception unused) {
                }
                countDownLatch.countDown();
                break;
            default:
                SignalCredentialStateController.invokePlayServices$lambda$2$0((t22) obj2, (lh6) obj);
                break;
        }
    }
}
