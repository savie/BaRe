package defpackage;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h63 {
    public final String a;
    public final Map b;

    public h63(Map map, String str) {
        this.a = str;
        this.b = map;
    }

    public static h63 a(String str) {
        return new h63(Collections.EMPTY_MAP, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h63)) {
            return false;
        }
        h63 h63Var = (h63) obj;
        return this.a.equals(h63Var.a) && this.b.equals(h63Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.a + ", properties=" + this.b.values() + "}";
    }
}
