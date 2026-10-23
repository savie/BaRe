package defpackage;

import android.content.Intent;
import android.view.View;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.b;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class fr implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fr(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = null;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                tr trVar = (tr) obj3;
                ji jiVar = (ji) obj2;
                trVar.z.invoke(jiVar, trVar.T);
                trVar.t(jiVar);
                break;
            case 1:
                qt3 qt3Var = ((q01) obj3).l;
                view.getClass();
                qt3Var.invoke(view, (rz0) obj2);
                break;
            case 2:
                int i2 = CallsDashActivity.T;
                int i3 = CallsBackupsActivity.T;
                zm5.D((CallsDashActivity) obj3, (ArrayList) obj2, true);
                break;
            case 3:
                gg1 gg1Var = (gg1) obj3;
                Const.I(gg1Var.i(), ((MaterialButton) obj2).getText().toString(), null, new bk(gg1Var, 10));
                break;
            case 4:
                ql1 ql1Var = (ql1) obj3;
                sl1 sl1Var = (sl1) obj2;
                if (!pe4.d(ql1Var.g, sl1Var)) {
                    ql1Var.g = sl1Var;
                    ql1Var.e();
                    e7 e7Var = ql1Var.h;
                    if (e7Var != null) {
                        e7Var.invoke(sl1Var);
                    }
                    break;
                }
                break;
            case 5:
                qj2 qj2Var = (qj2) obj3;
                DetailActivity detailActivity = qj2Var.a;
                xi0 xi0Var = (xi0) detailActivity.S.getValue();
                iz4 iz4Var = ((zj2) obj2).a;
                mk2 mk2Var = qj2Var.b;
                boolean zIsInstalled = mk2Var.k().isInstalled();
                boolean zIsBundled = mk2Var.k().isBundled();
                cd cdVar = new cd(4, iz4Var.getBackup().a, obj);
                fu fuVar = detailActivity.a0;
                xi0Var.getClass();
                fuVar.getClass();
                if (zIsInstalled || iz4Var.hasApk()) {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new wi0(xi0Var, detailActivity, zIsBundled, zIsInstalled, iz4Var, cdVar, fuVar, null));
                } else {
                    xi0Var.f(new nj0(), false, cdVar, fuVar);
                }
                break;
            case 6:
                ((ln3) obj3).T.invoke((String) obj2);
                break;
            case 7:
                ((q54) obj3).r(zc6.q((zc6) obj2, false, false, 3583));
                break;
            default:
                m37 m37Var = ((j57) obj3).m;
                ScheduleItem scheduleItem = ((b) obj2).q;
                int i4 = -1;
                if (!(scheduleItem instanceof ScheduleItem.AppsQuickActions) && !(scheduleItem instanceof ScheduleItem.AppsLabels) && !(scheduleItem instanceof ScheduleItem.AppConfig)) {
                    if (scheduleItem instanceof ScheduleItem.Messages) {
                        i4 = 2;
                    } else if (scheduleItem instanceof ScheduleItem.CallLogs) {
                        i4 = 3;
                    } else if (!(scheduleItem instanceof ScheduleItem.Folders) && !(scheduleItem instanceof ScheduleItem.Wallpapers) && !(scheduleItem instanceof ScheduleItem.Wifi)) {
                        q.j();
                    }
                }
                m37Var.getClass();
                int i5 = PreconditionsActivity.P;
                Intent intentPutExtra = new Intent(m37Var.requireContext(), (Class<?>) PreconditionsActivity.class).putExtra("request_code", i4);
                intentPutExtra.getClass();
                m37Var.startActivityForResult(intentPutExtra, i4);
                break;
        }
    }
}
