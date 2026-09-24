package defpackage;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import com.google.android.gms.tasks.OnFailureListener;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yu1 implements OnFailureListener {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;

    public /* synthetic */ yu1(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        CredentialProviderBeginSignInController.invokePlayServices$lambda$2((CredentialProviderBeginSignInController) this.a, (CancellationSignal) this.b, exc);
    }
}
