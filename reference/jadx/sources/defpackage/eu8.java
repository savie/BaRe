package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class eu8 extends gu8 {
    public final ds8 a;

    public eu8(ds8 ds8Var) {
        ds8Var.getClass();
        this.a = ds8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof eu8) && this.a == ((eu8) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ReadError(reason=" + this.a + ")";
    }
}
