package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qh9 extends b19 {
    public final /* synthetic */ TaskCompletionSource b;

    public qh9(TaskCompletionSource taskCompletionSource) {
        this.b = taskCompletionSource;
    }

    @Override // defpackage.b19
    public final void p(Status status, PendingIntent pendingIntent) {
        ly8.O(status, pendingIntent, this.b);
    }
}
