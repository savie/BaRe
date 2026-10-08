package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.NotificationHelper;
import org.swiftapps.swiftbackup.tasks.NotificationTaskCancelReceiver;
import org.swiftapps.swiftbackup.tasks.TaskManager$ErrorSummary;
import org.swiftapps.swiftbackup.tasks.TaskService;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jy7 {
    public final wo5 a;
    public boolean b;
    public boolean c;
    public Timer d;

    public jy7() {
        SwiftApp.Companion companion = SwiftApp.d;
        wo5 wo5Var = new wo5(SwiftApp.Companion.c(), "backup_restore_channel");
        wo5Var.r = NotificationHelper.c();
        wo5Var.u.icon = R.drawable.ic_stat;
        this.a = wo5Var;
        this.c = true;
        this.d = new Timer();
    }

    public final Notification a() {
        int i = TaskActivity.c0;
        PendingIntent pendingIntentA = zx7.a();
        wo5 wo5Var = this.a;
        wo5Var.g = pendingIntentA;
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.cancel);
        int i2 = NotificationTaskCancelReceiver.a;
        PendingIntent broadcast = PendingIntent.getBroadcast(SwiftApp.Companion.c(), 1, new Intent(SwiftApp.Companion.c(), (Class<?>) NotificationTaskCancelReceiver.class), 1140850688);
        broadcast.getClass();
        wo5Var.b.add(new vo5(R.drawable.ic_force_stop, strG, broadcast));
        wo5Var.c(2);
        wo5Var.e = wo5.b(hy7.b);
        wo5Var.c(8);
        wo5Var.m = 100;
        wo5Var.n = 0;
        wo5Var.o = true;
        iy7 iy7Var = new iy7(this);
        try {
            this.d.scheduleAtFixedRate(iy7Var, 0L, 2000L);
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, "TaskNotificationHelper", io4.b(e), null, 4, null);
            vr6.i$default(vr6Var, "TaskNotificationHelper", "Retrying timer setup with new instance", null, 4, null);
            Timer timer = new Timer();
            this.d = timer;
            timer.scheduleAtFixedRate(iy7Var, 0L, 2000L);
        }
        return c();
    }

    public final synchronized void b() {
        this.c = false;
        try {
            this.d.cancel();
        } catch (Exception unused) {
        }
        NotificationHelper.d().cancel(12);
    }

    public final synchronized Notification c() {
        Notification notificationA;
        try {
            hy7 hy7Var = hy7.a;
            gz7 gz7Var = TaskService.b;
            if (TaskService.b.isCancelled() || this.b) {
                this.d.cancel();
                SwiftApp.Companion companion = SwiftApp.d;
                wo5 wo5Var = new wo5(SwiftApp.Companion.c(), "backup_restore_channel");
                wo5Var.r = NotificationHelper.c();
                wo5Var.u.icon = R.drawable.ic_stat;
                wo5Var.c(2);
                wo5Var.e = wo5.b(SwiftApp.Companion.c().getString(R.string.cancelling_please_wait));
                wo5Var.c(8);
                wo5Var.m = 100;
                wo5Var.n = 0;
                wo5Var.o = true;
                wo5Var.l = null;
                int i = TaskActivity.c0;
                wo5Var.g = zx7.a();
                notificationA = wo5Var.a();
                notificationA.getClass();
            } else {
                notificationA = this.a.a();
                notificationA.getClass();
            }
            if (this.c) {
                try {
                    NotificationHelper.d().notify(12, notificationA);
                } catch (Exception unused) {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return notificationA;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x01b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:? A[LOOP:2: B:69:0x019a->B:105:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x018f  */
    /* JADX WARN: Code duplicated, block: B:68:0x0196  */
    /* JADX WARN: Code duplicated, block: B:71:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:75:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:79:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:81:0x01cf  */
    public final void d() {
        Bitmap bitmap;
        boolean z;
        int i;
        String strK;
        Iterator it;
        Log.d("TaskNotificationHelper", "showCompleteNotification() called");
        this.d.cancel();
        SwiftApp.Companion companion = SwiftApp.d;
        Intent flags = new Intent(SwiftApp.Companion.c(), (Class<?>) TaskActivity.class).setAction("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setFlags(270532608);
        flags.getClass();
        PendingIntent activity = PendingIntent.getActivity(SwiftApp.Companion.c(), 0, flags, 201326592);
        CopyOnWriteArrayList copyOnWriteArrayList = hy7.c;
        ArrayList<pw6> arrayList = new ArrayList();
        Iterator it2 = copyOnWriteArrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            qw6 qw6Var = ((rw6) it2.next()).c;
            pw6 pw6Var = qw6Var != null ? qw6Var.a : null;
            if (pw6Var != null) {
                arrayList.add(pw6Var);
            }
        }
        hy7 hy7Var = hy7.a;
        TaskManager$ErrorSummary taskManager$ErrorSummaryC = hy7.c();
        if (taskManager$ErrorSummaryC.hasErrors()) {
            vr6.e$default(vr6.INSTANCE, "TaskNotificationHelper", nq7.H0(taskManager$ErrorSummaryC.getMsg()).toString(), null, 4, null);
        }
        boolean z2 = taskManager$ErrorSummaryC.getMsg().length() > 0;
        ArrayList arrayList2 = new ArrayList();
        if (hy7.f()) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(R.string.x_schedules, String.valueOf(copyOnWriteArrayList.size()));
            string.getClass();
            arrayList2.add(string);
            bitmap = null;
        } else {
            bitmap = null;
            for (pw6 pw6Var2 : arrayList) {
                if (pw6Var2 instanceof c40) {
                    c40 c40Var = (c40) pw6Var2;
                    if (!c40Var.g()) {
                        pw5 pw5Var = c40Var.v;
                        Bitmap bitmap2 = pw5Var != null ? (Bitmap) pw5Var.b : null;
                        try {
                            arrayList2.add(((kz) el1.S0(((c40) pw6Var2).m)).a().getName());
                        } catch (Exception e) {
                            vr6 vr6Var = vr6.INSTANCE;
                            String message = e.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            vr6.e$default(vr6Var, "TaskNotificationHelper", message, null, 4, null);
                            SwiftApp.Companion companion3 = SwiftApp.d;
                            String string2 = SwiftApp.Companion.c().getString(R.string.apps);
                            string2.getClass();
                            arrayList2.add(string2);
                        }
                        bitmap = bitmap2;
                    }
                }
                arrayList2.add(pw6Var2.j());
            }
        }
        String strY0 = el1.Y0(arrayList2, null, null, null, null, 63);
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("play_notification_sounds", true);
            String str = z ? !z2 ? "task_completion_channel_success" : "task_completion_channel_error" : "task_completion_channel_silent";
            SwiftApp.Companion companion4 = SwiftApp.d;
            wo5 wo5Var = new wo5(SwiftApp.Companion.c(), str);
            if (!z2) {
                if (!arrayList.isEmpty()) {
                    Iterator it3 = arrayList.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (!((pw6) it3.next()).a.b()) {
                                if (z2) {
                                    String str2 = hy7.b;
                                    if (taskManager$ErrorSummaryC.hasErrors()) {
                                        i = R.string.finished;
                                    } else if (taskManager$ErrorSummaryC.isOnlySafeErrors()) {
                                        i = R.string.finished_with_notes;
                                    } else {
                                        i = R.string.finished_with_errors;
                                    }
                                    SwiftApp.Companion companion5 = SwiftApp.d;
                                    strK = dj7.k(str2, ": ", dj7.g(i));
                                } else {
                                    if (!arrayList.isEmpty()) {
                                        it = arrayList.iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                if (!((pw6) it.next()).a.c()) {
                                                    String str3 = hy7.b;
                                                    if (taskManager$ErrorSummaryC.hasErrors()) {
                                                        i = R.string.finished;
                                                    } else if (taskManager$ErrorSummaryC.isOnlySafeErrors()) {
                                                        i = R.string.finished_with_notes;
                                                    } else {
                                                        i = R.string.finished_with_errors;
                                                    }
                                                    SwiftApp.Companion companion6 = SwiftApp.d;
                                                    strK = dj7.k(str3, ": ", dj7.g(i));
                                                }
                                            }
                                        }
                                    }
                                    SwiftApp.Companion companion7 = SwiftApp.d;
                                    strK = dj7.g(R.string.restore_successful);
                                }
                            }
                        }
                    }
                }
                SwiftApp.Companion companion8 = SwiftApp.d;
                strK = dj7.g(R.string.backup_successful);
            } else if (z2) {
                String str4 = hy7.b;
                if (taskManager$ErrorSummaryC.hasErrors()) {
                    i = R.string.finished;
                } else if (taskManager$ErrorSummaryC.isOnlySafeErrors()) {
                    i = R.string.finished_with_notes;
                } else {
                    i = R.string.finished_with_errors;
                }
                SwiftApp.Companion companion9 = SwiftApp.d;
                strK = dj7.k(str4, ": ", dj7.g(i));
            } else {
                if (!arrayList.isEmpty()) {
                    it = arrayList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (!((pw6) it.next()).a.c()) {
                                String str5 = hy7.b;
                                if (taskManager$ErrorSummaryC.hasErrors()) {
                                    i = R.string.finished;
                                } else if (taskManager$ErrorSummaryC.isOnlySafeErrors()) {
                                    i = R.string.finished_with_notes;
                                } else {
                                    i = R.string.finished_with_errors;
                                }
                                SwiftApp.Companion companion10 = SwiftApp.d;
                                strK = dj7.k(str5, ": ", dj7.g(i));
                            }
                        }
                    }
                }
                SwiftApp.Companion companion11 = SwiftApp.d;
                strK = dj7.g(R.string.restore_successful);
            }
            wo5Var.r = NotificationHelper.c();
            Notification notification = wo5Var.u;
            notification.icon = R.drawable.ic_stat;
            wo5Var.d(bitmap);
            wo5Var.e = wo5.b(strK);
            if (z2) {
                SwiftApp.Companion companion12 = SwiftApp.d;
                strY0 = dj7.g(R.string.click_for_details);
            }
            wo5Var.f = wo5.b(strY0);
            wo5Var.g = activity;
            notification.vibrate = new long[]{500};
            wo5Var.i = 0;
            if (z) {
                NotificationHelper.g(wo5Var, z2);
            }
            NotificationHelper.d().notify(565, wo5Var.a());
        } catch (ClassCastException unused) {
            z = true;
        }
    }

    public final void e(int i, int i2) {
        wo5 wo5Var = this.a;
        wo5Var.m = i2;
        wo5Var.n = i;
        wo5Var.o = false;
        wo5Var.l = wo5.b(Const.q(i, i2) + "%");
    }
}
