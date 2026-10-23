package defpackage;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p29 extends b19 implements IInterface {
    public p29() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks", 1);
    }

    @Override // defpackage.b19
    public final boolean n(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 101:
                z29.c(parcel);
                x5.e();
                return false;
            case 102:
                Status status = (Status) z29.a(parcel, Status.CREATOR);
                z29.c(parcel);
                q(status);
                break;
            case 103:
                Status status2 = (Status) z29.a(parcel, Status.CREATOR);
                z29.c(parcel);
                r(status2);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }

    public void q(Status status) {
        throw new UnsupportedOperationException();
    }

    public void r(Status status) {
        throw new UnsupportedOperationException();
    }
}
