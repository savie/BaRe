package defpackage;

import java.io.Serializable;
import java.net.IDN;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e64 implements gk5, Serializable {
    public final String a;
    public final String b;
    public final int c;

    public e64(String str, int i) {
        if (i < -1 || i > 65535) {
            throw new IllegalArgumentException(String.format("%s: %d is out of range [%d, %d]", "Port number(Use -1 to specify the scheme default port)", Integer.valueOf(i), -1, 65535));
        }
        if (str.length() >= 4 && ((str.charAt(0) == 'x' || str.charAt(0) == 'X') && ((str.charAt(1) == 'n' || str.charAt(1) == 'N') && str.charAt(2) == '-' && str.charAt(3) == '-'))) {
            str = IDN.toUnicode(str);
        }
        this.a = str;
        this.c = i;
        this.b = str == null ? null : str.toLowerCase(Locale.ROOT);
    }

    public static void b(StringBuilder sb, gk5 gk5Var) {
        String strA = gk5Var.a();
        if (!ac4.b(strA)) {
            int length = strA.length();
            int i = 0;
            while (true) {
                if (i >= length) {
                    sb.append(strA);
                    break;
                } else {
                    if (strA.charAt(i) > 127) {
                        sb.append(IDN.toASCII(strA));
                        break;
                    }
                    i++;
                }
            }
        } else {
            sb.append('[');
            sb.append(strA);
            sb.append(']');
        }
        if (gk5Var.getPort() != -1) {
            sb.append(":");
            sb.append(gk5Var.getPort());
        }
    }

    @Override // defpackage.gk5
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e64) {
            e64 e64Var = (e64) obj;
            if (this.b.equals(e64Var.b) && this.c == e64Var.c) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.gk5
    public final int getPort() {
        return this.c;
    }

    public final int hashCode() {
        return (l73.r(17, this.b) * 37) + this.c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        b(sb, this);
        return sb.toString();
    }
}
