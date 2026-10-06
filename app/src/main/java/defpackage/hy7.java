package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.tasks.TaskManager$ErrorSummary;
import org.swiftapps.swiftbackup.tasks.TaskService;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hy7 {
    public static String b = "";
    public static String d;
    public static jy7 e;
    public static boolean f;
    public static String g;
    public static Bundle h;
    public static final hy7 a = new hy7();
    public static final CopyOnWriteArrayList c = new CopyOnWriteArrayList();

    public static void a(Class cls, pw6 pw6Var) {
        pw6Var.getClass();
        List listI = nc8.I(pw6Var);
        ArrayList arrayList = new ArrayList(hl1.G0(listI, 10));
        Iterator it = listI.iterator();
        while (it.hasNext()) {
            arrayList.add(new rw6(cls, new to5((pw6) it.next(), 11)));
        }
        b(arrayList);
    }

    public static boolean b(List list) {
        Object next;
        String strA;
        qw6 qw6Var;
        qw6 qw6Var2;
        gz7 gz7Var = TaskService.b;
        gz7 gz7Var2 = TaskService.b;
        boolean z = TaskService.c;
        gz7Var2.getClass();
        boolean z2 = z || gz7Var2.isRunning() || gz7Var2.isCancelling();
        if (z2) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String strG = dj7.g(R.string.tasks_already_running_message);
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, strG);
        }
        if (z2) {
            return false;
        }
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            qw6Var2 = (qw6) ((rw6) next).f.getValue();
        } while ((qw6Var2 != null ? qw6Var2.a : null) == null);
        rw6 rw6Var = (rw6) next;
        pw6 pw6Var = (rw6Var == null || (qw6Var = rw6Var.c) == null) ? null : qw6Var.a;
        if (pw6Var == null) {
            vr6.e$default(vr6.INSTANCE, "TaskManager", xs1.h(list.size(), "No task to perform in ", " task providers"), null, 4, null);
            return false;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = c;
        copyOnWriteArrayList.clear();
        copyOnWriteArrayList.addAll(list);
        if (f()) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            strA = dj7.g(R.string.scheduled_backups);
        } else {
            f = false;
            g = null;
            strA = pw6Var.a.a();
        }
        b = strA;
        return true;
    }

    public static TaskManager$ErrorSummary c() {
        ArrayList<pw6> arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = c;
        Iterator it = copyOnWriteArrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            qw6 qw6Var = ((rw6) it.next()).c;
            pw6 pw6Var = qw6Var != null ? qw6Var.a : null;
            if (pw6Var != null) {
                arrayList.add(pw6Var);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (pw6 pw6Var2 : arrayList) {
            String strB = pw6Var2.b.c() ? pw6Var2.b.b() : null;
            if (strB != null) {
                arrayList2.add(strB);
            }
        }
        String strY0 = el1.Y0(eq3.p(arrayList2), "\n\n", null, null, null, 62);
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            qw6 qw6Var2 = ((rw6) it2.next()).c;
            pw6 pw6Var3 = qw6Var2 != null ? qw6Var2.a : null;
            if (pw6Var3 != null) {
                arrayList3.add(pw6Var3);
            }
        }
        boolean z = true;
        if (!arrayList3.isEmpty()) {
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                if (!((pw6) it3.next()).b.l()) {
                    z = false;
                    break;
                }
            }
        }
        return strY0.length() > 0 ? new TaskManager$ErrorSummary(strY0, z) : new TaskManager$ErrorSummary("", false);
    }

    public static void d() {
        gz7 gz7Var = TaskService.b;
        if (TaskService.b.isRunning()) {
            jy7 jy7Var = e;
            if (jy7Var != null) {
                jy7Var.b = true;
                jy7Var.c();
            }
            zn4 zn4Var = zn4.a;
            zn4.c(new b7(29));
        }
    }

    public static boolean e(Context context, String str) {
        Object sg1Var;
        Log.d("TaskManager", "executeWithTaskActivity() called with: ctx = [" + context + "]");
        vg1 vg1Var = (vg1) vg1.d.getValue();
        boolean z = true;
        rs1 rs1Var = new rs1(str, 1 == true ? 1 : 0);
        vg1Var.getClass();
        synchronized (vg1Var.b) {
            try {
                if (vg1Var.c) {
                    sg1Var = tg1.n;
                } else {
                    sg1Var = ((Boolean) vg1Var.a.invoke()).booleanValue() ? ug1.n : new sg1(((Boolean) rs1Var.invoke()).booleanValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (sg1Var.equals(tg1.n)) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String strG = dj7.g(R.string.cloud_maintenance_running_message);
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, strG);
            z = false;
        } else if (sg1Var.equals(ug1.n)) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            Context contextC2 = SwiftApp.Companion.c();
            String strG2 = dj7.g(R.string.tasks_already_running_message);
            zn4 zn4Var2 = zn4.a;
            dj7.y(contextC2, strG2);
        } else {
            if (!(sg1Var instanceof sg1)) {
                q.j();
                return false;
            }
            z = ((sg1) sg1Var).n;
        }
        if (context != null && z) {
            int i = TaskActivity.c0;
            ai8.q(context, TaskActivity.class);
        }
        return z;
    }

    public static boolean f() {
        CopyOnWriteArrayList copyOnWriteArrayList = c;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (((rw6) it.next()).e) {
                return true;
            }
        }
        return false;
    }

    public static void g() {
        pw6 pw6Var;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = c;
        if (copyOnWriteArrayList.isEmpty()) {
            l0.e("Task list empty!!!");
            return;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            qw6 qw6Var = (qw6) ((rw6) it.next()).f.getValue();
            if (qw6Var != null && (pw6Var = qw6Var.a) != null) {
                vr6.i$default(vr6.INSTANCE, "TaskManager", "Executing " + pw6Var.c() + ": params=" + pw6Var.a + " totalItems=" + pw6Var.f(), null, 4, null);
                gj5 gj5Var = pw6Var.c;
                if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                    d6.o();
                    return;
                }
                gj5Var.i(gz7.RUNNING);
                pw6Var.l();
                pw6Var.b();
                gj5Var.i(gz7.COMPLETE);
                ex6 ex6Var = pw6Var.i;
                SwiftApp.Companion companion = SwiftApp.d;
                ex6Var.i(SwiftApp.Companion.c().getString(R.string.done));
                pw6Var.n(pw6Var.d());
                gz7 gz7Var = TaskService.b;
                if (TaskService.b.isCancelled()) {
                    return;
                }
            }
        }
    }
}
