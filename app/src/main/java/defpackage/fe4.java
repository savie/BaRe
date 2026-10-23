package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fe4 extends n94 {
    public final /* synthetic */ TaskCompletionSource b;

    public fe4(TaskCompletionSource taskCompletionSource) {
        this.b = taskCompletionSource;
    }

    @Override // defpackage.n94
    public final void r(Status status, d12 d12Var) {
        status.getClass();
        ly8.O(status, d12Var, this.b);
    }
}
