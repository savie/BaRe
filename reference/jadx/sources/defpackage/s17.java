package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s17 implements Parcelable {
    public static final Parcelable.Creator<s17> CREATOR = new eq1(8);
    public final String a;
    public final String b;
    public final int c;
    public final ArrayList d;
    public final long e;

    public s17(String str, String str2, int i, ArrayList arrayList, long j) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = arrayList;
        this.e = j;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s17)) {
            return false;
        }
        s17 s17Var = (s17) obj;
        return pe4.d(this.a, s17Var.a) && pe4.d(this.b, s17Var.b) && this.c == s17Var.c && pe4.d(this.d, s17Var.d) && this.e == s17Var.e;
    }

    public final int hashCode() {
        int iD = eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31);
        ArrayList arrayList = this.d;
        return Long.hashCode(this.e) + ((iD + (arrayList == null ? 0 : arrayList.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("SbaRootTarExtractRequest(tarPath=", this.a, ", targetDir=", this.b, ", restoreProfile=");
        sbP.append(this.c);
        sbP.append(", includePaths=");
        sbP.append(this.d);
        sbP.append(", progressUpdateIntervalMillis=");
        return dj7.h(this.e, ")", sbP);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeStringList(this.d);
        parcel.writeLong(this.e);
    }
}
