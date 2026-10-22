package defpackage;

import android.app.LocaleManager;
import android.content.SharedPreferences;
import android.os.LocaleList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j05 {
    public static void a(Locale locale, boolean z) {
        e(locale);
        kv4.b(locale);
        f(locale);
        d45.b.getClass();
        if (d45.a() != null) {
            dz5 dz5Var = dz5.a;
            if (dz5.n() && dz5.k()) {
                kz4 kz4Var = kz4.g;
                if (kz4Var.b || !kz4Var.c.isEmpty()) {
                    dv.i(kz4Var, true, null, true, false, 10);
                }
            }
            ua1 ua1Var = ua1.g;
            if (ua1Var.b || !ua1Var.c.isEmpty()) {
                dv.i(ua1Var, true, null, true, false, 10);
            }
        }
        if (z) {
            ha7.a.c(AppSettings.Companion.withSavedSettings());
        }
        vr6.i$default(vr6.INSTANCE, "LocaleManager", "Locale updated to " + locale, null, 4, null);
    }

    public static Locale b() {
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                string = sharedPreferences.getString("app_locale", null);
                return (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a();
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
        }
    }

    public static void c(LocaleList localeList) {
        if (b67.e()) {
            List listM = xx3.m();
            ArrayList arrayList = new ArrayList(hl1.G0(listM, 10));
            Iterator it = listM.iterator();
            while (it.hasNext()) {
                arrayList.add(((is4) it.next()).a().toString());
            }
            Locale firstMatch = localeList.getFirstMatch((String[]) arrayList.toArray(new String[0]));
            if (firstMatch != null) {
                String language = firstMatch.getLanguage();
                language.getClass();
                String country = firstMatch.getCountry();
                country.getClass();
                Locale localeA = xx3.i(language, country).a();
                if (localeA.equals(b())) {
                    return;
                }
                e(localeA);
                vr6.i$default(vr6.INSTANCE, "LocaleManager", "Locale updated (via System) to " + localeA, null, 4, null);
            }
        }
    }

    public static void d(SwiftApp swiftApp) {
        Locale localeB;
        LocaleList applicationLocales;
        if (b67.e()) {
            if (b67.e()) {
                SwiftApp.Companion companion = SwiftApp.d;
                applicationLocales = ((LocaleManager) SwiftApp.Companion.c().getSystemService(LocaleManager.class)).getApplicationLocales();
                applicationLocales.getClass();
            } else {
                applicationLocales = LocaleList.getEmptyLocaleList();
                applicationLocales.getClass();
            }
            c(applicationLocales);
            localeB = b();
        } else {
            localeB = b();
        }
        Locale locale = localeB;
        try {
            kv4.a(swiftApp, locale);
            f(locale);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "LocaleManager", "Error while initing Lingver", e, null, 8, null);
        }
        kv4.b(locale);
    }

    public static void e(Locale locale) {
        String strK = dj7.k(locale.getLanguage(), "_", locale.getCountry());
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString("app_locale", strK).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static void f(Locale locale) {
        if (b67.e()) {
            SwiftApp.Companion companion = SwiftApp.d;
            ((LocaleManager) SwiftApp.Companion.c().getSystemService(LocaleManager.class)).setApplicationLocales(new LocaleList(locale));
        }
    }
}
