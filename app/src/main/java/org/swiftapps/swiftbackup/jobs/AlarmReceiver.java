package org.swiftapps.swiftbackup.jobs;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.PowerManager;
import android.util.Log;
import defpackage.c47;
import defpackage.cz4;
import defpackage.g00;
import defpackage.io4;
import defpackage.pe4;
import defpackage.rs9;
import defpackage.vr6;
import java.util.Calendar;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AlarmReceiver extends BroadcastReceiver {
    public final String a = "AlarmReceiver";

    public static Calendar b() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        c47 c47Var = c47.a;
        int startHour = c47Var.c().getStartHour();
        int startMinute = c47Var.c().getStartMinute();
        calendar.set(11, startHour);
        calendar.set(12, startMinute);
        calendar.set(13, 0);
        calendar.set(14, 0);
        if (calendar.before(Calendar.getInstance())) {
            calendar.add(5, 1);
        }
        return calendar;
    }

    public final void a() {
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putBoolean("KEY_SCHEDULE_ENABLED", false).apply();
        rs9.s(true);
        Object systemService = contextC.getSystemService("alarm");
        systemService.getClass();
        PendingIntent broadcast = PendingIntent.getBroadcast(contextC, 0, new Intent(contextC, (Class<?>) AlarmReceiver.class), 67108864);
        Log.i(this.a, "cancelAlarm: Cancelling alarm");
        ((AlarmManager) systemService).cancel(broadcast);
        ComponentName componentName = new ComponentName(contextC, (Class<?>) BootReceiver.class);
        g00 g00Var = g00.a;
        g00.r().setComponentEnabledSetting(componentName, 2, 1);
    }

    public final void c() {
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            SharedPreferences.Editor editor = cz4.k;
            if (editor == null) {
                pe4.F("editor");
                throw null;
            }
            editor.putBoolean("KEY_SCHEDULE_ENABLED", true).apply();
            rs9.s(true);
            Object systemService = contextC.getSystemService("alarm");
            systemService.getClass();
            PendingIntent broadcast = PendingIntent.getBroadcast(contextC, 0, new Intent(contextC, (Class<?>) AlarmReceiver.class), 67108864);
            Calendar calendarB = b();
            Log.i(this.a, "updateAlarm: Setting next alarm ".concat(Const.i(calendarB.getTimeInMillis())));
            ((AlarmManager) systemService).setExactAndAllowWhileIdle(0, calendarB.getTimeInMillis(), broadcast);
            ComponentName componentName = new ComponentName(contextC, (Class<?>) BootReceiver.class);
            g00 g00Var = g00.a;
            g00.r().setComponentEnabledSetting(componentName, 1, 1);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, this.a, "updateAlarm: ".concat(io4.b(e)), null, 4, null);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        intent.getClass();
        vr6.i$default(vr6.INSTANCE, this.a, "onReceive: Alarm fired at time = ".concat(Const.i(System.currentTimeMillis())), null, 4, null);
        String str = this.a;
        str.getClass();
        SwiftApp.Companion companion = SwiftApp.d;
        Object systemService = SwiftApp.Companion.c().getSystemService("power");
        systemService.getClass();
        ((PowerManager) systemService).newWakeLock(1, str).acquire(60000L);
        c();
        String str2 = ScheduleService.p;
        a.b(false, ScheduleService.RunMode.Schedules.INSTANCE, null);
    }
}
