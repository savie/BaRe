package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hd9 implements Executor {
    public static final hd9 a;
    public static final /* synthetic */ hd9[] b;

    static {
        hd9 hd9Var = new hd9("INSTANCE", 0);
        a = hd9Var;
        b = new hd9[]{hd9Var};
    }

    public static hd9[] values() {
        return (hd9[]) b.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
