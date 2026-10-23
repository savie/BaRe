package defpackage;

import android.content.SharedPreferences;
import java.util.Locale;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.jobs.AlarmReceiver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class q47 extends qo0 {
    public final AlarmReceiver e;
    public final ex6 f;
    public Locale g;

    /* JADX WARN: Multi-variable type inference failed */
    public q47() {
        SwiftApp.Companion companion = SwiftApp.d;
        this.e = (AlarmReceiver) SwiftApp.Companion.a().c.getValue();
        ex6 ex6Var = new ex6();
        this.f = ex6Var;
        ex6Var.k(k47.a);
        zn4 zn4Var = zn4.a;
        String string = null;
        zn4.b(null, new u01(this, 0 == true ? 1 : 0, 4));
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            this.g = (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a();
        } catch (ClassCastException unused) {
        }
    }

    public static void k(q47 q47Var, ScheduleData scheduleData) {
        q47Var.getClass();
        zn4.c(new qj3(scheduleData, q47Var, false));
    }

    public final void j(ScheduleItem.Type type) {
        type.getClass();
        zn4 zn4Var = zn4.a;
        zn4.c(new yq(8, type, this));
    }
}
