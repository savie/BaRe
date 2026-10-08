package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lz6 extends Binder implements e94 {
    public final /* synthetic */ h07 a;

    public lz6(h07 h07Var) {
        this.a = h07Var;
        attachInterface(this, "org.swiftapps.rootservice.ISbaRootProgress");
    }

    public static e94 a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("org.swiftapps.rootservice.ISbaRootProgress");
        if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof e94)) {
            return (e94) iInterfaceQueryLocalInterface;
        }
        d94 d94Var = new d94();
        d94Var.a = iBinder;
        return d94Var;
    }

    @Override // defpackage.e94
    public final void c(long j, int i, int i2, int i3, int i4, String str, long j2, long j3) {
        i07 i07Var;
        k07 k07Var;
        l07 l07Var;
        m07 m07Var;
        HashSet hashSet = mz6.a;
        if (i == 0) {
            i07Var = i07.Create;
        } else if (i != 1) {
            i07Var = i != 2 ? null : i07.Extract;
        } else {
            i07Var = i07.ListTarEntries;
        }
        if (i07Var == null) {
            mz6.a(i, "operation");
            return;
        }
        if (i2 == 0) {
            k07Var = k07.Preparing;
        } else if (i2 == 1) {
            k07Var = k07.CreatingArchive;
        } else if (i2 == 2) {
            k07Var = k07.ListingArchive;
        } else if (i2 != 3) {
            k07Var = i2 != 4 ? null : k07.Finalizing;
        } else {
            k07Var = k07.ExtractingArchive;
        }
        if (k07Var == null) {
            mz6.a(i2, "phase");
            return;
        }
        switch (i3) {
            case 0:
                l07Var = l07.Entry;
                break;
            case 1:
                l07Var = l07.Tar;
                break;
            case 2:
                l07Var = l07.Compression;
                break;
            case 3:
                l07Var = l07.Encryption;
                break;
            case 4:
                l07Var = l07.Decryption;
                break;
            case 5:
                l07Var = l07.Listing;
                break;
            case 6:
                l07Var = l07.Extraction;
                break;
            case 7:
                l07Var = l07.Finalize;
                break;
            default:
                l07Var = null;
                break;
        }
        if (l07Var == null) {
            mz6.a(i3, "stage");
            return;
        }
        if (i4 == 0) {
            m07Var = m07.Started;
        } else if (i4 != 1) {
            m07Var = i4 != 2 ? null : m07.Completed;
        } else {
            m07Var = m07.Progress;
        }
        if (m07Var == null) {
            mz6.a(i4, "state");
        } else {
            this.a.a(new f07(i07Var, k07Var, l07Var, m07Var, str, j2, j3 >= 0 ? Long.valueOf(j3) : null));
        }
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        Parcel parcel3;
        if (i < 1 || i > 16777215) {
            parcel3 = parcel;
        } else {
            parcel3 = parcel;
            parcel3.enforceInterface("org.swiftapps.rootservice.ISbaRootProgress");
        }
        if (i == 1598968902) {
            parcel2.writeString("org.swiftapps.rootservice.ISbaRootProgress");
            return true;
        }
        if (i != 1) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        c(parcel3.readLong(), parcel3.readInt(), parcel3.readInt(), parcel3.readInt(), parcel3.readInt(), parcel3.readString(), parcel3.readLong(), parcel3.readLong());
        parcel2.writeNoException();
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
