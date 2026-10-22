package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z39 extends kz3 {
    public static final oe k = new oe("GoogleAuthService.API", new is9(1), new b05());
    public static final u50 l = new u50("Auth", "GoogleAuthServiceClient");

    public static void c(Status status, Bundle bundle, TaskCompletionSource taskCompletionSource) {
        if (status.n() ? taskCompletionSource.trySetResult(bundle) : taskCompletionSource.trySetException(rs9.f(status))) {
            return;
        }
        l.g("The task is already complete.", new Object[0]);
    }
}
