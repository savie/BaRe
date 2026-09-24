package defpackage;

import android.content.DialogInterface;
import java.util.List;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appconfigs.list.a;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vq1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ vq1(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        gm backup;
        int i2 = this.a;
        hk hkVar = null;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i2) {
            case 0:
                int i3 = ConfigListActivity.R;
                ((ConfigListActivity) obj).V().k((a.b) ((kx2) ((jx2) obj3)).get(((jh6) obj2).a), a.EnumC0012a.Desc);
                break;
            case 1:
                iz4 iz4Var = (iz4) obj2;
                AppCloudBackup appCloudBackup = (AppCloudBackup) obj;
                int i4 = DetailActivity.b0;
                mk2 mk2VarA0 = ((DetailActivity) obj3).a0();
                jx2 entries = iu.getEntries();
                if (iz4Var != null && (backup = iz4Var.getBackup()) != null) {
                    hkVar = backup.a;
                }
                List listB0 = fl1.B0(hkVar);
                List listB1 = fl1.B0(appCloudBackup);
                entries.getClass();
                zn4.c(new kk2(mk2VarA0, entries, listB0, listB1, 0));
                break;
            default:
                int i5 = StorageSwitchActivity.f0;
                yo7 yo7VarU = ((StorageSwitchActivity) obj3).U();
                q63 q63Var = new q63((String) obj2, 2);
                q63 q63Var2 = new q63((String) obj, 2);
                zn4 zn4Var = zn4.a;
                zn4.b(null, new xo7(true, yo7VarU, q63Var, q63Var2, null));
                break;
        }
    }
}
