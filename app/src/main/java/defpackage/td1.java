package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class td1 {
    public final long a;
    public final ArrayList b;
    public final boolean c;

    public td1(long j, ArrayList arrayList, boolean z) {
        this.a = j;
        this.b = arrayList;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof td1)) {
            return false;
        }
        td1 td1Var = (td1) obj;
        return this.a == td1Var.a && this.b.equals(td1Var.b) && this.c == td1Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + ((this.b.hashCode() + (Long.hashCode(this.a) * 31)) * 31);
    }

    public final String toString() {
        return "Plan(fileBytes=" + this.a + ", orderedIds=" + this.b + ", useProviderPipelineSettings=" + this.c + ")";
    }
}
