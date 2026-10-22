package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fi7 {
    public final String a;
    public final String b;
    public final String c;

    public fi7(fi7 fi7Var, String str) {
        this.a = fi7Var.a;
        if (!l73.u(fi7Var.b)) {
            c6.f("Can only make child SmbPath of fully specified SmbPath");
            throw null;
        }
        this.b = fi7Var.b;
        if (!l73.u(fi7Var.c)) {
            this.c = a(str);
            return;
        }
        this.c = fi7Var.c + "\\" + a(str);
    }

    public static String a(String str) {
        if (!l73.u(str)) {
            return str;
        }
        String strReplace = str.replace('/', '\\');
        if (strReplace.charAt(0) == '\\') {
            return (strReplace.length() <= 1 || strReplace.charAt(1) != '\\') ? strReplace.substring(1) : strReplace.substring(2);
        }
        return strReplace;
    }

    public final String b() {
        StringBuilder sb = new StringBuilder("\\\\");
        sb.append(this.a);
        String str = this.b;
        if (str != null && !str.isEmpty()) {
            if (str.charAt(0) != '\\') {
                sb.append("\\");
            }
            sb.append(str);
            String str2 = this.c;
            if (l73.u(str2)) {
                sb.append("\\");
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && fi7.class == obj.getClass()) {
            fi7 fi7Var = (fi7) obj;
            if (w13.h(this.a, fi7Var.a) && w13.h(this.b, fi7Var.b) && w13.h(this.c, fi7Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c});
    }

    public final String toString() {
        return b();
    }

    public fi7(String str, String str2, String str3) {
        this.b = str2;
        this.a = str;
        this.c = a(str3);
    }
}
