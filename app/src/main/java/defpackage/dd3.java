package defpackage;

import android.content.SharedPreferences;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dd3 implements od3 {
    public static final dd3 a = new dd3();

    public static cd3 e() {
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
                return cd3.All;
            }
            String string = cd3.All.toString();
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string = sharedPreferences2.getString("key_user_apps_pref", string);
                if (string != null) {
                    Iterator it = ((z3) cd3.getEntries()).iterator();
                    while (true) {
                        w3 w3Var = (w3) it;
                        if (!w3Var.hasNext()) {
                            break;
                        }
                        Object next = w3Var.next();
                        if (pe4.d(((cd3) next).toString(), string)) {
                            obj = next;
                            break;
                        }
                    }
                    cd3 cd3Var = (cd3) obj;
                    if (cd3Var != null) {
                        return cd3Var;
                    }
                }
                return cd3.All;
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
        return cd3.All;
    }

    @Override // defpackage.od3
    public final String d() {
        return "key_user_apps_pref";
    }

    @Override // defpackage.od3
    public final void reset() {
        super.reset();
        ge3.a.reset();
    }
}
