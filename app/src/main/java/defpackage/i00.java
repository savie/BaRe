package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.view.View;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.a;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i00 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ i00(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = 1;
        jv1 jv1Var = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                AppVisibilityDiagnosticsActivity appVisibilityDiagnosticsActivity = (AppVisibilityDiagnosticsActivity) obj;
                int i3 = AppVisibilityDiagnosticsActivity.O;
                v00 v00Var = appVisibilityDiagnosticsActivity.V().f.a;
                if (v00Var != null) {
                    ((ClipboardManager) appVisibilityDiagnosticsActivity.getSystemService(ClipboardManager.class)).setPrimaryClip(ClipData.newPlainText("App visibility diagnostics", lg7.b(v00Var)));
                    String string = appVisibilityDiagnosticsActivity.getString(R.string.copied_to_clipboard);
                    string.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(14, appVisibilityDiagnosticsActivity, string));
                    break;
                }
                break;
            case 1:
                int i4 = AppsBatchActivity.s0;
                ((AppsBatchActivity) obj).i0().i0(0);
                break;
            case 2:
                int i5 = CallsDashActivity.T;
                ai8.q((CallsDashActivity) obj, CallsBackupRestoreActivity.class);
                break;
            case 3:
                int i6 = CloudDiagnosticsActivity.Z;
                hf1 hf1VarV = ((CloudDiagnosticsActivity) obj).U();
                ef1 ef1Var = hf1VarV.h;
                if (ef1Var != null && !ef1Var.i) {
                    hf1VarV.p(new nk(4));
                }
                break;
            case 4:
                int i7 = CloudOrphanCleanerActivity.S;
                ((CloudOrphanCleanerActivity) obj).U().s(new hc1(i2));
                break;
            case 5:
                ConfigListActivity configListActivity = (ConfigListActivity) obj;
                int i8 = ConfigListActivity.R;
                ConfigsData configsData = br1.e;
                Integer size = configsData != null ? configsData.getSize() : null;
                if ((size != null ? size.intValue() : 0) < 20) {
                    mp6 mp6Var = mp6.a;
                    if (!mp6.f()) {
                        Const.N(configListActivity);
                    } else {
                        configListActivity.startActivity(new Intent(configListActivity, (Class<?>) ConfigEditActivity.class));
                    }
                } else {
                    b05.l(configListActivity, null, configListActivity.getString(R.string.maximum_num_configs_limit_message) + " (20/20)", 10);
                }
                break;
            case 6:
                ((sr1) obj).j(false);
                break;
            case 7:
                kp3 kp3Var = (kp3) obj;
                FoldersDashActivity foldersDashActivityI = kp3Var.i();
                List list = kp3Var.e.e.a;
                list.getClass();
                if (!list.isEmpty()) {
                    qk3 qk3Var = new qk3(foldersDashActivityI);
                    gv7 gv7Var = qk3Var.R;
                    ((QuickRecyclerView) gv7Var.getValue()).setLinearLayoutManager(1);
                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) gv7Var.getValue();
                    gv7 gv7Var2 = qk3Var.S;
                    quickRecyclerView.setAdapter((ok3) gv7Var2.getValue());
                    ((ok3) gv7Var2.getValue()).j = new lj2(i2, qk3Var, list);
                    zn4 zn4Var2 = zn4.a;
                    zn4.b(null, new pk3(qk3Var, list, null));
                } else {
                    Const.L();
                }
                break;
            case 8:
                HomeActivity homeActivity = (HomeActivity) obj;
                Object obj2 = HomeActivity.b0.get(Integer.valueOf(homeActivity.Y().getSelectedItemId()));
                obj2.getClass();
                homeActivity.b0(((Number) obj2).intValue());
                break;
            case XmlPullParser.COMMENT /* 9 */:
                int i9 = IntroActivity.V;
                ((IntroActivity) obj).P().a(3);
                break;
            case 10:
                int i10 = LabelEditActivity.U;
                ((LabelEditActivity) obj).finish();
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i11 = LabelsActivity.Z;
                zr4 zr4VarR = ((LabelsActivity) obj).V();
                zr4VarR.h = sv2.a;
                zr4VarR.k(lr4.e);
                break;
            case 12:
                int i12 = PreconditionsActivity.P;
                ((PreconditionsActivity) obj).z();
                break;
            case 13:
                String str = ScheduleService.p;
                HomeActivity homeActivityI = ((m37) obj).i();
                ScheduleService.RunMode.Schedules schedules = ScheduleService.RunMode.Schedules.INSTANCE;
                schedules.getClass();
                homeActivityI.M(R.string.preparing);
                a.b(true, schedules, new cz(homeActivityI, 17));
                break;
            case 14:
                ((v38) obj).f(((Integer) view.getTag(R.id.selection_type)).intValue());
                break;
            case 15:
                int i13 = UserPasswordActivity.O;
                V v = V.INSTANCE;
                v.getZ().edit().putString("saved_user_password", null).apply();
                ux5 ux5Var = ux5.STANDARD_PASSWORD;
                ux5Var.getClass();
                v.getZ().edit().putInt("saved_password_mode", ((kx2) ux5.getEntries()).indexOf(ux5Var)).apply();
                ((UserPasswordActivity) obj).finish();
                break;
            default:
                iu8 iu8Var = ((as8) obj).b;
                iu8Var.getClass();
                zn4 zn4Var3 = zn4.a;
                zn4.b(null, new uv(iu8Var, jv1Var, 2));
                break;
        }
    }
}
