package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k17 implements Parcelable {
    public static final Parcelable.Creator<k17> CREATOR = new m10(8);
    public final String a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long k;
    public final g17 n;
    public final String p;
    public final int q;
    public final Long r;
    public final Long t;
    public final Long x;

    public k17(String str, int i, long j, long j2, long j3, long j4, long j5, g17 g17Var, String str2, int i2, Long l, Long l2, Long l3) {
        str.getClass();
        g17Var.getClass();
        str2.getClass();
        this.a = str;
        this.b = i;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = j4;
        this.k = j5;
        this.n = g17Var;
        this.p = str2;
        this.q = i2;
        this.r = l;
        this.t = l2;
        this.x = l3;
    }

    public final xy6 c() {
        return new xy6(this.a, this.b, this.c, this.d, this.e, this.f, this.k, this.n.c(), wx3.D(null, this.p), this.q, this.r, this.t, this.x);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k17)) {
            return false;
        }
        k17 k17Var = (k17) obj;
        return pe4.d(this.a, k17Var.a) && this.b == k17Var.b && this.c == k17Var.c && this.d == k17Var.d && this.e == k17Var.e && this.f == k17Var.f && this.k == k17Var.k && pe4.d(this.n, k17Var.n) && pe4.d(this.p, k17Var.p) && this.q == k17Var.q && pe4.d(this.r, k17Var.r) && pe4.d(this.t, k17Var.t) && pe4.d(this.x, k17Var.x);
    }

    public final int hashCode() {
        int iD = eq3.d(this.q, fz5.g((this.n.hashCode() + xs1.f(this.k, xs1.f(this.f, xs1.f(this.e, xs1.f(this.d, xs1.f(this.c, eq3.d(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31)) * 31, 31, this.p), 31);
        Long l = this.r;
        int iHashCode = (iD + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.t;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.x;
        return iHashCode2 + (l3 != null ? l3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbV = dj7.v("SbaRootEntryInfo(name=", this.a, ", order=", this.b, ", entryOffset=");
        sbV.append(this.c);
        fz5.r(sbV, ", payloadOffset=", this.d, ", payloadSize=");
        sbV.append(this.e);
        fz5.r(sbV, ", compressedSize=", this.f, ", tarSize=");
        sbV.append(this.k);
        sbV.append(", compression=");
        sbV.append(this.n);
        sbV.append(", encryption=");
        sbV.append(this.p);
        sbV.append(", flags=");
        sbV.append(this.q);
        sbV.append(", tarEntryCount=");
        sbV.append(this.r);
        sbV.append(", regularFileCount=");
        sbV.append(this.t);
        sbV.append(", directoryCount=");
        sbV.append(this.x);
        sbV.append(")");
        return sbV.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.e);
        parcel.writeLong(this.f);
        parcel.writeLong(this.k);
        this.n.writeToParcel(parcel, i);
        parcel.writeString(this.p);
        parcel.writeInt(this.q);
        Long l = this.r;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l);
        }
        Long l2 = this.t;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l2);
        }
        Long l3 = this.x;
        if (l3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l3);
        }
    }
}
