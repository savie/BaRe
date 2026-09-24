package defpackage;

import android.content.pm.PackageInfo;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x84 implements z84 {
    public IBinder a;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.a;
    }

    @Override // defpackage.z84
    public final void cancelSba(long j) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            parcelObtain.writeLong(j);
            this.a.transact(15, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // defpackage.z84
    public final long createSba(i17 i17Var, e94 e94Var) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            l73.b(parcelObtain, i17Var, 0);
            parcelObtain.writeStrongInterface(e94Var);
            this.a.transact(12, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readLong();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // defpackage.z84
    public final long extractSba(m17 m17Var, e94 e94Var) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            l73.b(parcelObtain, m17Var, 0);
            parcelObtain.writeStrongInterface(e94Var);
            this.a.transact(13, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readLong();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // defpackage.z84
    public final long extractTar(s17 s17Var, e94 e94Var) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            l73.b(parcelObtain, s17Var, 0);
            parcelObtain.writeStrongInterface(e94Var);
            this.a.transact(14, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readLong();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // defpackage.z84
    public final PackageInfo getPackageArchiveInfo(String str, int i) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            parcelObtain.writeString(str);
            parcelObtain.writeInt(i);
            this.a.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return (PackageInfo) l73.a(parcelObtain2, PackageInfo.CREATOR);
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // defpackage.z84
    public final ParcelFileDescriptor getParcelFileDescriptor(String str, int i) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            parcelObtain.writeString(str);
            parcelObtain.writeInt(i);
            this.a.transact(4, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return (ParcelFileDescriptor) l73.a(parcelObtain2, ParcelFileDescriptor.CREATOR);
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // defpackage.z84
    public final o17 getSbaResult(long j) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            parcelObtain.writeLong(j);
            this.a.transact(16, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return (o17) l73.a(parcelObtain2, o17.CREATOR);
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // defpackage.z84
    public final boolean isSbaFile(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            parcelObtain.writeString(str);
            this.a.transact(7, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // defpackage.z84
    public final q17 listTarEntries(String str, int i, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            parcelObtain.writeString(str);
            parcelObtain.writeInt(i);
            parcelObtain.writeInt(i2);
            this.a.transact(11, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return (q17) l73.a(parcelObtain2, q17.CREATOR);
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // defpackage.z84
    public final f17 readSbaInfoPage(String str, int i, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("org.swiftapps.rootservice.IRootAidlInterface");
            parcelObtain.writeString(str);
            parcelObtain.writeInt(i);
            parcelObtain.writeInt(128);
            this.a.transact(9, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return (f17) l73.a(parcelObtain2, f17.CREATOR);
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
