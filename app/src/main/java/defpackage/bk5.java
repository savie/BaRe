package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bk5 extends fk5 {
    public final /* synthetic */ String b;

    public bk5(String str) {
        this.b = str;
    }

    @Override // defpackage.fk5
    public final String a(String str) {
        return dj7.n(new StringBuilder(), this.b, str);
    }

    public final String toString() {
        return dj7.n(new StringBuilder("[PrefixTransformer('"), this.b, "')]");
    }
}
