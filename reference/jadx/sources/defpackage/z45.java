package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.text.ParseException;
import java.util.LinkedList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z45 extends pr1 {
    public int e;
    public he8 f;

    @Override // defpackage.h23
    public final g23 b(String str) {
        int i = this.e;
        if (i == 0) {
            if (h(str)) {
                g23 g23Var = new g23();
                g23Var.c = str;
                String strG = g(2);
                String strG2 = g(1);
                g23Var.d = strG;
                if ("PS".equals(strG2)) {
                    g23Var.a = 0;
                    return g23Var;
                }
                if ("PO".equals(strG2) || "PO-E".equals(strG2)) {
                    g23Var.a = 1;
                    return g23Var;
                }
            } else {
                boolean zStartsWith = str.startsWith("Migrated");
                if (zStartsWith || str.startsWith("ARCIVE")) {
                    g23 g23Var2 = new g23();
                    g23Var2.c = str;
                    g23Var2.a = 3;
                    g23Var2.d = str.split("\\s+")[zStartsWith ? (char) 1 : (char) 5];
                    return g23Var2;
                }
            }
            return null;
        }
        if (i != 1) {
            if (i == 2) {
                return this.f.b(str);
            }
            if (i == 3) {
                return i(3, str);
            }
            if (i != 4) {
                return null;
            }
            return i(4, str);
        }
        g23 g23Var3 = new g23();
        if (!h(str)) {
            if (str == null || str.trim().isEmpty()) {
                return null;
            }
            g23Var3.c = str;
            g23Var3.d = str.split(TokenAuthenticationScheme.SCHEME_DELIMITER)[0];
            g23Var3.a = 0;
            return g23Var3;
        }
        g23Var3.c = str;
        String strG3 = g(1);
        String str2 = g(2) + TokenAuthenticationScheme.SCHEME_DELIMITER + g(3);
        g23Var3.d = strG3;
        g23Var3.a = 0;
        try {
            g23Var3.e = this.d.d(str2);
        } catch (ParseException unused) {
        }
        return g23Var3;
    }

    @Override // defpackage.h23
    public final void c(LinkedList linkedList) {
        if (linkedList == null || linkedList.isEmpty()) {
            return;
        }
        String str = (String) linkedList.get(0);
        if (str.contains("Volume") && str.contains("Dsname")) {
            this.e = 0;
            e(0, "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+(?:\\S+\\s+)?\\S+\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*");
        } else if (str.contains("Name") && str.contains("Id")) {
            this.e = 1;
            e(0, "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*");
        } else if (str.startsWith("total")) {
            this.e = 2;
            this.f = new he8(null, false);
        } else if (str.indexOf("Spool Files") >= 30) {
            this.e = 3;
            e(0, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*");
        } else if (!str.startsWith("JOBNAME") || str.indexOf("JOBID") <= 8) {
            this.e = -1;
        } else {
            this.e = 4;
            e(0, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*");
        }
        if (this.e != 3) {
            linkedList.remove(0);
        }
    }

    @Override // defpackage.pr1
    public final e23 f() {
        return new e23("MVS", "yyyy/MM/dd HH:mm", null);
    }

    public final g23 i(int i, String str) {
        if (!h(str)) {
            return null;
        }
        g23 g23Var = new g23();
        if (!g(i).equalsIgnoreCase("OUTPUT")) {
            return null;
        }
        g23Var.c = str;
        g23Var.d = g(2);
        g23Var.a = 0;
        return g23Var;
    }
}
