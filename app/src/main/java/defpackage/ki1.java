package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ki1 {
    public final String a;
    public final int b;
    public final boolean c;
    public final String d;

    public ki1(int i, String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = i;
        this.c = z;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ki1)) {
            return false;
        }
        ki1 ki1Var = (ki1) obj;
        return pe4.d(this.a, ki1Var.a) && this.b == ki1Var.b && this.c == ki1Var.c && pe4.d(this.d, ki1Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fz5.h(eq3.d(this.b, this.a.hashCode() * 31, 31), 31, this.c);
    }

    public final String toString() {
        StringBuilder sbV = dj7.v("CloudProviderDisplayDetails(title=", this.a, ", iconRes=", this.b, ", isProviderPresetIcon=");
        sbV.append(this.c);
        sbV.append(", iconContentDescription=");
        sbV.append(this.d);
        sbV.append(")");
        return sbV.toString();
    }
}
