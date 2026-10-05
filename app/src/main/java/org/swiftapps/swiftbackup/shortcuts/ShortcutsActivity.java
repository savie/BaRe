package org.swiftapps.swiftbackup.shortcuts;

import android.content.Intent;
import android.os.Bundle;
import defpackage.ai8;
import defpackage.c47;
import defpackage.c7;
import defpackage.dz5;
import defpackage.eh2;
import defpackage.el1;
import defpackage.eq3;
import defpackage.f21;
import defpackage.gz7;
import defpackage.hv1;
import defpackage.hy7;
import defpackage.lh6;
import defpackage.mp6;
import defpackage.nq7;
import defpackage.nu;
import defpackage.ov2;
import defpackage.qo0;
import defpackage.qy5;
import defpackage.ra;
import defpackage.rs9;
import defpackage.ry5;
import defpackage.s35;
import defpackage.sa1;
import defpackage.u48;
import defpackage.uq7;
import defpackage.vr6;
import defpackage.xs1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.NotificationHelper;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.tasks.TaskService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ShortcutsActivity extends sa1 {
    public static final /* synthetic */ int P = 0;

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 a0() {
        return null;
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            vr6 vr6Var = vr6.INSTANCE;
            String strR = r();
            Set<String> setKeySet = extras.keySet();
            vr6.i$default(vr6Var, strR, xs1.j("intent extras=", setKeySet != null ? el1.Y0(setKeySet, null, null, null, new c7(extras, 27), 31) : null), null, 4, null);
        }
        NotificationHelper.d().cancel(302);
        hy7 hy7Var = hy7.a;
        gz7 gz7Var = TaskService.b;
        if (TaskService.b.isRunning()) {
            s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
            ra raVar = (ra) s35Var.b;
            raVar.d = getString(R.string.swift_backup_is_busy);
            raVar.m = false;
            raVar.f = getString(R.string.tasks_already_running_message);
            s35Var.s(R.string.ok, new f21(this, 2));
            s35Var.m();
            return;
        }
        dz5 dz5Var = dz5.a;
        if (!dz5.n()) {
            dz5.q(this, dz5.c());
            return;
        }
        V v = V.INSTANCE;
        if (!v.getA()) {
            finish();
            return;
        }
        String stringExtra = getIntent().getStringExtra("extra_id");
        if (stringExtra != null) {
            int iHashCode = stringExtra.hashCode();
            if (iHashCode != -1775970133) {
                if (iHashCode == 951117169 && stringExtra.equals("configs")) {
                    mp6 mp6Var = mp6.a;
                    if (!mp6.f()) {
                        Const.N(this);
                    } else if (v.getA()) {
                        ai8.q(this, ConfigListActivity.class);
                    } else {
                        rs9.u(this);
                    }
                    finish();
                    return;
                }
            } else if (stringExtra.equals("quick_actions")) {
                startActivity(new Intent(this, (Class<?>) AppsQuickActionsActivity.class));
                finish();
                return;
            }
        }
        if (!dz5.n()) {
            vr6.e$default(vr6.INSTANCE, r(), "Storage permission not available, finishing activity", null, 4, null);
            H();
            finish();
            return;
        }
        vr6 vr6Var2 = vr6.INSTANCE;
        vr6.i$default(vr6Var2, r(), "Starting shortcut task", null, 4, null);
        lh6 lh6Var = new lh6();
        lh6Var.a = ScheduleService.RunMode.Schedules.INSTANCE;
        String stringExtra2 = getIntent().getStringExtra("cmd");
        if (stringExtra2 == null || (string = nq7.H0(stringExtra2).toString()) == null || string.length() <= 0) {
            string = null;
        }
        if (string != null && string.length() != 0) {
            vr6.i$default(vr6Var2, r(), "cmd=".concat(string), null, 4, null);
            String string2 = nq7.H0(string).toString();
            List list = ov2.a;
            if (uq7.V(string2, "-s ", false) || uq7.V(string2, "s ", false)) {
                List listW0 = nq7.w0(nq7.H0(nq7.z0(string2, "s ", string2)).toString(), new char[]{' '}, 6);
                ArrayList arrayList = new ArrayList();
                Iterator it = listW0.iterator();
                while (it.hasNext()) {
                    String string3 = nq7.H0((String) it.next()).toString();
                    if (string3.length() <= 0) {
                        string3 = null;
                    }
                    if (string3 != null) {
                        arrayList.add(string3);
                    }
                }
                List listP = eq3.p(arrayList);
                if (listP.isEmpty()) {
                    vr6.e$default(vr6.INSTANCE, "ScheduleCommandHandler", "No ids found!", null, 4, null);
                } else {
                    vr6.i$default(vr6.INSTANCE, "ScheduleCommandHandler", "Searching " + listP.size() + " ids=" + listP, null, 4, null);
                    List<ScheduleItem> schedules = c47.a.c().getSchedules();
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : schedules) {
                        ScheduleItem scheduleItem = (ScheduleItem) obj;
                        if (!listP.isEmpty()) {
                            Iterator it2 = listP.iterator();
                            while (it2.hasNext()) {
                                if (uq7.P((String) it2.next(), scheduleItem.getItemId(), true)) {
                                    arrayList2.add(obj);
                                    break;
                                }
                            }
                        }
                    }
                    String strK = u48.k(arrayList2.size(), "Found ", " ids=", el1.Y0(arrayList2, null, null, null, new nu(10), 31));
                    if (listP.size() < arrayList2.size()) {
                        vr6.w$default(vr6.INSTANCE, "ScheduleCommandHandler", strK, null, 4, null);
                    } else {
                        vr6.i$default(vr6.INSTANCE, "ScheduleCommandHandler", strK, null, 4, null);
                    }
                    list = arrayList2;
                }
            }
            List list2 = list.isEmpty() ? null : list;
            if (list2 == null || list2.isEmpty()) {
                vr6.e$default(vr6.INSTANCE, r(), "No schedules found! Exiting.", null, 4, null);
                finish();
                return;
            }
            lh6Var.a = new ScheduleService.RunMode.MultipleSchedules(list2);
        }
        M(R.string.processing);
        String str = ry5.u;
        qy5.a(new eh2(5, this, lh6Var));
    }
}
