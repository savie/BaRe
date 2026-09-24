package org.swiftapps.swiftbackup.home.schedule.data;

import android.content.SharedPreferences;
import com.google.gson.reflect.TypeToken;
import defpackage.cz4;
import defpackage.dj7;
import defpackage.gv7;
import defpackage.pe4;
import defpackage.w14;
import defpackage.xs1;
import defpackage.xx3;
import java.io.StringReader;
import java.lang.reflect.Type;
import java.text.DateFormat;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o {
    public static String a(long j) {
        String strS = Const.s(j);
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                string = sharedPreferences.getString("app_locale", null);
                return dj7.k(strS, "\n", DateFormat.getDateTimeInstance(0, 3, (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a()).format(Long.valueOf(j)));
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006b  */
    public static ScheduleLastRunDetails b(String str) {
        String simpleName;
        String string;
        Object objB;
        str.getClass();
        String strConcat = c(str).concat("_type");
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            simpleName = sharedPreferences.getString(strConcat, null);
            if (simpleName == null) {
                simpleName = ScheduleLastRunDetails.NeverRun.class.getSimpleName();
            }
            Class cls = (Class) ScheduleLastRunDetails.storedTypeClasses.get(simpleName);
            if (cls == null) {
                return null;
            }
            gv7 gv7Var = w14.a;
            ScheduleLastRunDetails.Companion.getClass();
            String strC = c(str);
            try {
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string = sharedPreferences2.getString(strC, null);
                    if (string == null) {
                        objB = null;
                    } else {
                        if (string.length() <= 0) {
                            string = null;
                        }
                        if (string != null) {
                            gv7 gv7Var2 = w14.a;
                            objB = w14.c().b(new StringReader(string), TypeToken.get((Type) cls));
                        } else {
                            objB = null;
                        }
                    }
                    if (objB == null || !(objB instanceof ScheduleLastRunDetails)) {
                        return null;
                    }
                    return (ScheduleLastRunDetails) objB;
                } catch (Exception unused) {
                }
            } catch (ClassCastException unused2) {
                string = null;
            }
        } catch (ClassCastException unused3) {
            simpleName = null;
        }
    }

    public static String c(String str) {
        return xs1.j("schedule_last_run_msg_", str);
    }

    public static void d(String str, ScheduleLastRunDetails scheduleLastRunDetails) {
        str.getClass();
        String strC = c(str);
        String simpleName = scheduleLastRunDetails.getClass().getSimpleName();
        String strConcat = strC.concat("_type");
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putString(strConcat, simpleName).apply();
        gv7 gv7Var = w14.a;
        w14.h(scheduleLastRunDetails, strC);
    }
}
