package defpackage;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ry1 implements Callable {
    public final /* synthetic */ long a;
    public final /* synthetic */ sy1 b;

    public ry1(sy1 sy1Var, long j) {
        this.b = sy1Var;
        this.a = j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle bundle = new Bundle();
        bundle.putInt("fatal", 1);
        bundle.putLong("timestamp", this.a);
        this.b.k.p(bundle);
        return null;
    }
}
