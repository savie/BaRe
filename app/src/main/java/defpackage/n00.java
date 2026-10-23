package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n00 {
    public final v00 a;
    public final String b;
    public final boolean c;
    public final String d;

    public n00(v00 v00Var, String str, boolean z, String str2) {
        this.a = v00Var;
        this.b = str;
        this.c = z;
        this.d = str2;
    }

    public static n00 a(n00 n00Var, v00 v00Var, String str, boolean z, String str2, int i) {
        if ((i & 1) != 0) {
            v00Var = n00Var.a;
        }
        if ((i & 2) != 0) {
            str = n00Var.b;
        }
        if ((i & 4) != 0) {
            z = n00Var.c;
        }
        if ((i & 8) != 0) {
            str2 = n00Var.d;
        }
        n00Var.getClass();
        return new n00(v00Var, str, z, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n00)) {
            return false;
        }
        n00 n00Var = (n00) obj;
        return pe4.d(this.a, n00Var.a) && this.b.equals(n00Var.b) && this.c == n00Var.c && pe4.d(this.d, n00Var.d);
    }

    public final int hashCode() {
        v00 v00Var = this.a;
        int iH = fz5.h(fz5.g((v00Var == null ? 0 : v00Var.hashCode()) * 31, 31, this.b), 31, this.c);
        String str = this.d;
        return iH + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "State(snapshot=" + this.a + ", searchQuery=" + this.b + ", isLoading=" + this.c + ", errorMessage=" + this.d + ")";
    }
}
