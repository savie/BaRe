package defpackage;

import androidx.credentials.playservices.controllers.ResponseUtils;
import androidx.credentials.playservices.controllers.blockstore.createrestorecredential.CredentialProviderCreateRestoreCredentialController;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u20 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ u20(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                int i2 = AppsConfigRunActivity.m0;
                ((AppsConfigRunActivity) obj3).V().k((ArrayList) obj2, (ky7) obj);
                return be8Var;
            case 1:
                return CredentialProviderCreateRestoreCredentialController.invokePlayServices$lambda$2$0((Executor) obj3, (t22) obj2, (lh6) obj);
            case 2:
                ((DetailActivity) obj3).a0().l((jz) obj2, (ry7) obj);
                return be8Var;
            case 3:
                kk3 kk3Var = (kk3) obj3;
                FolderItem folderItem = (FolderItem) obj;
                long jCurrentTimeMillis = System.currentTimeMillis();
                SwiftApp.Companion companion = SwiftApp.d;
                String string = SwiftApp.Companion.c().getString(R.string.deleting_backup);
                string.getClass();
                kk3Var.i(string);
                int i3 = jk3.a[((to3) obj2).ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        q.j();
                        return null;
                    }
                    vr6 vr6Var = vr6.INSTANCE;
                    vr6.i$default(vr6Var, kk3Var.b, xs1.j("Deleting cloud backup: ", folderItem.toDisplayString()), null, 4, null);
                    FolderMetadata folderMetadata = (FolderMetadata) sf1.g.d(folderItem.getId());
                    if (folderMetadata != null) {
                        try {
                            al3.a(folderMetadata);
                            vr6.i$default(vr6Var, kk3Var.b, "Deleting cloud backup successful", null, 4, null);
                        } catch (Exception e) {
                            vr6.e$default(vr6.INSTANCE, kk3Var.b, xs1.j("Error deleting cloud backup: ", folderItem.toDisplayString()), e, null, 8, null);
                        }
                    } else {
                        vr6.e$default(vr6Var, kk3Var.b, "Cloud backup null, nothing to delete...", null, 4, null);
                    }
                    break;
                } else {
                    vr6 vr6Var2 = vr6.INSTANCE;
                    vr6.i$default(vr6Var2, kk3Var.b, xs1.j("Deleting local backup: ", folderItem.toDisplayString()), null, 4, null);
                    try {
                        al3.b(folderItem, false);
                        vr6.i$default(vr6Var2, kk3Var.b, "Deleting local backup successful", null, 4, null);
                    } catch (Exception e2) {
                        vr6.e$default(vr6.INSTANCE, kk3Var.b, xs1.j("Error deleting local backup: ", folderItem.toDisplayString()), e2, null, 8, null);
                    }
                    break;
                }
                ai8.o(Const.m(jCurrentTimeMillis, 500L));
                kk3Var.f();
                return be8Var;
            default:
                return ResponseUtils.Companion.handleGetCredentialResponse$lambda$4((Executor) obj3, (t22) obj2, (wv3) obj);
        }
    }
}
