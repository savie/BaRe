package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ou7 implements Callable {
    public final /* synthetic */ bv7 a;

    public ou7(bv7 bv7Var, qc6 qc6Var) {
        this.a = bv7Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        this.a.g.c();
        return null;
    }
}
