package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bc1 implements jl0 {
    public final dd1 a;
    public final String b;
    public final String c;
    public final List d;

    public bc1(dd1 dd1Var, String str, String str2, List list) {
        this.a = dd1Var;
        this.b = str;
        this.c = str2;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bc1)) {
            return false;
        }
        bc1 bc1Var = (bc1) obj;
        return this.a == bc1Var.a && pe4.d(this.b, bc1Var.b) && pe4.d(this.c, bc1Var.c) && this.d.equals(bc1Var.d);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        return new bc1(this.a, this.b, this.c, this.d);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a.getConstant();
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        return this.d.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "CloudConnectItem(type=" + this.a + ", subtitle=" + this.b + ", warning=" + this.c + ", providerChips=" + this.d + ")";
    }
}
