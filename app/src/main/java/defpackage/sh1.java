package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sh1 extends wh1 {
    public final String a;
    public final int b;
    public final long c;

    public sh1(String str, long j, int i) {
        str.getClass();
        this.a = str;
        this.b = i;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sh1)) {
            return false;
        }
        sh1 sh1Var = (sh1) obj;
        return pe4.d(this.a, sh1Var.a) && this.b == sh1Var.b && this.c == sh1Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + eq3.d(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return dj7.h(this.c, ")", dj7.v("ConfirmDelete(providerTitle=", this.a, ", selectedCount=", this.b, ", selectedBytes="));
    }
}
