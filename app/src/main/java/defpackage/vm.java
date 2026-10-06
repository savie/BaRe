package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vm implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ vm(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        switch (this.a) {
            case 0:
                q63 q63Var = (q63) obj;
                q63Var.getClass();
                return Boolean.valueOf(uq7.V(q63Var.p(), this.b, false));
            default:
                md1 md1Var = (md1) obj;
                md1Var.getClass();
                return md1Var.c == rd1.RUNNING ? md1.a(md1Var, false, null, null, this.b, null, 47) : md1Var;
        }
    }
}
