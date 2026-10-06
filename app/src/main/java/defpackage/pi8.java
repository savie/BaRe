package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pi8 extends i5 {
    public static final Parcelable.Creator<pi8> CREATOR = new m8(20);
    public final int a;
    public final short b;
    public final short c;

    public pi8(int i, short s, short s2) {
        this.a = i;
        this.b = s;
        this.c = s2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof pi8)) {
            return false;
        }
        pi8 pi8Var = (pi8) obj;
        return this.a == pi8Var.a && this.b == pi8Var.b && this.c == pi8Var.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.a), Short.valueOf(this.b), Short.valueOf(this.c)});
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
        yc9.G0(parcel, iF0);
    }
}
