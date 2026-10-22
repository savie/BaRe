package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o29 extends i5 {
    public static final Parcelable.Creator<o29> CREATOR = new mk(9);
    public final int a;
    public final IBinder b;
    public final hs1 c;
    public final boolean d;
    public final boolean e;

    public o29(int i, IBinder iBinder, hs1 hs1Var, boolean z, boolean z2) {
        this.a = i;
        this.b = iBinder;
        this.c = hs1Var;
        this.d = z;
        this.e = z2;
    }

    public final boolean equals(Object obj) {
        Object uv9Var;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o29)) {
            return false;
        }
        o29 o29Var = (o29) obj;
        if (!this.c.equals(o29Var.c)) {
            return false;
        }
        Object uv9Var2 = null;
        IBinder iBinder = this.b;
        if (iBinder == null) {
            uv9Var = null;
        } else {
            int i = x6.b;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            uv9Var = iInterfaceQueryLocalInterface instanceof n74 ? (n74) iInterfaceQueryLocalInterface : new uv9(iBinder);
        }
        IBinder iBinder2 = o29Var.b;
        if (iBinder2 != null) {
            int i2 = x6.b;
            IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            uv9Var2 = iInterfaceQueryLocalInterface2 instanceof n74 ? (n74) iInterfaceQueryLocalInterface2 : new uv9(iBinder2);
        }
        return x13.m(uv9Var, uv9Var2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        IBinder iBinder = this.b;
        if (iBinder != null) {
            int iF1 = yc9.F0(parcel, 2);
            parcel.writeStrongBinder(iBinder);
            yc9.G0(parcel, iF1);
        }
        yc9.v0(parcel, 3, this.c, i);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        yc9.D0(parcel, 5, 4);
        parcel.writeInt(this.e ? 1 : 0);
        yc9.G0(parcel, iF0);
    }
}
