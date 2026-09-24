package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x09 extends i5 implements fn6 {
    public static final Parcelable.Creator<x09> CREATOR = new mn0(6);
    public final int a;
    public final int b;
    public final Intent c;

    public x09(int i, int i2, Intent intent) {
        this.a = i;
        this.b = i2;
        this.c = intent;
    }

    @Override // defpackage.fn6
    public final Status getStatus() {
        return this.b == 0 ? Status.e : Status.p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(this.b);
        yc9.v0(parcel, 3, this.c, i);
        yc9.G0(parcel, iF0);
    }
}
