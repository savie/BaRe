package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class su7 implements Callable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ gy5 b;
    public final /* synthetic */ long c;
    public final /* synthetic */ qn5 d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ bv7 f;

    public su7(bv7 bv7Var, boolean z, gy5 gy5Var, qn5 qn5Var, long j, qn5 qn5Var2, boolean z2) {
        this.f = bv7Var;
        this.a = z;
        this.b = gy5Var;
        this.c = j;
        this.d = qn5Var2;
        this.e = z2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        boolean z = this.a;
        bv7 bv7Var = this.f;
        if (z) {
            bv7Var.g.c();
        }
        vq vqVar = bv7Var.b;
        long j = this.c;
        Long lValueOf = Long.valueOf(j);
        vqVar.getClass();
        zm5.s(j > ((Long) vqVar.d).longValue());
        ArrayList arrayList = (ArrayList) vqVar.c;
        gy5 gy5Var = this.b;
        qn5 qn5Var = this.d;
        boolean z2 = this.e;
        arrayList.add(new kh8(j, gy5Var, qn5Var, z2));
        if (z2) {
            vqVar.b = ((np1) vqVar.b).c(gy5Var, qn5Var);
        }
        vqVar.d = lValueOf;
        if (this.e) {
            return bv7.a(bv7Var, new jv5(eu5.d, this.b, this.d));
        }
        return Collections.EMPTY_LIST;
    }
}
