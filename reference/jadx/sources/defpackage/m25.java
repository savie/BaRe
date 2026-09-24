package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m25 implements Callable {
    public final /* synthetic */ e25 a;

    public m25(e25 e25Var) {
        this.a = e25Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new g35(this.a);
    }
}
