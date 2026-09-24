package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class av5 implements ev5 {
    public x46 a;
    public ev5 b;
    public String c;
    public String d;
    public String e;

    @Override // defpackage.ev5
    public final int a() {
        return 3;
    }

    @Override // defpackage.ev5
    public final x46 c() {
        return this.a;
    }

    @Override // defpackage.ev5
    public final void e(String str) {
        this.c = str;
    }

    @Override // defpackage.ev5
    public final xn5 getAttributes() {
        return new fv5(this);
    }

    @Override // defpackage.pn5
    public final String getName() {
        return this.d;
    }

    @Override // defpackage.ev5
    public final ev5 getParent() {
        return this.b;
    }

    @Override // defpackage.ev5
    public final String getPrefix() {
        return this.a.d(this.c);
    }

    @Override // defpackage.pn5
    public final String getValue() {
        return this.e;
    }

    @Override // defpackage.ev5
    public final String h(boolean z) {
        return this.a.d(this.c);
    }

    @Override // defpackage.ev5
    public final ev5 i(String str) {
        return null;
    }

    @Override // defpackage.ev5
    public final boolean j() {
        return true;
    }

    @Override // defpackage.ev5
    public final ev5 setAttribute(String str, String str2) {
        return null;
    }

    @Override // defpackage.ev5
    public final void setName(String str) {
        this.d = str;
    }

    @Override // defpackage.ev5
    public final void setValue(String str) {
        this.e = str;
    }

    public final String toString() {
        return eq3.l("attribute ", this.d, "='", this.e, "'");
    }

    @Override // defpackage.ev5
    public final void commit() {
    }

    @Override // defpackage.ev5
    public final void remove() {
    }

    @Override // defpackage.ev5
    public final void g(boolean z) {
    }
}
