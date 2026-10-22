package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nc9 {
    public static final nc9 d = new nc9();
    public final Runnable a;
    public final Executor b;
    public nc9 c;

    public nc9() {
        this.a = null;
        this.b = null;
    }

    public nc9(Runnable runnable, Executor executor) {
        this.a = runnable;
        this.b = executor;
    }
}
