package defpackage;

import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.home.schedule.data.GlobalScheduleError;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xy3 implements bt3 {
    @Override // defpackage.bt3
    public final Object invoke() {
        String string;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("saved_global_schedule_error", null);
            if (string != null) {
                if (string.length() <= 0) {
                    string = null;
                }
                if (string != null) {
                    gv7 gv7Var = w14.a;
                    return w14.c().c(string, GlobalScheduleError.class);
                }
            }
            return null;
        } catch (ClassCastException unused) {
            string = null;
        }
    }
}
