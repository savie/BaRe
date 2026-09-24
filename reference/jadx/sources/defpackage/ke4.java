package defpackage;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ke4 extends b19 {
    public final /* synthetic */ TaskCompletionSource b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ke4(TaskCompletionSource taskCompletionSource) {
        super("com.google.android.gms.auth.blockstore.restorecredential.internal.IGetRestoreCredentialCallback", 4);
        this.b = taskCompletionSource;
    }

    @Override // defpackage.b19
    public final boolean j(Parcel parcel, int i) {
        if (i != 1) {
            return false;
        }
        Status status = (Status) ya9.a(parcel, Status.CREATOR);
        yw3 yw3Var = (yw3) ya9.a(parcel, yw3.CREATOR);
        b19.k(parcel);
        status.getClass();
        yw3Var.getClass();
        ly8.O(status, yw3Var, this.b);
        return true;
    }
}
