package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v80 implements Parcelable {
    public static final Parcelable.Creator<v80> CREATOR = new u80(0);
    public final f90 a;
    public final h90 b;
    public final String c;
    public final long d;
    public final long e;
    public final String f;
    public final String k;
    public final String n;

    public v80(Parcel parcel) {
        this.a = (f90) parcel.readParcelable(f90.class.getClassLoader());
        this.b = (h90) parcel.readSerializable();
        this.c = parcel.readString();
        this.d = parcel.readLong();
        this.e = parcel.readLong();
        this.f = parcel.readString();
        this.k = parcel.readString();
        this.n = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v80.class != obj.getClass()) {
            return false;
        }
        v80 v80Var = (v80) obj;
        if (this.d == v80Var.d && this.e == v80Var.e && this.a.equals(v80Var.a) && this.b == v80Var.b && Objects.equals(this.c, v80Var.c) && Objects.equals(this.f, v80Var.f) && Objects.equals(this.k, v80Var.k)) {
            return Objects.equals(this.n, v80Var.n);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        String str = this.c;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        long j = this.d;
        int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.e;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str2 = this.f;
        int iHashCode3 = (i2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.k;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.n;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AuthorizationData{request=");
        sb.append(this.a);
        sb.append(", result=");
        sb.append(this.b);
        sb.append(", token='");
        sb.append(this.c);
        sb.append("', userId=");
        sb.append(this.d);
        sb.append(", locationId=");
        sb.append(this.e);
        sb.append(", authCode='");
        sb.append(this.f);
        sb.append("', apiHost='");
        sb.append(this.k);
        sb.append("', errorMessage='");
        return dj7.n(sb, this.n, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeSerializable(this.b);
        parcel.writeString(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.k);
        parcel.writeString(this.n);
    }

    public v80(f90 f90Var, h90 h90Var, String str, long j, long j2, String str2, String str3, String str4) {
        this.a = f90Var;
        this.b = h90Var;
        this.c = str;
        this.d = j;
        this.e = j2;
        this.f = str2;
        this.k = str3;
        this.n = str4;
    }
}
