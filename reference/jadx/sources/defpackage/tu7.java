package defpackage;

import java.util.ArrayList;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tu7 implements Callable {
    public final /* synthetic */ gy5 a;
    public final /* synthetic */ long b;
    public final /* synthetic */ np1 c;
    public final /* synthetic */ bv7 d;

    public tu7(bv7 bv7Var, gy5 gy5Var, np1 np1Var, long j, np1 np1Var2) {
        this.d = bv7Var;
        this.a = gy5Var;
        this.b = j;
        this.c = np1Var2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        bv7 bv7Var = this.d;
        vq vqVar = bv7Var.b;
        long j = this.b;
        Long lValueOf = Long.valueOf(j);
        vqVar.getClass();
        zm5.s(j > ((Long) vqVar.d).longValue());
        ArrayList arrayList = (ArrayList) vqVar.c;
        gy5 gy5Var = this.a;
        np1 np1Var = this.c;
        arrayList.add(new kh8(j, gy5Var, np1Var));
        vqVar.b = ((np1) vqVar.b).d(gy5Var, np1Var);
        vqVar.d = lValueOf;
        return bv7.a(bv7Var, new bd5(eu5.d, gy5Var, np1Var));
    }
}
