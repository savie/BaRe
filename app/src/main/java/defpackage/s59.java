package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s59 extends i5 {
    public static final Parcelable.Creator<s59> CREATOR = new gk(5);
    public final String a;

    public s59(String str) {
        ly8.h(str);
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof s59) {
            return this.a.equals(((s59) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.G0(parcel, iF0);
    }
}
