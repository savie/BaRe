package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dp0 implements Cloneable, Serializable {
    public final String a;
    public final String b;

    public dp0(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final Object clone() {
        return super.clone();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dp0)) {
            return false;
        }
        dp0 dp0Var = (dp0) obj;
        String str = dp0Var.b;
        boolean zEquals = this.a.equals(dp0Var.a);
        String str2 = this.b;
        if (zEquals && str2 == str) {
            return true;
        }
        return str2 != null && str2.equals(str);
    }

    public final int hashCode() {
        return wx3.t(wx3.t(17, this.a), this.b);
    }

    public final String toString() {
        String str = this.b;
        String str2 = this.a;
        if (str == null) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length() + 1);
        sb.append(str2);
        sb.append("=");
        sb.append(str);
        return sb.toString();
    }
}
