package defpackage;

import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cp0 implements Serializable {
    public final String a;
    public final String b;

    public cp0(String str, String str2) {
        Objects.requireNonNull(str, "Name");
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof cp0) {
            cp0 cp0Var = (cp0) obj;
            if (this.a.equalsIgnoreCase(cp0Var.a) && Objects.equals(this.b, cp0Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.a;
        return l73.r(l73.r(17, str == null ? null : str.toLowerCase(Locale.ROOT)), this.b);
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
