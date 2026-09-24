package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d17 implements Parcelable {
    public static final Parcelable.Creator<d17> CREATOR = new f9(4);
    public final int a;
    public final int b;
    public final long c;
    public final g17 d;
    public final int e;
    public final int f;
    public final String k;
    public final int n;
    public final int p;
    public final int q;
    public final int r;
    public final n17 t;

    public d17(int i, int i2, long j, g17 g17Var, int i3, int i4, String str, int i5, int i6, int i7, int i8, n17 n17Var) {
        g17Var.getClass();
        str.getClass();
        n17Var.getClass();
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = g17Var;
        this.e = i3;
        this.f = i4;
        this.k = str;
        this.n = i5;
        this.p = i6;
        this.q = i7;
        this.r = i8;
        this.t = n17Var;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d17)) {
            return false;
        }
        d17 d17Var = (d17) obj;
        return this.a == d17Var.a && this.b == d17Var.b && this.c == d17Var.c && pe4.d(this.d, d17Var.d) && this.e == d17Var.e && this.f == d17Var.f && pe4.d(this.k, d17Var.k) && this.n == d17Var.n && this.p == d17Var.p && this.q == d17Var.q && this.r == d17Var.r && pe4.d(this.t, d17Var.t);
    }

    public final int hashCode() {
        return this.t.hashCode() + eq3.d(this.r, eq3.d(this.q, eq3.d(this.p, eq3.d(this.n, fz5.g(eq3.d(this.f, eq3.d(this.e, (this.d.hashCode() + xs1.f(this.c, eq3.d(this.b, Integer.hashCode(this.a) * 31, 31), 31)) * 31, 31), 31), 31, this.k), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbN = xs1.n("SbaRootArchiveHeaderInfo(headerSize=", this.a, ", flags=", ", createdAtEpochMs=", this.b);
        sbN.append(this.c);
        sbN.append(", compression=");
        sbN.append(this.d);
        sbN.append(", compressionMethodId=");
        sbN.append(this.e);
        sbN.append(", compressionLevel=");
        sbN.append(this.f);
        sbN.append(", encryption=");
        sbN.append(this.k);
        sbN.append(", encryptionMethodId=");
        sbN.append(this.n);
        sbN.append(", kdfMethodId=");
        sbN.append(this.p);
        sbN.append(", kdfIterations=");
        sbN.append(this.q);
        sbN.append(", payloadChunkSize=");
        sbN.append(this.r);
        sbN.append(", kdf=");
        sbN.append(this.t);
        sbN.append(")");
        return sbN.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeLong(this.c);
        this.d.writeToParcel(parcel, i);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeString(this.k);
        parcel.writeInt(this.n);
        parcel.writeInt(this.p);
        parcel.writeInt(this.q);
        parcel.writeInt(this.r);
        this.t.writeToParcel(parcel, i);
    }
}
