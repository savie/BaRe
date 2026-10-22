package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Locale;
import org.json.JSONException;
import com.bareapps.barebackup.BareApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class kv4 {
    public static final boolean a = !b67.e();

    public static void a(BareApp bareApp, Locale locale) throws JSONException {
        if (a) {
            Locale locale2 = hv4.c;
            c00 c00Var = new c00(bareApp, locale);
            if (hv4.d != null) {
                l0.e("Already initialized");
                return;
            }
            hv4 hv4Var = new hv4(c00Var, new ge());
            bareApp.registerActivityLifecycleCallbacks(new iv4(new fv4(hv4Var)));
            bareApp.registerComponentCallbacks(new jv4(new gv4(0, hv4Var, bareApp)));
            hv4Var.a(bareApp, ((SharedPreferences) c00Var.b).getBoolean("follow_system_locale_key", false) ? hv4Var.a : c00Var.h());
            hv4.d = hv4Var;
        }
    }

    public static void b(Locale locale) throws JSONException {
        if (a) {
            hv4 hv4Var = hv4.d;
            if (hv4Var == null) {
                l0.e("Lingver should be initialized first");
                return;
            }
            BareApp.Companion companion = BareApp.d;
            Context contextC = BareApp.Companion.c();
            ((SharedPreferences) hv4Var.b.b).edit().putBoolean("follow_system_locale_key", false).apply();
            hv4Var.a(contextC, locale);
        }
    }
}
