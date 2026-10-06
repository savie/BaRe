package defpackage;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v07 {
    public final s07 a;
    public final u07 b;
    public final long c;
    public final int d;
    public final String e;
    public final ArrayList f;
    public final LinkedHashMap g;

    public v07(s07 s07Var, u07 u07Var, long j, int i, String str, ArrayList arrayList, LinkedHashMap linkedHashMap) {
        this.a = s07Var;
        this.b = u07Var;
        this.c = j;
        this.d = i;
        this.e = str;
        this.f = arrayList;
        this.g = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof v07) {
            v07 v07Var = (v07) obj;
            if (this.a == v07Var.a && this.b.equals(v07Var.b) && this.c == v07Var.c && this.d == v07Var.d && this.e.equals(v07Var.e) && this.f.equals(v07Var.f) && this.g.equals(v07Var.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.g.hashCode() + ((this.f.hashCode() + fz5.g(eq3.d(this.d, xs1.f(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31), 31), 31, this.e)) * 31);
    }

    public final String toString() {
        return "LoadedIndex(header=" + this.a + ", footer=" + this.b + ", fileSize=" + this.c + ", indexVersion=" + this.d + ", archiveMetadata=" + this.e + ", records=" + this.f + ", recordByName=" + this.g + ")";
    }
}
