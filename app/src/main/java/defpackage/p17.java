package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p17 implements Parcelable {
    public static final Parcelable.Creator<p17> CREATOR = new f9(5);
    public final String a;
    public final String b;
    public final String c;
    public final int d;
    public final long e;
    public final long f;
    public final long k;
    public final boolean n;
    public final ArrayList p;

    public p17(String str, String str2, String str3, int i, long j, long j2, long j3, boolean z, ArrayList arrayList) {
        str.getClass();
        str2.getClass();
        arrayList.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        this.e = j;
        this.f = j2;
        this.k = j3;
        this.n = z;
        this.p = arrayList;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p17)) {
            return false;
        }
        p17 p17Var = (p17) obj;
        return pe4.d(this.a, p17Var.a) && pe4.d(this.b, p17Var.b) && pe4.d(this.c, p17Var.c) && this.d == p17Var.d && this.e == p17Var.e && this.f == p17Var.f && this.k == p17Var.k && this.n == p17Var.n && pe4.d(this.p, p17Var.p);
    }

    public final int hashCode() {
        int iG = fz5.g(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        return this.p.hashCode() + fz5.h(xs1.f(this.k, xs1.f(this.f, xs1.f(this.e, eq3.d(this.d, (iG + (str == null ? 0 : str.hashCode())) * 31, 31), 31), 31), 31), 31, this.n);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("SbaRootTarEntryInfo(name=", this.a, ", type=", this.b, ", linkName=");
        sbP.append(this.c);
        sbP.append(", mode=");
        sbP.append(this.d);
        sbP.append(", size=");
        sbP.append(this.e);
        fz5.r(sbP, ", realSize=", this.f, ", mtimeMs=");
        sbP.append(this.k);
        sbP.append(", sparse=");
        sbP.append(this.n);
        sbP.append(", xattrNames=");
        sbP.append(this.p);
        sbP.append(")");
        return sbP.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d);
        parcel.writeLong(this.e);
        parcel.writeLong(this.f);
        parcel.writeLong(this.k);
        parcel.writeInt(this.n ? 1 : 0);
        parcel.writeStringList(this.p);
    }
}
