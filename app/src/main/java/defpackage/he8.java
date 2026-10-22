package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import java.text.ParseException;
import java.util.LinkedList;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class he8 extends pr1 {
    public static final Pattern f = Pattern.compile("^total \\d+$");
    public final boolean e;

    public he8(e23 e23Var, boolean z) {
        super("([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}月\\s+\\d{1,2}日)|(?:\\d{1,2}月\\s+\\d{1,2}))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}年))\\s(.*)");
        a(e23Var);
        this.e = z;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00de  */
    @Override // defpackage.h23
    public final g23 b(String str) {
        int i;
        boolean z;
        int iIndexOf;
        g23 g23Var = new g23();
        g23Var.c = str;
        if (!h(str)) {
            return null;
        }
        String strG = g(1);
        String strG2 = g(15);
        g(16);
        g(17);
        String strG3 = g(18);
        String str2 = g(19) + TokenAuthenticationScheme.SCHEME_DELIMITER + g(20);
        String strG4 = g(21);
        if (this.e) {
            strG4 = strG4.replaceFirst("^\\s+", "");
        }
        try {
            if (g(19).contains("月") && g(19).contains("日")) {
                p23 p23Var = new p23();
                p23Var.a(new e23("UNIX", "M'月' d'日' yyyy'年'", "M'月' d'日' HH:mm"));
                g23Var.e = p23Var.d(str2);
            } else if (!g(19).contains("月") || g(19).contains("日")) {
                g23Var.e = this.d.d(str2);
            } else {
                p23 p23Var2 = new p23();
                p23Var2.a(new e23("UNIX", "M'月' d yyyy", "M'月' d HH:mm"));
                g23Var.e = p23Var2.d(str2);
            }
        } catch (ParseException unused) {
        }
        char cCharAt = strG.charAt(0);
        if (cCharAt == '-') {
            i = 0;
            z = false;
        } else if (cCharAt != 'l') {
            switch (cCharAt) {
                case 'b':
                case SbaTarEntryInfo.TYPE_OTHER /* 99 */:
                    z = true;
                    i = 0;
                    break;
                case 'd':
                    i = 1;
                    z = false;
                    break;
                case 'e':
                    z = false;
                    i = 2;
                    break;
                case 'f':
                    i = 0;
                    z = false;
                    break;
                default:
                    z = false;
                    i = 3;
                    break;
            }
        } else {
            z = false;
            i = 2;
        }
        g23Var.a = i;
        int i2 = 0;
        int i3 = 4;
        while (i2 < 3) {
            g23Var.a(i2, 0, !g(i3).equals("-"));
            g23Var.a(i2, 1, !g(i3 + 1).equals("-"));
            String strG5 = g(i3 + 2);
            g23Var.a(i2, 2, (strG5.equals("-") || Character.isUpperCase(strG5.charAt(0))) ? false : true);
            i2++;
            i3 += 4;
        }
        if (!z) {
            try {
                Integer.parseInt(strG2);
            } catch (NumberFormatException unused2) {
            }
        }
        try {
            g23Var.b = Long.parseLong(strG3);
        } catch (NumberFormatException unused3) {
        }
        if (i != 2 || (iIndexOf = strG4.indexOf(" -> ")) == -1) {
            g23Var.d = strG4;
        } else {
            g23Var.d = strG4.substring(0, iIndexOf);
            strG4.substring(iIndexOf + 4);
        }
        return g23Var;
    }

    @Override // defpackage.h23
    public final void c(LinkedList linkedList) {
        linkedList.removeIf(new r64(1));
    }

    @Override // defpackage.pr1
    public final e23 f() {
        return new e23("UNIX", "MMM d yyyy", "MMM d HH:mm");
    }
}
