package defpackage;

import android.app.PendingIntent;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b19 extends Binder implements IInterface {
    public final /* synthetic */ int a;

    public b19(String str, int i) {
        this.a = i;
        switch (i) {
            case 1:
                attachInterface(this, str);
                break;
            case 2:
            case 3:
            default:
                attachInterface(this, str);
                break;
            case 4:
                attachInterface(this, str);
                break;
            case 5:
                attachInterface(this, str);
                break;
        }
    }

    public static void k(Parcel parcel) {
        int i = ya9.a;
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail > 0) {
            throw new BadParcelableException(fz5.j(iDataAvail, "Parcel data not fully consumed, unread size: "));
        }
    }

    public static void l(Parcel parcel) {
        int i = sa9.a;
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail <= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(iDataAvail).length() + 45);
        sb.append("Parcel data not fully consumed, unread size: ");
        sb.append(iDataAvail);
        throw new BadParcelableException(sb.toString());
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        int i = this.a;
        return this;
    }

    public abstract boolean j(Parcel parcel, int i);

    public abstract boolean m(int i, Parcel parcel, Parcel parcel2);

    public abstract boolean n(int i, Parcel parcel, Parcel parcel2);

    public boolean o(int i, Parcel parcel, Parcel parcel2) {
        return false;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        boolean zOnTransact;
        boolean zOnTransact2;
        boolean zOnTransact3 = false;
        switch (this.a) {
            case 0:
                if (i <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i, parcel, parcel2, i2)) {
                    return true;
                }
                return m(i, parcel, parcel2);
            case 1:
                if (i <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i, parcel, parcel2, i2)) {
                    return true;
                }
                return n(i, parcel, parcel2);
            case 2:
                if (i > 16777215) {
                    zOnTransact = super.onTransact(i, parcel, parcel2, i2);
                } else {
                    parcel.enforceInterface(getInterfaceDescriptor());
                    zOnTransact = false;
                }
                if (zOnTransact) {
                    return true;
                }
                kd9 kd9Var = (kd9) this;
                if (i != 1) {
                    return false;
                }
                int i3 = parcel.readInt();
                int i4 = z89.a;
                int iDataAvail = parcel.dataAvail();
                if (iDataAvail > 0) {
                    throw new BadParcelableException(fz5.j(iDataAvail, "Parcel data not fully consumed, unread size: "));
                }
                kd9Var.b.a(Integer.valueOf(i3));
                return true;
            case 3:
                if (i <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i, parcel, parcel2, i2)) {
                    return true;
                }
                yy9 yy9Var = (yy9) this;
                if (i != 2) {
                    return false;
                }
                Status status = (Status) xa9.a(parcel, Status.CREATOR);
                Bundle bundle = (Bundle) xa9.a(parcel, Bundle.CREATOR);
                int iDataAvail2 = parcel.dataAvail();
                if (iDataAvail2 > 0) {
                    throw new BadParcelableException(fz5.j(iDataAvail2, "Parcel data not fully consumed, unread size: "));
                }
                z39.c(status, bundle, yy9Var.b);
                return true;
            case 4:
                if (i > 16777215) {
                    zOnTransact3 = super.onTransact(i, parcel, parcel2, i2);
                } else {
                    parcel.enforceInterface(getInterfaceDescriptor());
                }
                if (zOnTransact3) {
                    return true;
                }
                return j(parcel, i);
            case 5:
                if (i <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i, parcel, parcel2, i2)) {
                    return true;
                }
                return o(i, parcel, parcel2);
            case 6:
                if (i > 16777215) {
                    zOnTransact2 = super.onTransact(i, parcel, parcel2, i2);
                } else {
                    parcel.enforceInterface(getInterfaceDescriptor());
                    zOnTransact2 = false;
                }
                if (zOnTransact2) {
                    return true;
                }
                n94 n94Var = (n94) this;
                switch (i) {
                    case 1:
                        Status status2 = (Status) sa9.a(parcel, Status.CREATOR);
                        ty5 ty5Var = (ty5) sa9.a(parcel, ty5.CREATOR);
                        l(parcel);
                        n94Var.s(status2, ty5Var);
                        return true;
                    case 2:
                        Status status3 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status3.getClass();
                        x5.e();
                        break;
                    case 3:
                        Status status4 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status4.getClass();
                        x5.e();
                        break;
                    case 4:
                        Status status5 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status5.getClass();
                        x5.e();
                        break;
                    case 5:
                        Status status6 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status6.getClass();
                        x5.e();
                        break;
                    case 6:
                        Status status7 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status7.getClass();
                        x5.e();
                        break;
                    case 7:
                        Status status8 = (Status) sa9.a(parcel, Status.CREATOR);
                        d12 d12Var = (d12) sa9.a(parcel, d12.CREATOR);
                        l(parcel);
                        n94Var.r(status8, d12Var);
                        return true;
                    case 8:
                        Status status9 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status9.getClass();
                        x5.e();
                        break;
                    case XmlPullParser.COMMENT /* 9 */:
                        Status status10 = (Status) sa9.a(parcel, Status.CREATOR);
                        g91 g91Var = (g91) sa9.a(parcel, g91.CREATOR);
                        l(parcel);
                        n94Var.q(status10, g91Var);
                        return true;
                    case 10:
                        Status status11 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status11.getClass();
                        throw new UnsupportedOperationException();
                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                        Status status12 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status12.getClass();
                        x5.e();
                        break;
                    case 12:
                        Status status13 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status13.getClass();
                        x5.e();
                        break;
                    case 13:
                        Status status14 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status14.getClass();
                        x5.e();
                        break;
                    case 14:
                        Status status15 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status15.getClass();
                        x5.e();
                        break;
                    case 15:
                        Status status16 = (Status) sa9.a(parcel, Status.CREATOR);
                        l(parcel);
                        status16.getClass();
                        x5.e();
                        break;
                }
                return false;
            default:
                if (i <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i, parcel, parcel2, i2)) {
                    return true;
                }
                if (i != 1) {
                    return false;
                }
                Parcelable.Creator<Status> creator = Status.CREATOR;
                int i5 = ab9.a;
                Status statusCreateFromParcel = parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
                PendingIntent pendingIntent = (PendingIntent) (parcel.readInt() != 0 ? (Parcelable) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                int iDataAvail3 = parcel.dataAvail();
                if (iDataAvail3 > 0) {
                    throw new BadParcelableException(fz5.j(iDataAvail3, "Parcel data not fully consumed, unread size: "));
                }
                p(statusCreateFromParcel, pendingIntent);
                return true;
        }
    }

    public abstract void p(Status status, PendingIntent pendingIntent);

    public b19() {
        this.a = 7;
        attachInterface(this, "com.google.android.gms.fido.fido2.internal.regular.IFido2AppCallbacks");
    }

    public /* synthetic */ b19(int i) {
        this.a = i;
    }
}
