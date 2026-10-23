package defpackage;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class i94 extends b19 {
    public i94() {
        super("com.google.android.gms.common.api.internal.IStatusCallback", 0);
    }

    @Override // defpackage.b19
    public final boolean m(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        Status status = (Status) m19.a(parcel, Status.CREATOR);
        m19.b(parcel);
        q(status);
        return true;
    }

    public abstract void q(Status status);
}
