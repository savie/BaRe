package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l81 implements Comparable, Serializable {
    public String a;
    public Class b;
    public int c;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.a.compareTo(((l81) obj).a);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass() == l81.class && ((l81) obj).b == this.b;
    }

    public final int hashCode() {
        return this.c;
    }

    public final String toString() {
        return this.a;
    }
}
