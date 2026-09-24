package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.text.ParseException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rq5 extends pr1 {
    @Override // defpackage.h23
    public final g23 b(String str) {
        g23 g23Var = new g23();
        if (!h(str)) {
            return null;
        }
        String strG = g(1);
        String strG2 = g(2);
        String strG3 = g(3);
        String str2 = g(4) + TokenAuthenticationScheme.SCHEME_DELIMITER + g(5);
        String strG4 = g(6);
        try {
            g23Var.e = this.d.d(str2);
        } catch (ParseException unused) {
        }
        if (strG3.trim().equals("DIR") || strG2.trim().equals("DIR")) {
            g23Var.a = 1;
        } else {
            g23Var.a = 0;
        }
        g23Var.d = strG4.trim();
        g23Var.b = Long.parseLong(strG.trim());
        return g23Var;
    }

    @Override // defpackage.pr1
    public final e23 f() {
        return new e23("OS/2", "MM-dd-yy HH:mm", null);
    }
}
