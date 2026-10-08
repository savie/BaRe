package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.text.ParseException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tj5 extends pr1 {
    public final p23 e;

    public tj5(e23 e23Var) {
        a(e23Var);
        e23 e23Var2 = new e23("WINDOWS", "MM-dd-yy kk:mm", null);
        e23Var2.b = "MM-dd-yy kk:mm";
        p23 p23Var = new p23();
        this.e = p23Var;
        p23Var.a(e23Var2);
    }

    @Override // defpackage.h23
    public final g23 b(String str) {
        if (h(str)) {
            g23 g23Var = new g23();
            g23Var.c = str;
            String str2 = g(1) + TokenAuthenticationScheme.SCHEME_DELIMITER + g(2);
            String strG = g(3);
            String strG2 = g(4);
            String strG3 = g(5);
            if (strG3 != null && !strG3.equals(".") && !strG3.equals("..")) {
                try {
                    try {
                        g23Var.e = this.d.d(str2);
                    } catch (ParseException unused) {
                    }
                } catch (ParseException unused2) {
                    g23Var.e = this.e.d(str2);
                }
                g23Var.d = strG3;
                if ("<DIR>".equals(strG)) {
                    g23Var.a = 1;
                    g23Var.b = 0L;
                } else {
                    g23Var.a = 0;
                    if (strG2 != null) {
                        g23Var.b = Long.parseLong(strG2);
                    }
                }
                return g23Var;
            }
        }
        return null;
    }

    @Override // defpackage.pr1
    public final e23 f() {
        return new e23("WINDOWS", "MM-dd-yy hh:mma", null);
    }
}
