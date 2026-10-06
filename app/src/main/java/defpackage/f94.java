package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class f94 implements h94 {
    public IBinder a;

    public final int a(ue7 ue7Var, Bundle bundle) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            parcelObtain.writeStrongBinder(ue7Var);
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            if (!this.a.transact(12, parcelObtain, parcelObtain2, 0)) {
                int i = g94.a;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.a;
    }

    public final boolean f() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            if (!this.a.transact(16, parcelObtain, parcelObtain2, 0)) {
                int i = g94.a;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final int g() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            if (!this.a.transact(3, parcelObtain, parcelObtain2, 0)) {
                int i = g94.a;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final int getUid() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            if (!this.a.transact(4, parcelObtain, parcelObtain2, 0)) {
                int i = g94.a;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final t84 j(String[] strArr, String[] strArr2, String str) {
        t84 t84Var;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            parcelObtain.writeStringArray(strArr);
            parcelObtain.writeStringArray(strArr2);
            parcelObtain.writeString(str);
            if (!this.a.transact(8, parcelObtain, parcelObtain2, 0)) {
                int i = g94.a;
            }
            parcelObtain2.readException();
            IBinder strongBinder = parcelObtain2.readStrongBinder();
            int i2 = s84.a;
            if (strongBinder == null) {
                t84Var = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("moe.shizuku.server.IRemoteProcess");
                if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof t84)) {
                    r84 r84Var = new r84();
                    r84Var.a = strongBinder;
                    t84Var = r84Var;
                } else {
                    t84Var = (t84) iInterfaceQueryLocalInterface;
                }
            }
            return t84Var;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final void k(int i) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            parcelObtain.writeInt(i);
            if (!this.a.transact(15, parcelObtain, parcelObtain2, 0)) {
                int i2 = g94.a;
            }
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
