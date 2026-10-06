package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n17 implements Parcelable {
    public static final Parcelable.Creator<n17> CREATOR = new gk(2);
    public final String a;
    public final int b;
    public final int c;
    public final Integer d;
    public final Integer e;

    public n17(String str, int i, int i2, Integer num, Integer num2) {
        str.getClass();
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = num;
        this.e = num2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n17)) {
            return false;
        }
        n17 n17Var = (n17) obj;
        return pe4.d(this.a, n17Var.a) && this.b == n17Var.b && this.c == n17Var.c && pe4.d(this.d, n17Var.d) && pe4.d(this.e, n17Var.e);
    }

    public final int hashCode() {
        int iD = eq3.d(this.c, eq3.d(this.b, this.a.hashCode() * 31, 31), 31);
        Integer num = this.d;
        int iHashCode = (iD + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.e;
        return iHashCode + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbV = dj7.v("SbaRootKdfInfo(method=", this.a, ", methodId=", this.b, ", iterations=");
        sbV.append(this.c);
        sbV.append(", memoryKiB=");
        sbV.append(this.d);
        sbV.append(", parallelism=");
        sbV.append(this.e);
        sbV.append(")");
        return sbV.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        Integer num = this.d;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num);
        }
        Integer num2 = this.e;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num2);
        }
    }
}
