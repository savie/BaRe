package defpackage;

import android.content.DialogInterface;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appconfigs.list.a;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rj1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rj1(jx2 jx2Var, jh6 jh6Var, ConfigListActivity configListActivity) {
        this.a = 1;
        this.c = jx2Var;
        this.b = jh6Var;
        this.d = configListActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i2) {
            case 0:
                ((mt3) obj3).invoke(((ArrayList) obj2).get(((jh6) obj).a));
                break;
            case 1:
                int i3 = ConfigListActivity.R;
                ((ConfigListActivity) obj2).V().k((a.b) ((kx2) ((jx2) obj3)).get(((jh6) obj).a), a.EnumC0012a.Asc);
                break;
            case 2:
                int i4 = CsActivity.P0;
                ((CsActivity) obj3).Y((vi1) ((List) obj2).get(((jh6) obj).a));
                break;
            case 3:
                kj3 kj3Var = (kj3) obj3;
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj2;
                FolderMetadata folderMetadata = (FolderMetadata) obj;
                int i5 = FolderDetailActivity.Z;
                if (kj3Var != null) {
                    folderDetailActivity.U().j(folderDetailActivity.U().k(), to3.LOCAL);
                }
                if (folderMetadata != null && Const.d(folderDetailActivity)) {
                    folderDetailActivity.U().j(folderDetailActivity.U().k(), to3.CLOUD);
                    break;
                }
                break;
            default:
                int i6 = StorageSwitchActivity.f0;
                yo7 yo7VarU = ((StorageSwitchActivity) obj3).U();
                q63 q63Var = new q63((String) obj2, 2);
                q63 q63Var2 = new q63((String) obj, 2);
                zn4 zn4Var = zn4.a;
                zn4.b(null, new xo7(false, yo7VarU, q63Var, q63Var2, null));
                break;
        }
    }

    public /* synthetic */ rj1(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.c = obj;
        this.d = obj2;
        this.b = obj3;
    }
}
