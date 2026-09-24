package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kd8 implements Executor {
    public static final kd8 a;
    public static final Handler b;
    public static final /* synthetic */ kd8[] c;

    static {
        kd8 kd8Var = new kd8("INSTANCE", 0);
        a = kd8Var;
        c = new kd8[]{kd8Var};
        b = new Handler(Looper.getMainLooper());
    }

    public static kd8 valueOf(String str) {
        return (kd8) Enum.valueOf(kd8.class, str);
    }

    public static kd8[] values() {
        return (kd8[]) c.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b.post(runnable);
    }
}
