package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cd8 implements gk5, Serializable {
    public final String a;
    public final e64 b;

    public cd8(String str, e64 e64Var) {
        this.a = str;
        this.b = e64Var;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0046  */
    /* JADX WARN: Code duplicated, block: B:28:0x007d  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c3  */
    public static cd8 b(CharSequence charSequence) {
        String strO;
        int i;
        sc6 sc6Var = new sc6(charSequence.length());
        String strO2 = zv1.o(charSequence, sc6Var, gd8.b);
        boolean z = false;
        String strO3 = null;
        if (!sc6Var.a() && charSequence.charAt(sc6Var.c) == '@') {
            sc6Var.b(sc6Var.c + 1);
            if (jm1.A(strO2)) {
            }
            if (!sc6Var.a() && charSequence.charAt(sc6Var.c) == '[') {
                z = true;
            }
            if (z) {
                sc6Var.b(sc6Var.c + 1);
                strO = zv1.o(charSequence, sc6Var, gd8.c);
                if (!sc6Var.a() || charSequence.charAt(sc6Var.c) != ']') {
                    throw gd8.a(charSequence, sc6Var, "Expected an IPv6 closing bracket ']'");
                }
                sc6Var.b(sc6Var.c + 1);
                if (!ac4.b(strO)) {
                    throw gd8.a(charSequence, sc6Var, "Expected an IPv6 address");
                }
            } else {
                strO = zv1.o(charSequence, sc6Var, gd8.d);
            }
            if (!sc6Var.a() && charSequence.charAt(sc6Var.c) == ':') {
                sc6Var.b(sc6Var.c + 1);
                strO3 = zv1.o(charSequence, sc6Var, gd8.a);
            }
            if (jm1.A(strO3)) {
                i = -1;
            } else {
                if (z && strO3.contains(":")) {
                    throw gd8.a(charSequence, sc6Var, "Expected IPv6 address to be enclosed in brackets");
                }
                try {
                    i = Integer.parseInt(strO3);
                } catch (NumberFormatException unused) {
                    throw gd8.a(charSequence, sc6Var, "Port is invalid");
                }
            }
            return new cd8(strO2, new e64(strO, i));
        }
        sc6Var.b(0);
        strO2 = null;
        if (!sc6Var.a()) {
            z = true;
        }
        if (z) {
            sc6Var.b(sc6Var.c + 1);
            strO = zv1.o(charSequence, sc6Var, gd8.c);
            if (!sc6Var.a()) {
            }
            throw gd8.a(charSequence, sc6Var, "Expected an IPv6 closing bracket ']'");
        }
        strO = zv1.o(charSequence, sc6Var, gd8.d);
        if (!sc6Var.a()) {
            sc6Var.b(sc6Var.c + 1);
            strO3 = zv1.o(charSequence, sc6Var, gd8.a);
        }
        if (jm1.A(strO3)) {
            if (z) {
            }
            i = Integer.parseInt(strO3);
        } else {
            i = -1;
        }
        return new cd8(strO2, new e64(strO, i));
    }

    @Override // defpackage.gk5
    public final String a() {
        return this.b.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof cd8) {
            cd8 cd8Var = (cd8) obj;
            if (Objects.equals(this.a, cd8Var.a) && Objects.equals(this.b, cd8Var.b)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.gk5
    public final int getPort() {
        return this.b.c;
    }

    public final int hashCode() {
        return l73.r(l73.r(17, this.a), this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        String str = this.a;
        if (str != null) {
            sb.append(str);
            sb.append("@");
        }
        e64.b(sb, this);
        return sb.toString();
    }
}
