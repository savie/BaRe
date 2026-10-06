package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ff0 implements x23 {
    public final /* synthetic */ int a;

    public /* synthetic */ ff0(int i) {
        this.a = i;
    }

    @Override // defpackage.x23
    public final Object b() {
        switch (this.a) {
            case 0:
                j jVar = new j();
                eu3 eu3Var = new eu3();
                ro roVar = new ro(16);
                eu3Var.a = jVar;
                eu3Var.b = roVar;
                return new ef0(eu3Var);
            default:
                return new w35();
        }
    }
}
