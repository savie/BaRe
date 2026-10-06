package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sl1 {
    public static final gv7 e = new gv7(new dl(6));
    public static final gv7 f = new gv7(new el(6));
    public final LinkedHashMap a;
    public final gv7 b = new gv7(new dk(this, 17));
    public final gv7 c = new gv7(new ek(this, 14));
    public final gv7 d = new gv7(new ah(this, 16));

    public sl1(LinkedHashMap linkedHashMap) {
        this.a = linkedHashMap;
    }

    public final int a() {
        return ((Number) this.c.getValue()).intValue();
    }

    public final boolean equals(Object obj) {
        sl1 sl1Var = obj instanceof sl1 ? (sl1) obj : null;
        return sl1Var != null && a() == sl1Var.a();
    }

    public final int hashCode() {
        return Integer.hashCode(a());
    }

    public final String toString() {
        return "ColorItem(colorsMap=" + this.a + ")";
    }
}
