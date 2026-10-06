package defpackage;

import android.content.SharedPreferences;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class md3 implements od3 {
    public static final md3 a = new md3();

    @Override // defpackage.od3
    public final nd3 a() {
        String string = ld3.All.toString();
        Object obj = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("key_filter_favorites", string);
            if (string != null) {
                Iterator it = ((z3) ld3.getEntries()).iterator();
                while (true) {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        break;
                    }
                    Object next = w3Var.next();
                    if (pe4.d(((ld3) next).toString(), string)) {
                        obj = next;
                        break;
                    }
                }
                ld3 ld3Var = (ld3) obj;
                if (ld3Var != null) {
                    return ld3Var;
                }
            }
            return ld3.All;
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.od3
    public final nd3 c() {
        return ld3.All;
    }

    @Override // defpackage.od3
    public final String d() {
        return "key_filter_favorites";
    }
}
