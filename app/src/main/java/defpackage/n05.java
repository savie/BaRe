package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n05 extends qo0 {
    public final ex6 e = new ex6();
    public boolean f;
    public ArrayList g;
    public final gv7 h;
    public final m05 i;

    public n05() {
        gv7 gv7Var = new gv7(new qm(14));
        this.h = gv7Var;
        m05 m05Var = new m05(this);
        this.i = m05Var;
        ((zc2) gv7Var.getValue()).c(m05Var);
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        super.b();
        zc2 zc2Var = re3.a;
        re3.n((zc2) this.h.getValue(), this.i);
    }

    public final void j() {
        List listL = xx3.l();
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            Locale localeA = (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a();
            String language = localeA.getLanguage();
            language.getClass();
            String country = localeA.getCountry();
            country.getClass();
            this.e.k(new fm7(listL, sz8.Y(xx3.i(language, country).toString()), false, (String) null, 28));
        } catch (ClassCastException unused) {
        }
    }
}
