package org.swiftapps.swiftbackup.home.schedule;

import android.content.Context;
import android.content.Intent;
import defpackage.dj7;
import defpackage.gz7;
import defpackage.hy7;
import defpackage.io4;
import defpackage.kc2;
import defpackage.mt3;
import defpackage.nq7;
import defpackage.o37;
import defpackage.q;
import defpackage.qc2;
import defpackage.vr6;
import defpackage.zn4;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.tasks.TaskService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static boolean a(Exception exc) {
        String strB = io4.b(exc);
        return exc.getClass().getSimpleName().equals("ForegroundServiceStartNotAllowedException") && nq7.Z(strB, "Time limit already exhausted", true) && nq7.Z(strB, "dataSync", true);
    }

    public static void b(boolean z, ScheduleService.RunMode runMode, mt3 mt3Var) {
        runMode.getClass();
        if (V.INSTANCE.getA()) {
            hy7 hy7Var = hy7.a;
            gz7 gz7Var = TaskService.b;
            if (TaskService.b.isRunning()) {
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                String strG = dj7.g(R.string.swift_backup_is_busy);
                zn4 zn4Var = zn4.a;
                dj7.y(contextC, strG);
                vr6.w$default(vr6.INSTANCE, ScheduleService.p, "App is already performing some tasks in background. Try again later.", null, 4, null);
                return;
            }
            StringBuilder sb = new StringBuilder("ScheduleService");
            if (runMode.equals(ScheduleService.RunMode.Schedules.INSTANCE)) {
                sb.append(".All");
            } else if (runMode instanceof ScheduleService.RunMode.MultipleSchedules) {
                sb.append(".Multiple");
            } else {
                if (!(runMode instanceof ScheduleService.RunMode.SingleSchedule)) {
                    q.j();
                    return;
                }
                sb.append(".Single");
            }
            if (z) {
                sb.append(":F");
            }
            ScheduleService.p = sb.toString();
            ScheduleService.q = mt3Var;
            SwiftApp.Companion companion2 = SwiftApp.d;
            Intent intent = new Intent(SwiftApp.Companion.c(), (Class<?>) ScheduleService.class);
            intent.putExtra("is_forced_run", z);
            intent.putExtra("schedule_run_mode", runMode);
            vr6.i$default(vr6.INSTANCE, ScheduleService.p, "start() called with: isForcedRun=" + z + ", runMode=" + runMode, null, 4, null);
            try {
                SwiftApp.Companion.c().startForegroundService(intent);
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, ScheduleService.p, "start", e, null, 8, null);
                if (a(e)) {
                    String strB = io4.b(e);
                    o37.d();
                    kc2.a.f(ScheduleService.p, runMode.toString(), strB, true, z);
                    qc2.a.h("ScheduleService start blocked", true);
                    mt3 mt3Var2 = ScheduleService.q;
                    if (mt3Var2 != null) {
                        mt3Var2.invoke(Boolean.FALSE);
                    }
                    ScheduleService.q = null;
                }
            }
        }
    }
}
