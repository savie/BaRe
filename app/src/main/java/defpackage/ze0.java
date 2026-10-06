package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ze0 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(ze0.class, "notCompletedCount$volatile");
    public final jg2[] a;
    private volatile /* synthetic */ int notCompletedCount$volatile;

    public ze0(jg2[] jg2VarArr) {
        this.a = jg2VarArr;
        this.notCompletedCount$volatile = jg2VarArr.length;
    }

    public final Object a(ws7 ws7Var) {
        o21 o21Var = new o21(1, nc8.D(ws7Var));
        o21Var.u();
        jg2[] jg2VarArr = this.a;
        int length = jg2VarArr.length;
        xe0[] xe0VarArr = new xe0[length];
        for (int i = 0; i < length; i++) {
            jg2 jg2Var = jg2VarArr[i];
            jg2Var.start();
            xe0 xe0Var = new xe0(this, o21Var);
            xe0Var.p = sz8.G(jg2Var, true, xe0Var);
            xe0VarArr[i] = xe0Var;
        }
        ye0 ye0Var = new ye0(xe0VarArr);
        for (int i2 = 0; i2 < length; i2++) {
            xe0VarArr[i2].s(ye0Var);
        }
        if (o21Var.t() instanceof ho5) {
            o21Var.x(ye0Var);
        } else {
            ye0Var.b();
        }
        return o21Var.s();
    }
}
