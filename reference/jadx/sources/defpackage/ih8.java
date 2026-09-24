package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ih8 extends i5 {
    public static final Parcelable.Creator<ih8> CREATOR = new m10(13);
    public final boolean a;

    public ih8(boolean z) {
        this.a = z;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ih8) && this.a == ((ih8) obj).a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.a)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a ? 1 : 0);
        yc9.G0(parcel, iF0);
    }
}
