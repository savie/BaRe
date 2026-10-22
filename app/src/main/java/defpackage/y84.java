package defpackage;

import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y84 extends Binder implements z84 {
    static final int TRANSACTION_cancelSba = 15;
    static final int TRANSACTION_createSba = 12;
    static final int TRANSACTION_extractSba = 13;
    static final int TRANSACTION_extractTar = 14;
    static final int TRANSACTION_getPackageArchiveInfo = 3;
    static final int TRANSACTION_getParcelFileDescriptor = 4;
    static final int TRANSACTION_getPid = 1;
    static final int TRANSACTION_getSbaNativeVersion = 5;
    static final int TRANSACTION_getSbaResult = 16;
    static final int TRANSACTION_getUid = 2;
    static final int TRANSACTION_isSbaAegis256Available = 6;
    static final int TRANSACTION_isSbaFile = 7;
    static final int TRANSACTION_listSbaTarEntries = 10;
    static final int TRANSACTION_listTarEntries = 11;
    static final int TRANSACTION_readSbaInfo = 8;
    static final int TRANSACTION_readSbaInfoPage = 9;

    public static z84 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("org.swiftapps.rootservice.IRootAidlInterface");
        if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof z84)) {
            return (z84) iInterfaceQueryLocalInterface;
        }
        x84 x84Var = new x84();
        x84Var.a = iBinder;
        return x84Var;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("org.swiftapps.rootservice.IRootAidlInterface");
        }
        if (i == 1598968902) {
            parcel2.writeString("org.swiftapps.rootservice.IRootAidlInterface");
            return true;
        }
        switch (i) {
            case 1:
                int pid = getPid();
                parcel2.writeNoException();
                parcel2.writeInt(pid);
                return true;
            case 2:
                int uid = getUid();
                parcel2.writeNoException();
                parcel2.writeInt(uid);
                return true;
            case 3:
                PackageInfo packageArchiveInfo = getPackageArchiveInfo(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                l73.b(parcel2, packageArchiveInfo, 1);
                return true;
            case 4:
                ParcelFileDescriptor parcelFileDescriptor = getParcelFileDescriptor(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                l73.b(parcel2, parcelFileDescriptor, 1);
                return true;
            case 5:
                String sbaNativeVersion = getSbaNativeVersion();
                parcel2.writeNoException();
                parcel2.writeString(sbaNativeVersion);
                return true;
            case 6:
                boolean zIsSbaAegis256Available = isSbaAegis256Available();
                parcel2.writeNoException();
                parcel2.writeInt(zIsSbaAegis256Available ? 1 : 0);
                return true;
            case 7:
                boolean zIsSbaFile = isSbaFile(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zIsSbaFile ? 1 : 0);
                return true;
            case 8:
                f17 sbaInfo = readSbaInfo(parcel.readString());
                parcel2.writeNoException();
                l73.b(parcel2, sbaInfo, 1);
                return true;
            case 9:
                f17 sbaInfoPage = readSbaInfoPage(parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                l73.b(parcel2, sbaInfoPage, 1);
                return true;
            case 10:
                q17 q17VarListSbaTarEntries = listSbaTarEntries(parcel.readString(), parcel.readString(), parcel.createCharArray(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                l73.b(parcel2, q17VarListSbaTarEntries, 1);
                return true;
            case 11:
                q17 q17VarListTarEntries = listTarEntries(parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                l73.b(parcel2, q17VarListTarEntries, 1);
                return true;
            case TRANSACTION_createSba /* 12 */:
                long jCreateSba = createSba((i17) l73.a(parcel, i17.CREATOR), lz6.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeLong(jCreateSba);
                return true;
            case TRANSACTION_extractSba /* 13 */:
                long jExtractSba = extractSba((m17) l73.a(parcel, m17.CREATOR), lz6.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeLong(jExtractSba);
                return true;
            case TRANSACTION_extractTar /* 14 */:
                long jExtractTar = extractTar((s17) l73.a(parcel, s17.CREATOR), lz6.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeLong(jExtractTar);
                return true;
            case TRANSACTION_cancelSba /* 15 */:
                cancelSba(parcel.readLong());
                parcel2.writeNoException();
                return true;
            case 16:
                o17 sbaResult = getSbaResult(parcel.readLong());
                parcel2.writeNoException();
                l73.b(parcel2, sbaResult, 1);
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }
}
