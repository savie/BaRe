package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lv4 extends on5 {
    public final String f;
    public final String g;

    public lv4(String str, String str2) {
        this.f = str;
        this.g = str2;
    }

    @Override // defpackage.on5
    public final void a(bs2 bs2Var) {
        bs2Var.i(this);
    }

    @Override // defpackage.on5
    public final String e() {
        return "destination=" + this.f + ", title=" + this.g;
    }
}
