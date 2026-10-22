package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import java.text.ParseException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d55 extends pr1 {
    /* JADX WARN: Code duplicated, block: B:12:0x0061  */
    /* JADX WARN: Code duplicated, block: B:15:0x006a  */
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
        String strG2 = g(20);
        String str2 = g(21) + TokenAuthenticationScheme.SCHEME_DELIMITER + g(22);
        String strG3 = g(23);
        String strG4 = g(24);
        try {
            g23Var.e = this.d.d(str2);
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
                Integer.parseInt("0");
            } catch (NumberFormatException unused2) {
            }
        }
        try {
            g23Var.b = Long.parseLong(strG2);
        } catch (NumberFormatException unused3) {
        }
        if (strG4 == null) {
            g23Var.d = strG3;
        } else {
            String strJ = eq3.j(strG3, strG4);
            if (i != 2 || (iIndexOf = strJ.indexOf(" -> ")) == -1) {
                g23Var.d = strJ;
            } else {
                g23Var.d = strJ.substring(0, iIndexOf);
                strJ.substring(iIndexOf + 4);
            }
        }
        return g23Var;
    }

    @Override // defpackage.pr1
    public final e23 f() {
        return new e23("UNIX", "MMM d yyyy", "MMM d HH:mm");
    }
}
