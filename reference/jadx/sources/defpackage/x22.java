package defpackage;

import android.content.Context;
import android.os.CancellationSignal;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface x22 {
    boolean isAvailableOnDevice();

    void onClearCredential(f91 f91Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var);

    void onCreateCredential(Context context, i12 i12Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var);

    void onGetCredential(Context context, zv3 zv3Var, CancellationSignal cancellationSignal, Executor executor, t22 t22Var);
}
