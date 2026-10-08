package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w07 {
    public final int a;
    public final String b;
    public final ArrayList c;

    public w07(int i, String str, ArrayList arrayList) {
        this.a = i;
        this.b = str;
        this.c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w07)) {
            return false;
        }
        w07 w07Var = (w07) obj;
        return this.a == w07Var.a && this.b.equals(w07Var.b) && this.c.equals(w07Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + fz5.g(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        return "ParsedIndex(version=" + this.a + ", archiveMetadata=" + this.b + ", records=" + this.c + ")";
    }
}
