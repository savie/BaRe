package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jo9 extends i5 {
    public static final Parcelable.Creator<jo9> CREATOR = new m8(21);
    public Bundle a;
    public y53[] b;
    public int c;
    public is1 d;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.n0(parcel, 1, this.a);
        yc9.y0(parcel, 2, this.b, i);
        int i2 = this.c;
        yc9.D0(parcel, 3, 4);
        parcel.writeInt(i2);
        yc9.v0(parcel, 4, this.d, i);
        yc9.G0(parcel, iF0);
    }
}
