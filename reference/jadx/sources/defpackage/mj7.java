package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mj7 {
    public final String a;
    public final String b;

    public mj7(String str, String str2) {
        str.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mj7)) {
            return false;
        }
        mj7 mj7Var = (mj7) obj;
        return pe4.d(this.a, mj7Var.a) && this.b.equals(mj7Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return eq3.l("StagedApk(installName=", this.a, ", path=", this.b, ")");
    }
}
