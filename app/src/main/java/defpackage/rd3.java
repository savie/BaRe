package defpackage;

import android.content.SharedPreferences;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rd3 implements od3 {
    public static final rd3 a = new rd3();

    @Override // defpackage.od3
    public final nd3 a() {
        String string = qd3.All.toString();
        Object obj = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("key_filter_app_install", string);
            if (string != null) {
                Iterator it = ((z3) qd3.getEntries()).iterator();
                while (true) {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        break;
                    }
                    Object next = w3Var.next();
                    if (pe4.d(((qd3) next).toString(), string)) {
                        obj = next;
                        break;
                    }
                }
                qd3 qd3Var = (qd3) obj;
                if (qd3Var != null) {
                    return qd3Var;
                }
            }
            return qd3.All;
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.od3
    public final nd3 c() {
        return qd3.All;
    }

    @Override // defpackage.od3
    public final String d() {
        return "key_filter_app_install";
    }
}
