package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c17 implements Parcelable {
    public static final Parcelable.Creator<c17> CREATOR = new mk(3);
    public final long a;
    public final int b;
    public final int c;
    public final String d;

    public c17(int i, int i2, long j, String str) {
        str.getClass();
        this.a = j;
        this.b = i;
        this.c = i2;
        this.d = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c17)) {
            return false;
        }
        c17 c17Var = (c17) obj;
        return this.a == c17Var.a && this.b == c17Var.b && this.c == c17Var.c && pe4.d(this.d, c17Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + eq3.d(this.c, eq3.d(this.b, Long.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        return "SbaRootArchiveFooterInfo(offset=" + this.a + ", size=" + this.b + ", crc32=" + this.c + ", crc32Hex=" + this.d + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeLong(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
    }
}
