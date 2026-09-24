package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d41 implements Parcelable {
    public static final Parcelable.Creator<d41> CREATOR = new mk(1);
    public final String a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final String e;

    public d41(String str, boolean z, boolean z2, boolean z3, String str2) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = z3;
        this.e = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d41)) {
            return false;
        }
        d41 d41Var = (d41) obj;
        return pe4.d(this.a, d41Var.a) && this.b == d41Var.b && this.c == d41Var.c && this.d == d41Var.d && pe4.d(this.e, d41Var.e);
    }

    public final int hashCode() {
        int iH = fz5.h(fz5.h(fz5.h(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        return iH + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChangeLogItem(text=");
        sb.append(this.a);
        sb.append(", isHeader=");
        sb.append(this.b);
        sb.append(", isVersionHeader=");
        sb.append(this.c);
        sb.append(", isBulletText=");
        sb.append(this.d);
        sb.append(", releaseSummary=");
        return dj7.n(sb, this.e, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeInt(this.b ? 1 : 0);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeInt(this.d ? 1 : 0);
        parcel.writeString(this.e);
    }
}
