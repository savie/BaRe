package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tf5 extends i5 {
    public static final Parcelable.Creator<tf5> CREATOR = new eq1(9);
    public final int a;
    public final int b;
    public final int c;
    public final long d;
    public final long e;
    public final String f;
    public final String k;
    public final int n;
    public final int p;

    public tf5(int i, int i2, int i3, long j, long j2, String str, String str2, int i4, int i5) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = j;
        this.e = j2;
        this.f = str;
        this.k = str2;
        this.n = i4;
        this.p = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(this.b);
        yc9.D0(parcel, 3, 4);
        parcel.writeInt(this.c);
        yc9.D0(parcel, 4, 8);
        parcel.writeLong(this.d);
        yc9.D0(parcel, 5, 8);
        parcel.writeLong(this.e);
        yc9.w0(parcel, 6, this.f);
        yc9.w0(parcel, 7, this.k);
        yc9.D0(parcel, 8, 4);
        parcel.writeInt(this.n);
        yc9.D0(parcel, 9, 4);
        parcel.writeInt(this.p);
        yc9.G0(parcel, iF0);
    }
}
