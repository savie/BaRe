package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hv4 {
    public static final Locale c;
    public static hv4 d;
    public Locale a = c;
    public final c00 b;

    static {
        Locale locale = Locale.getDefault();
        locale.getClass();
        c = locale;
    }

    public hv4(c00 c00Var, ge geVar) {
        this.b = c00Var;
    }

    public final void a(Context context, Locale locale) throws JSONException {
        locale.getClass();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("language", locale.getLanguage());
        jSONObject.put("country", locale.getCountry());
        jSONObject.put("variant", locale.getVariant());
        ((SharedPreferences) this.b.b).edit().putString("language_key", jSONObject.toString()).apply();
        ge.C(context, locale);
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != context) {
            applicationContext.getClass();
            ge.C(applicationContext, locale);
        }
    }
}
