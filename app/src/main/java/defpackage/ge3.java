package defpackage;

import android.content.SharedPreferences;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ge3 implements od3 {
    public static final ge3 a = new ge3();

    public static fe3 e() {
        Object obj = null;
        boolean z = false;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            if (!z) {
                return fe3.All;
            }
            String string = fe3.All.toString();
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string = sharedPreferences2.getString("key_system_apps_pref", string);
                if (string != null) {
                    Iterator it = ((z3) fe3.getEntries()).iterator();
                    while (true) {
                        w3 w3Var = (w3) it;
                        if (!w3Var.hasNext()) {
                            break;
                        }
                        Object next = w3Var.next();
                        if (pe4.d(((fe3) next).toString(), string)) {
                            obj = next;
                            break;
                        }
                    }
                    fe3 fe3Var = (fe3) obj;
                    if (fe3Var != null) {
                        return fe3Var;
                    }
                }
                return fe3.All;
            } catch (ClassCastException unused) {
            }
        } catch (ClassCastException unused2) {
        }
    }

    @Override // defpackage.od3
    public final /* bridge */ /* synthetic */ nd3 a() {
        return e();
    }

    @Override // defpackage.od3
    public final nd3 c() {
        return fe3.All;
    }

    @Override // defpackage.od3
    public final String d() {
        return "key_system_apps_pref";
    }
}
