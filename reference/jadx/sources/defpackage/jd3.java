package defpackage;

import android.content.SharedPreferences;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jd3 implements od3 {
    public static final jd3 a = new jd3();

    @Override // defpackage.od3
    public final nd3 a() {
        String string = id3.All.toString();
        Object obj = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("key_filter_app_enabled", string);
            if (string != null) {
                Iterator it = ((z3) id3.getEntries()).iterator();
                while (true) {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        break;
                    }
                    Object next = w3Var.next();
                    if (pe4.d(((id3) next).toString(), string)) {
                        obj = next;
                        break;
                    }
                }
                id3 id3Var = (id3) obj;
                if (id3Var != null) {
                    return id3Var;
                }
            }
            return id3.All;
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.od3
    public final nd3 c() {
        return id3.All;
    }

    @Override // defpackage.od3
    public final String d() {
        return "key_filter_app_enabled";
    }
}
