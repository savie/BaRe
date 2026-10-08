package defpackage;

import android.view.View;
import android.view.animation.PathInterpolator;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gs implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ gs(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = 0;
        int i3 = 1;
        jv1 jv1Var = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                AppListActivity appListActivity = (AppListActivity) obj;
                int i4 = AppListActivity.q0;
                if (!appListActivity.Y) {
                    if (!appListActivity.l0().e.a.isEmpty()) {
                        t10 t10Var = (t10) appListActivity.o0.getValue();
                        List list = appListActivity.l0().e.a;
                        t10Var.getClass();
                        gv7 gv7Var = t10Var.S;
                        gv7 gv7Var2 = t10Var.R;
                        list.getClass();
                        ((QuickRecyclerView) gv7Var2.getValue()).setLinearLayoutManager(1);
                        ((QuickRecyclerView) gv7Var2.getValue()).setAdapter((r10) gv7Var.getValue());
                        ((r10) gv7Var.getValue()).j = new mi(i3, t10Var, list);
                        zn4 zn4Var = zn4.a;
                        zn4.b(null, new s10(t10Var, list, jv1Var, i2));
                    } else {
                        Const.L();
                    }
                    break;
                }
                break;
            case 1:
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) obj;
                int i5 = CloudDiagnosticsActivity.Z;
                cloudDiagnosticsActivity.M(R.string.preparing);
                String str = cloudDiagnosticsActivity.X;
                if (str == null || nq7.j0(str)) {
                    str = null;
                }
                zn4 zn4Var2 = zn4.a;
                zn4.b(null, new s10(str, cloudDiagnosticsActivity, jv1Var, i3));
                break;
            case 2:
                CloudOrphanCleanerActivity cloudOrphanCleanerActivity = (CloudOrphanCleanerActivity) obj;
                int i6 = CloudOrphanCleanerActivity.S;
                sa1.R(cloudOrphanCleanerActivity, null, new fj(cloudOrphanCleanerActivity, 16), 1);
                break;
            case 3:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) obj;
                int i7 = ConfigEditActivity.V;
                configEditActivity.U().k.postOnAnimation(new hq1(configEditActivity, i2));
                break;
            case 4:
                mk2 mk2Var = ((pj2) obj).b;
                mk2Var.getClass();
                zn4 zn4Var3 = zn4.a;
                zn4.b(null, new qj(mk2Var, jv1Var, i3));
                break;
            case 5:
                a14 a14Var = (a14) obj;
                qt3 qt3Var = a14Var.n;
                Boolean bool = Boolean.FALSE;
                qt3Var.invoke(bool, bool);
                a14Var.j(false);
                break;
            case 6:
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                ((HomeSearchActivity) obj).U();
                break;
            case 7:
                int i8 = MessagesDashActivity.T;
                ai8.q((MessagesDashActivity) obj, MessagesBackupRestoreActivity.class);
                break;
            case 8:
                mp6 mp6Var = mp6.a;
                boolean zF = mp6.f();
                sa1 sa1Var = ((dd6) obj).l;
                if (!zF) {
                    Const.N(sa1Var);
                } else {
                    sa1Var.getClass();
                    String string = sa1Var.getString(R.string.icon_indicates_root_or_shizuku_needed_message);
                    string.getClass();
                    b05.l(sa1Var, null, string, 10);
                }
                break;
            case XmlPullParser.COMMENT /* 9 */:
                ((m37) obj).l().callOnClick();
                break;
            case 10:
                n97 n97Var = (n97) obj;
                n97Var.f.invoke(m97.SET_LABELS);
                n97Var.j(true);
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                WallsDashActivity wallsDashActivity = (WallsDashActivity) obj;
                int i9 = WallsDashActivity.W;
                pp8 pp8VarY = wallsDashActivity.a0();
                zn4 zn4Var4 = zn4.a;
                zn4.b(null, new lb2(pp8VarY, jv1Var, 3));
                wallsDashActivity.a0().k();
                break;
            default:
                int i10 = WallsManageActivity.S;
                k55.E(((uo8) obj).a, false);
                break;
        }
    }
}
