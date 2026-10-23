package defpackage;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kq0 {
    public final /* synthetic */ lh6 a;
    public final /* synthetic */ CountDownLatch b;

    public /* synthetic */ kq0(lh6 lh6Var, CountDownLatch countDownLatch) {
        this.a = lh6Var;
        this.b = countDownLatch;
    }

    public final void a(yq0 yq0Var) {
        yq0Var.getClass();
        if (yq0Var.a == 0) {
            vr6.i$default(vr6.INSTANCE, "BillingManager", "acknowledgePurchase: Purchase acknowledged", null, 4, null);
        } else {
            vr6.e$default(vr6.INSTANCE, "BillingManager", "acknowledgePurchase: " + yq0Var, null, 4, null);
        }
        this.a.a = yq0Var;
        this.b.countDown();
    }
}
