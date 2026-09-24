package defpackage;

import android.os.Build;
import com.nimbusds.jose.crypto.PasswordBasedDecrypter;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class bx0 {
    public static final /* synthetic */ int a = 0;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            h6.c(30);
        }
        if (i >= 30) {
            h6.c(31);
        }
        if (i >= 30) {
            h6.c(33);
        }
        if (i >= 30) {
            h6.c(PasswordBasedDecrypter.MAX_ALLOWED_ITERATION_COUNT);
        }
    }

    public static final boolean a(String str) {
        String str2 = Build.VERSION.CODENAME;
        Integer num = 0;
        str2.getClass();
        if (!"REL".equals(str2)) {
            Locale locale = Locale.ROOT;
            String upperCase = str2.toUpperCase(locale);
            upperCase.getClass();
            Integer num2 = upperCase.equals("BAKLAVA") ? num : null;
            String upperCase2 = str.toUpperCase(locale);
            upperCase2.getClass();
            num = upperCase2.equals("BAKLAVA") ? 0 : null;
            if (num2 == null || num == null) {
                if (num2 == null && num == null) {
                    String upperCase3 = str2.toUpperCase(locale);
                    upperCase3.getClass();
                    String upperCase4 = str.toUpperCase(locale);
                    upperCase4.getClass();
                    if (upperCase3.compareTo(upperCase4) >= 0) {
                        return true;
                    }
                } else if (num2 != null) {
                    return true;
                }
            } else if (num2.intValue() >= num.intValue()) {
                return true;
            }
        }
        return false;
    }
}
