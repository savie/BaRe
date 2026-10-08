package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class y11 extends xh8 {
    public final /* synthetic */ zc2 q;

    public y11(zc2 zc2Var) {
        this.q = zc2Var;
    }

    @Override // defpackage.xh8, defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        Integer num = (Integer) eb2Var.c(Integer.TYPE);
        this.q.i(Integer.valueOf((num != null ? num.intValue() : 0) + 1));
    }
}
