package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yy9 extends b19 {
    public final /* synthetic */ TaskCompletionSource b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yy9(TaskCompletionSource taskCompletionSource) {
        super(3);
        this.b = taskCompletionSource;
        attachInterface(this, "com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback");
    }
}
