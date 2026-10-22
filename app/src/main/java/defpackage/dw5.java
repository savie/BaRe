package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dw5 implements x71 {
    public final Class a;

    public dw5(Class cls) {
        cls.getClass();
        this.a = cls;
    }

    @Override // defpackage.x71
    public final Class a() {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof dw5) {
            return pe4.d(this.a, ((dw5) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString() + " (Kotlin reflection is not available)";
    }
}
