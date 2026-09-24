package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.File;
import java.text.ParseException;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sq5 extends pr1 {
    public sq5(e23 e23Var) {
        super("(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+((\\S+\\s*)+)?");
        a(e23Var);
    }

    public static boolean i(String str) {
        return str == null || str.isEmpty();
    }

    @Override // defpackage.h23
    public final g23 b(String str) {
        String str2;
        int i;
        int iLastIndexOf;
        g23 g23Var = new g23();
        g23Var.c = str;
        if (!h(str)) {
            return null;
        }
        g(1);
        String strG = g(2);
        int i2 = 3;
        if (i(g(3)) && i(g(4))) {
            str2 = "";
        } else {
            str2 = g(3) + TokenAuthenticationScheme.SCHEME_DELIMITER + g(4);
        }
        String strG2 = g(5);
        String strG3 = g(6);
        try {
            g23Var.e = this.d.d(str2);
        } catch (ParseException unused) {
        }
        if (!strG2.equalsIgnoreCase("*STMF")) {
            if (!strG2.equalsIgnoreCase("*DIR")) {
                if (strG2.equalsIgnoreCase("*FILE")) {
                    if (strG3 == null || !strG3.toUpperCase(Locale.ROOT).endsWith(".SAVF")) {
                        return null;
                    }
                } else if (!strG2.equalsIgnoreCase("*MEM")) {
                    i = 1;
                } else {
                    if (i(strG3) || !i(strG) || !i(str2)) {
                        return null;
                    }
                    strG3 = strG3.replace('/', File.separatorChar);
                }
                i = 0;
            } else {
                if (i(strG) || i(strG3)) {
                    return null;
                }
                i = 1;
            }
            i2 = i;
        } else {
            if (i(strG) || i(strG3)) {
                return null;
            }
            i = 1;
            i2 = 0;
        }
        g23Var.a = i2;
        try {
            g23Var.b = Long.parseLong(strG);
        } catch (NumberFormatException unused2) {
        }
        if (strG3.endsWith("/")) {
            strG3 = xs1.g(1, 0, strG3);
        }
        if (i != 0 && (iLastIndexOf = strG3.lastIndexOf(47)) > -1) {
            strG3 = strG3.substring(iLastIndexOf + 1);
        }
        g23Var.d = strG3;
        return g23Var;
    }

    @Override // defpackage.pr1
    public final e23 f() {
        return new e23("OS/400", "yy/MM/dd HH:mm:ss", null);
    }
}
