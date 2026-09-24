package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dj1 {
    public final List a;
    public final int b;

    public dj1(List list) {
        this.a = list;
        this.b = ((cj1) el1.S0(list)).a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dj1) && this.a.equals(((dj1) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ProbeTask(indexedTargets=" + this.a + ")";
    }
}
