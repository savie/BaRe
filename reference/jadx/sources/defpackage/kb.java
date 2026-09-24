package defpackage;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kb implements ig2, OnFailureListener, t45 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;

    public /* synthetic */ kb(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // defpackage.t45
    public void b(boolean z, boolean z2) {
        PreconditionsActivity preconditionsActivity = (PreconditionsActivity) this.a;
        Set set = (Set) this.b;
        int i = PreconditionsActivity.P;
        if (z2) {
            dz5 dz5Var = dz5.a;
            dz5.o(preconditionsActivity, set, false);
        } else if (z) {
            preconditionsActivity.P();
        }
    }

    @Override // defpackage.ig2
    public void c(ga6 ga6Var) {
        ((ae4) ga6Var.get()).a(new ob((ExecutorService) this.a, (j58) this.b));
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$4((CredentialProviderCreatePublicKeyCredentialController) this.a, (CancellationSignal) this.b, exc);
    }
}
