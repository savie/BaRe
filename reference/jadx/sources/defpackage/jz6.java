package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jz6 {
    public final String a;
    public final iz6 b;

    public jz6(String str, iz6 iz6Var) {
        this.a = str;
        this.b = iz6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jz6)) {
            return false;
        }
        jz6 jz6Var = (jz6) obj;
        return pe4.d(this.a, jz6Var.a) && this.b == jz6Var.b;
    }

    public final int hashCode() {
        String str = this.a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "ExtractResult(diagnostics=" + this.a + ", executionMode=" + this.b + ")";
    }
}
