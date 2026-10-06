package defpackage;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o32 implements OnFailureListener, dv7 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;

    public /* synthetic */ o32(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // defpackage.dv7
    public Object g() {
        fg8 fg8Var = (fg8) this.a;
        for (Map.Entry entry : ((HashMap) this.b).entrySet()) {
            fg8Var.i.j(((Integer) entry.getValue()).intValue(), c15.INVALID_PAYLOD, (String) entry.getKey());
        }
        return null;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        CredentialProviderGetSignInIntentController.invokePlayServices$lambda$3((CredentialProviderGetSignInIntentController) this.a, (CancellationSignal) this.b, exc);
    }
}
