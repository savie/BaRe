package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kq6 extends i5 {
    public static final Parcelable.Creator<kq6> CREATOR = new f9(10);
    public final int a;
    public final boolean b;
    public final boolean c;
    public final int d;
    public final int e;

    public kq6(int i, boolean z, boolean z2, int i2, int i3) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = i2;
        this.e = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(this.b ? 1 : 0);
        yc9.D0(parcel, 3, 4);
        parcel.writeInt(this.c ? 1 : 0);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.d);
        yc9.D0(parcel, 5, 4);
        parcel.writeInt(this.e);
        yc9.G0(parcel, iF0);
    }
}
