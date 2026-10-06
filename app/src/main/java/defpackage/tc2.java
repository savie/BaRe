package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tc2 implements ch5 {
    public final lv1 a;

    public tc2(lv1 lv1Var) {
        this.a = lv1Var;
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        return obj.toString().startsWith("data:image");
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        return new bh5(new nr5(obj), new sc2(obj.toString(), this.a));
    }
}
