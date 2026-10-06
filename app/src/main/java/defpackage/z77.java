package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z77 implements Serializable {
    public static final hm4 c = hm4.b;
    public final String a;
    public volatile char[] b;

    public z77(String str) {
        Objects.requireNonNull(str, "Null String illegal for SerializedString");
        this.a = str;
    }

    public final char[] a() {
        char[] cArr = this.b;
        if (cArr != null) {
            return cArr;
        }
        hm4 hm4Var = c;
        String str = this.a;
        hm4Var.getClass();
        char[] cArrA = hm4.a(str);
        this.b = cArrA;
        return cArrA;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != z77.class) {
            return false;
        }
        return this.a.equals(((z77) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }
}
