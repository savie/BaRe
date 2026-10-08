package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t29 extends b19 {
    public final /* synthetic */ TaskCompletionSource b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t29(u29 u29Var, TaskCompletionSource taskCompletionSource) {
        super("com.google.android.gms.auth.api.identity.internal.IGetSignInIntentCallback", 1);
        this.b = taskCompletionSource;
    }

    @Override // defpackage.b19
    public final boolean n(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        Status status = (Status) z29.a(parcel, Status.CREATOR);
        PendingIntent pendingIntent = (PendingIntent) z29.a(parcel, PendingIntent.CREATOR);
        z29.c(parcel);
        ly8.O(status, pendingIntent, this.b);
        return true;
    }
}
