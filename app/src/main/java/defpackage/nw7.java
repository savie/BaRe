package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nw7 {
    public final String a;
    public final String b;
    public final boolean c;
    public final int d;
    public final String e;
    public final int f;
    public final int g;

    public nw7(String str, String str2, boolean z, int i, String str3, int i2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = i;
        this.e = str3;
        this.f = i2;
        String upperCase = str2.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        this.g = nq7.Z(upperCase, "INT", false) ? 3 : (nq7.Z(upperCase, "CHAR", false) || nq7.Z(upperCase, "CLOB", false) || nq7.Z(upperCase, "TEXT", false)) ? 2 : nq7.Z(upperCase, "BLOB", false) ? 5 : (nq7.Z(upperCase, "REAL", false) || nq7.Z(upperCase, "FLOA", false) || nq7.Z(upperCase, "DOUB", false)) ? 4 : 1;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof nw7) {
                boolean z = this.d > 0;
                nw7 nw7Var = (nw7) obj;
                int i = nw7Var.f;
                if (z == (nw7Var.d > 0) && pe4.d(this.a, nw7Var.a) && this.c == nw7Var.c) {
                    String str = nw7Var.e;
                    int i2 = this.f;
                    String str2 = this.e;
                    if ((i2 != 1 || i != 2 || str2 == null || ji8.j(str2, str)) && ((i2 != 2 || i != 1 || str == null || ji8.j(str, str2)) && ((i2 == 0 || i2 != i || (str2 == null ? str == null : ji8.j(str2, str))) && this.g == nw7Var.g))) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((((this.a.hashCode() * 31) + this.g) * 31) + (this.c ? 1231 : 1237)) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |Column {\n            |   name = '");
        sb.append(this.a);
        sb.append("',\n            |   type = '");
        sb.append(this.b);
        sb.append("',\n            |   affinity = '");
        sb.append(this.g);
        sb.append("',\n            |   notNull = '");
        sb.append(this.c);
        sb.append("',\n            |   primaryKeyPosition = '");
        sb.append(this.d);
        sb.append("',\n            |   defaultValue = '");
        String str = this.e;
        if (str == null) {
            str = "undefined";
        }
        sb.append(str);
        sb.append("'\n            |}\n        ");
        return oq7.K(oq7.M(sb.toString()));
    }
}
