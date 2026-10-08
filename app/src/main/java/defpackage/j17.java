package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j17 implements Parcelable {
    public static final Parcelable.Creator<j17> CREATOR = new yj0(3);
    public final String a;
    public final String b;
    public final boolean c;
    public final ArrayList d;
    public final ArrayList e;
    public final String f;

    public j17(String str, String str2, boolean z, ArrayList arrayList, ArrayList arrayList2, String str3) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = arrayList;
        this.e = arrayList2;
        this.f = str3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j17)) {
            return false;
        }
        j17 j17Var = (j17) obj;
        return pe4.d(this.a, j17Var.a) && pe4.d(this.b, j17Var.b) && this.c == j17Var.c && pe4.d(this.d, j17Var.d) && pe4.d(this.e, j17Var.e) && pe4.d(this.f, j17Var.f);
    }

    public final int hashCode() {
        int iH = fz5.h(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        ArrayList arrayList = this.d;
        int iHashCode = (iH + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        ArrayList arrayList2 = this.e;
        int iHashCode2 = (iHashCode + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        String str = this.f;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("SbaRootEntry(name=", this.a, ", sourcePath=", this.b, ", includeRootDirectory=");
        sbP.append(this.c);
        sbP.append(", includePaths=");
        sbP.append(this.d);
        sbP.append(", excludePaths=");
        sbP.append(this.e);
        sbP.append(", fallbackSourcePath=");
        sbP.append(this.f);
        sbP.append(")");
        return sbP.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeStringList(this.d);
        parcel.writeStringList(this.e);
        parcel.writeString(this.f);
    }
}
