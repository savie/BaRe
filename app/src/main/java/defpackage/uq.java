package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uq implements jl0 {
    public final String a;
    public final String b;

    public uq(String str, String str2) {
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uq)) {
            return false;
        }
        uq uqVar = (uq) obj;
        return this.a.equals(uqVar.a) && pe4.d(this.b, uqVar.b);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.b;
        str.getClass();
        return new uq(this.a, str);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return eq3.l("AppInfoItem(title=", this.a, ", subtitle=", this.b, ")");
    }
}
