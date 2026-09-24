package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class is1 extends i5 {
    public static final Parcelable.Creator<is1> CREATOR = new gk(12);
    public final kq6 a;
    public final boolean b;
    public final boolean c;
    public final int[] d;
    public final int e;
    public final int[] f;

    public is1(kq6 kq6Var, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.a = kq6Var;
        this.b = z;
        this.c = z2;
        this.d = iArr;
        this.e = i;
        this.f = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(this.b ? 1 : 0);
        yc9.D0(parcel, 3, 4);
        parcel.writeInt(this.c ? 1 : 0);
        int[] iArr = this.d;
        if (iArr != null) {
            int iF1 = yc9.F0(parcel, 4);
            parcel.writeIntArray(iArr);
            yc9.G0(parcel, iF1);
        }
        yc9.D0(parcel, 5, 4);
        parcel.writeInt(this.e);
        int[] iArr2 = this.f;
        if (iArr2 != null) {
            int iF2 = yc9.F0(parcel, 6);
            parcel.writeIntArray(iArr2);
            yc9.G0(parcel, iF2);
        }
        yc9.G0(parcel, iF0);
    }
}
