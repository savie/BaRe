package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ho7 {
    public final String a;
    public final boolean b;
    public final boolean c;

    public ho7(String str, boolean z, boolean z2) {
        this.a = str;
        this.b = z;
        this.c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ho7)) {
            return false;
        }
        ho7 ho7Var = (ho7) obj;
        return pe4.d(this.a, ho7Var.a) && this.b == ho7Var.b && this.c == ho7Var.c;
    }

    public final int hashCode() {
        String str = this.a;
        return Boolean.hashCode(this.c) + fz5.h((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StorageSetupFailure(mainDir=");
        sb.append(this.a);
        sb.append(", isRemovable=");
        sb.append(this.b);
        sb.append(", offerInternalStorage=");
        return dj7.p(sb, this.c, ")");
    }
}
