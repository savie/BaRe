package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l61 extends m61 {
    public final int e;

    public l61(String str, int i) {
        super(str);
        this.e = i;
    }

    @Override // defpackage.m61, java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((m61) obj);
    }

    @Override // defpackage.m61
    public final String toString() {
        return dj7.n(new StringBuilder("IntegerChildName(\""), this.a, "\")");
    }
}
