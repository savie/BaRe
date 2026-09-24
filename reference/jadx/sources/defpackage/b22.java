package defpackage;

import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.blockstore.createrestorecredential.CredentialProviderCreateRestoreCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b22 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b22(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                return CreatePublicKeyCredentialController.invokePlayServices$lambda$0$2((Executor) obj3, (t22) obj2, (f22) obj);
            case 1:
                return CredentialProviderController.maybeReportErrorFromResultReceiver$lambda$0((Executor) obj3, (t22) obj2, obj);
            case 2:
                return CredentialProviderCreateRestoreCredentialController.invokePlayServices$lambda$0$1((Executor) obj3, (t22) obj2, (Exception) obj);
            default:
                int i2 = FoldersBatchActivity.Y;
                ((FoldersBatchActivity) obj3).a0().j((ArrayList) obj2, (uy7) obj);
                return be8.a;
        }
    }
}
