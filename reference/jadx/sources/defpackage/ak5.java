package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ak5 extends fk5 {
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;

    public ak5(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    @Override // defpackage.fk5
    public final String a(String str) {
        return this.b + str + this.c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[PreAndSuffixTransformer('");
        sb.append(this.b);
        sb.append("','");
        return dj7.n(sb, this.c, "')]");
    }
}
