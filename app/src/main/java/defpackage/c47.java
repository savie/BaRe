package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.d;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c47 {
    public static final c47 a = new c47();

    public static ScheduleData b() {
        gv7 gv7Var = w14.a;
        ScheduleData scheduleData = (ScheduleData) io4.j("GsonHelper", "fromPrefs", false, new b47(), 12);
        return scheduleData == null ? new ScheduleData(0, 0, 0, null, null, null, null, null, null, null, null, null, null, 8191, null) : scheduleData;
    }

    public static boolean d() {
        return b().getSchedules().size() >= 20;
    }

    public static void f(HomeActivity homeActivity) {
        b05.l(homeActivity, null, homeActivity.getString(R.string.maximum_num_schedules_limit_message) + " (20/20)", 10);
    }

    public final synchronized boolean a() {
        ScheduleData scheduleData;
        Log.d("ScheduleRepo", "Fetching on demand");
        ai8.b();
        boolean z = true;
        if (!ai8.h()) {
            vr6.i$default(vr6.INSTANCE, "ScheduleRepo", "Internet not available, fetching from cache", null, 4, null);
            e(b());
            return true;
        }
        l73 l73VarA = cf3.a(re3.k().d("schedule_data"), true);
        if (l73VarA instanceof xe3) {
            scheduleData = (ScheduleData) ((xe3) l73VarA).n.c(ScheduleData.class);
        } else {
            if (!(l73VarA instanceof we3)) {
                throw new mn5();
            }
            vr6 vr6Var = vr6.INSTANCE;
            String str = ((we3) l73VarA).n.b;
            str.getClass();
            vr6.e$default(vr6Var, "ScheduleRepo", str, null, 4, null);
            scheduleData = null;
            z = false;
        }
        if (scheduleData != null) {
            e(scheduleData);
        }
        return z;
    }

    public final synchronized ScheduleData c() {
        return d.a(b());
    }

    public final synchronized void e(ScheduleData scheduleData) {
        scheduleData.getClass();
        ScheduleData scheduleDataWithNormalizedScheduleOrder = scheduleData.withNormalizedScheduleOrder();
        gv7 gv7Var = w14.a;
        w14.h(scheduleDataWithNormalizedScheduleOrder, "schedule_data");
        re3.k().d("schedule_data").i(scheduleDataWithNormalizedScheduleOrder);
    }
}
