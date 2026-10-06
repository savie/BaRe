package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lx6 extends i5 {
    public static final Parcelable.Creator<lx6> CREATOR = new fm(9);
    public final PendingIntent a;

    public lx6(PendingIntent pendingIntent) {
        ly8.h(pendingIntent);
        this.a = pendingIntent;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof lx6) {
            return x13.m(this.a, ((lx6) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.G0(parcel, iF0);
    }
}
