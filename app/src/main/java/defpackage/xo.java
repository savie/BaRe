package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xo extends yq3 {
    public final /* synthetic */ fp q;
    public final /* synthetic */ ip r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xo(ip ipVar, ip ipVar2, fp fpVar) {
        super(ipVar2);
        this.r = ipVar;
        this.q = fpVar;
    }

    @Override // defpackage.yq3
    public final af7 b() {
        return this.q;
    }

    @Override // defpackage.yq3
    public final boolean c() {
        ip ipVar = this.r;
        if (ipVar.getInternalPopup().a()) {
            return true;
        }
        ipVar.f.n(ipVar.getTextDirection(), ipVar.getTextAlignment());
        return true;
    }
}
