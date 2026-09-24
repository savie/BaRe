package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jc4 implements mc4 {
    public mc4 a;
    public String b;
    public String c;
    public Object d;

    @Override // defpackage.mc4
    public final boolean b() {
        return false;
    }

    @Override // defpackage.mc4
    public final mc4 d() {
        return null;
    }

    @Override // defpackage.mc4
    public final mc4 f(String str) {
        return null;
    }

    @Override // defpackage.mc4
    public final mc4 getAttribute(String str) {
        return null;
    }

    @Override // defpackage.mc4
    public final xn5 getAttributes() {
        return new nc4(this);
    }

    @Override // defpackage.pn5
    public final String getName() {
        return this.b;
    }

    @Override // defpackage.mc4
    public final mc4 getParent() {
        return this.a;
    }

    @Override // defpackage.mc4
    public final tr9 getPosition() {
        return this.a.getPosition();
    }

    @Override // defpackage.pn5
    public final String getValue() {
        return this.c;
    }

    public final String toString() {
        return eq3.l("attribute ", this.b, "='", this.c, "'");
    }
}
