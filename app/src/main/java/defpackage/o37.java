package defpackage;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import java.util.Arrays;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.NotificationHelper;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o37 {
    public static boolean a() {
        if (!b67.d()) {
            return true;
        }
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            return ((AlarmManager) SwiftApp.Companion.c().getSystemService(AlarmManager.class)).canScheduleExactAlarms();
        } catch (Throwable th) {
            vr6.e$default(vr6.INSTANCE, "ScheduleHelper", "canScheduleExactAlarms", th, null, 8, null);
            Const.g("ScheduleHelper.canScheduleExactAlarms: ".concat(io4.b(th)), true);
            throw null;
        }
    }

    public static boolean b() {
        boolean z;
        if (!a()) {
            mp6 mp6Var = mp6.a;
            if (mp6.f()) {
                SwiftApp.Companion companion = SwiftApp.d;
                String packageName = SwiftApp.Companion.c().getPackageName();
                packageName.getClass();
                eu euVar = eu.allow;
                euVar.getClass();
                boolean z2 = g42.a;
                String string = euVar.toString();
                string.getClass();
                mp6Var.j(true, new String[]{String.format(g42.d(), Arrays.copyOf(new Object[]{"set", packageName, "android:schedule_exact_alarm", string}, 4))}, ip6.SHIZUKU);
            }
        }
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                z = sharedPreferences.getBoolean("KEY_SCHEDULE_ENABLED", false);
                return z && V.INSTANCE.getA() && a();
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    public static void c(String str, boolean z) {
        boolean z2;
        str.getClass();
        vr6.e$default(vr6.INSTANCE, "ScheduleHelper", "Notifying schedule error, ".concat(str), null, 4, null);
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z2 = sharedPreferences.getBoolean("play_notification_sounds", true);
            String str2 = !z2 ? "task_completion_channel_silent" : "task_completion_channel_error";
            SwiftApp.Companion companion = SwiftApp.d;
            wo5 wo5Var = new wo5(SwiftApp.Companion.c(), str2);
            wo5Var.c(16);
            wo5Var.r = SwiftApp.Companion.c().getColor(R.color.acnt);
            Notification notification = wo5Var.u;
            notification.icon = R.drawable.ic_stat;
            wo5Var.e = wo5.b(SwiftApp.Companion.c().getString(R.string.schedule_error_notification_title));
            wo5Var.f = wo5.b(str);
            c00 c00Var = new c00(wo5Var);
            c00Var.c = wo5.b(str);
            wo5Var.e(c00Var);
            notification.vibrate = new long[]{500};
            wo5Var.i = 0;
            Intent launchIntentForPackage = SwiftApp.Companion.c().getPackageManager().getLaunchIntentForPackage(SwiftApp.Companion.c().getPackageName());
            if (launchIntentForPackage != null) {
                launchIntentForPackage.setPackage(null);
                launchIntentForPackage.setFlags(270532608);
                wo5Var.g = PendingIntent.getActivity(SwiftApp.Companion.c(), 0, launchIntentForPackage, 201326592);
            }
            if (z) {
                Context contextC = SwiftApp.Companion.c();
                int i = ShortcutsActivity.P;
                wo5Var.b.add(new vo5(R.drawable.ic_shortcut_schedule_icon, dj7.g(R.string.run_schedule_now), PendingIntent.getActivity(contextC, 0, ye7.a("scheduled_backup"), 201326592)));
            }
            if (z2) {
                NotificationHelper.g(wo5Var, true);
            }
            NotificationHelper.d().notify(302, wo5Var.a());
        } catch (ClassCastException unused) {
            z2 = true;
        }
    }

    public static void d() {
        boolean z;
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.schedule_fgs_quota_notification_message);
        vr6.e$default(vr6.INSTANCE, "ScheduleHelper", "Notifying schedule FGS quota error", null, 4, null);
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("play_notification_sounds", true);
            wo5 wo5Var = new wo5(SwiftApp.Companion.c(), !z ? "task_completion_channel_silent" : "task_completion_channel_error");
            wo5Var.c(16);
            wo5Var.r = SwiftApp.Companion.c().getColor(R.color.acnt);
            Notification notification = wo5Var.u;
            notification.icon = R.drawable.ic_stat;
            wo5Var.e = wo5.b(SwiftApp.Companion.c().getString(R.string.schedule_fgs_quota_notification_title));
            wo5Var.f = wo5.b(strG);
            c00 c00Var = new c00(wo5Var);
            c00Var.c = wo5.b(strG);
            wo5Var.e(c00Var);
            notification.vibrate = new long[]{500};
            wo5Var.i = 0;
            Context contextC = SwiftApp.Companion.c();
            int i = ShortcutsActivity.P;
            PendingIntent activity = PendingIntent.getActivity(contextC, 0, ye7.a("scheduled_backup"), 201326592);
            wo5Var.b.add(new vo5(R.drawable.ic_shortcut_schedule_icon, dj7.g(R.string.run_schedule_now), activity));
            wo5Var.g = activity;
            if (z) {
                NotificationHelper.g(wo5Var, true);
            }
            NotificationHelper.d().notify(302, wo5Var.a());
        } catch (ClassCastException unused) {
            z = true;
        }
    }
}
