package defpackage;

import android.content.res.Configuration;
import android.os.LocaleList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class un {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (locales.equals(locales2)) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }

    public static h05 b(Configuration configuration) {
        return h05.a(configuration.getLocales().toLanguageTags());
    }

    public static void c(h05 h05Var) {
        LocaleList.setDefault(LocaleList.forLanguageTags(h05Var.a.a.toLanguageTags()));
    }

    public static void d(Configuration configuration, h05 h05Var) {
        configuration.setLocales(LocaleList.forLanguageTags(h05Var.a.a.toLanguageTags()));
    }
}
