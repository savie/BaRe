package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ef5 extends xh8 {
    public final /* synthetic */ zc2 q;
    public final /* synthetic */ ff5 r;

    public ef5(zc2 zc2Var, ff5 ff5Var) {
        this.q = zc2Var;
        this.r = ff5Var;
    }

    @Override // defpackage.xh8, defpackage.aj8
    public final void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
        Log.e(this.r.m, wc2Var.toString());
        this.q.i(1);
    }

    @Override // defpackage.xh8, defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        Integer num = (Integer) eb2Var.c(Integer.TYPE);
        this.q.i(Integer.valueOf((num != null ? num.intValue() : 0) + 1));
    }
}
