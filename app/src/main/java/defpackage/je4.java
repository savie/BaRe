package defpackage;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class je4 extends b19 {
    public final /* synthetic */ TaskCompletionSource b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je4(TaskCompletionSource taskCompletionSource) {
        super("com.google.android.gms.auth.blockstore.restorecredential.internal.IClearRestoreCredentialCallback", 4);
        this.b = taskCompletionSource;
    }

    @Override // defpackage.b19
    public final boolean j(Parcel parcel, int i) {
        if (i != 1) {
            return false;
        }
        Status status = (Status) ya9.a(parcel, Status.CREATOR);
        boolean z = parcel.readInt() != 0;
        b19.k(parcel);
        status.getClass();
        ly8.O(status, Boolean.valueOf(z), this.b);
        return true;
    }
}
