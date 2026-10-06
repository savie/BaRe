package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e17 implements Parcelable {
    public static final Parcelable.Creator<e17> CREATOR = new m8(13);
    public final long a;
    public final long b;
    public final int c;
    public final int d;
    public final String e;
    public final int f;

    public e17(long j, long j2, int i, int i2, String str, int i3) {
        str.getClass();
        this.a = j;
        this.b = j2;
        this.c = i;
        this.d = i2;
        this.e = str;
        this.f = i3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e17)) {
            return false;
        }
        e17 e17Var = (e17) obj;
        return this.a == e17Var.a && this.b == e17Var.b && this.c == e17Var.c && this.d == e17Var.d && pe4.d(this.e, e17Var.e) && this.f == e17Var.f;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f) + fz5.g(eq3.d(this.d, eq3.d(this.c, xs1.f(this.b, Long.hashCode(this.a) * 31, 31), 31), 31), 31, this.e);
    }

    public final String toString() {
        StringBuilder sbT = dj7.t("SbaRootArchiveIndexInfo(offset=", ", size=", this.a);
        sbT.append(this.b);
        sbT.append(", version=");
        sbT.append(this.c);
        sbT.append(", crc32=");
        sbT.append(this.d);
        sbT.append(", crc32Hex=");
        sbT.append(this.e);
        sbT.append(", entryCount=");
        sbT.append(this.f);
        sbT.append(")");
        return sbT.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeString(this.e);
        parcel.writeInt(this.f);
    }
}
