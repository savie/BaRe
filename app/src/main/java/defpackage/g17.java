package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g17 implements Parcelable {
    public static final Parcelable.Creator<g17> CREATOR = new fm(4);
    public final String a;
    public final int b;

    public g17(String str, int i) {
        str.getClass();
        this.a = str;
        this.b = i;
    }

    public final cy0 c() {
        String str = this.a;
        if (pe4.d(str, "None")) {
            return oy6.j;
        }
        if (pe4.d(str, "Zstd")) {
            return new py6(this.b);
        }
        l0.k(str, "Unknown SBA root compression kind: ");
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g17)) {
            return false;
        }
        g17 g17Var = (g17) obj;
        return pe4.d(this.a, g17Var.a) && this.b == g17Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return u48.m("SbaRootCompression(kind=", this.a, ", level=", this.b, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
    }
}
