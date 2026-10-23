package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ii implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ ji b;

    public /* synthetic */ ii(ji jiVar, int i) {
        this.a = i;
        this.b = jiVar;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        ji jiVar = this.b;
        switch (i) {
            case 0:
                return ji.installerPackage_delegate$lambda$0(jiVar);
            default:
                zn4 zn4Var = zn4.a;
                zn4.b(null, new lj(jiVar, null, 1));
                return be8.a;
        }
    }
}
