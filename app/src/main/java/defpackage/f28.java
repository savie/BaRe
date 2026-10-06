package defpackage;

import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class f28 {
    public static h28 a(Integer num) {
        Object next;
        z3 z3Var = (z3) h28.getEntries();
        z3Var.getClass();
        w3 w3Var = new w3(z3Var);
        while (true) {
            if (!w3Var.hasNext()) {
                next = null;
                break;
            }
            next = w3Var.next();
            int themeId = ((h28) next).getThemeId();
            if (num != null && themeId == num.intValue()) {
                break;
            }
        }
        h28 h28Var = (h28) next;
        if (h28Var == null) {
            h28Var = h28.DEFAULT_THEME_MODE;
        }
        return h28Var.getValidatedMode();
    }

    public static h28 b() {
        int themeId = h28.DEFAULT_THEME_MODE.getThemeId();
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                themeId = sharedPreferences.getInt("app_theme_mode", themeId);
                return a(Integer.valueOf(themeId)).getValidatedMode();
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
        }
    }

    public static int c(k28 k28Var) {
        if (k28Var instanceof IntroActivity) {
            return R.style.IntroTheme;
        }
        if (k28Var instanceof HomeActivity) {
            return e() ? R.style.HomeThemeBlack : R.style.HomeThemeDark;
        }
        if (((Boolean) k28Var.f.getValue()).booleanValue()) {
            return R.style.SwiftThemeDark_Transparent;
        }
        return e() ? R.style.SwiftThemeBlack : R.style.SwiftThemeDark;
    }

    public static int d(k28 k28Var) {
        gv7 gv7Var = k28Var.f;
        int i = e28.a[b().ordinal()];
        if (i == 1) {
            if (k28Var instanceof IntroActivity) {
                return R.style.IntroTheme;
            }
            if (k28Var instanceof HomeActivity) {
                return R.style.HomeTheme;
            }
            return ((Boolean) gv7Var.getValue()).booleanValue() ? R.style.SwiftTheme_Transparent : R.style.SwiftTheme;
        }
        if (i == 2) {
            return c(k28Var);
        }
        if (i != 3) {
            q.j();
            return 0;
        }
        if (io4.e(k28Var)) {
            return c(k28Var);
        }
        if (k28Var instanceof IntroActivity) {
            return R.style.IntroTheme;
        }
        if (k28Var instanceof HomeActivity) {
            return R.style.HomeTheme;
        }
        return ((Boolean) gv7Var.getValue()).booleanValue() ? R.style.SwiftTheme_Transparent : R.style.SwiftTheme;
    }

    public static boolean e() {
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean("use_amoled_theme", false);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return false;
        }
    }
}
