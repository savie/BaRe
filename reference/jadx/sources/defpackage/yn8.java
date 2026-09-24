package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yn8 implements Parcelable, jl0 {
    public static final Parcelable.Creator<yn8> CREATOR = new mk(6);
    public final q63 a;
    public final long b;
    public final long c;
    public final String d;
    public final String e;
    public final String f;
    public final boolean k;
    public boolean n;

    public yn8(q63 q63Var, long j, long j2, String str, String str2, String str3, boolean z) {
        q63Var.getClass();
        this.a = q63Var;
        this.b = j;
        this.c = j2;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.k = z;
        this.n = q63Var.v().length() < 2;
    }

    public static yn8 c(yn8 yn8Var, int i) {
        q63 q63Var = yn8Var.a;
        long j = yn8Var.b;
        long j2 = yn8Var.c;
        String str = yn8Var.d;
        String str2 = yn8Var.e;
        String str3 = yn8Var.f;
        boolean z = (i & 64) != 0 ? yn8Var.k : true;
        yn8Var.getClass();
        q63Var.getClass();
        return new yn8(q63Var, j, j2, str, str2, str3, z);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yn8)) {
            return false;
        }
        yn8 yn8Var = (yn8) obj;
        return pe4.d(this.a, yn8Var.a) && this.b == yn8Var.b && this.c == yn8Var.c && pe4.d(this.d, yn8Var.d) && pe4.d(this.e, yn8Var.e) && pe4.d(this.f, yn8Var.f) && this.k == yn8Var.k;
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        return c(this, 127);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a.v();
    }

    public final int hashCode() {
        int iF = xs1.f(this.c, xs1.f(this.b, this.a.a.hashCode() * 31, 31), 31);
        String str = this.d;
        int iHashCode = (iF + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        return Boolean.hashCode(this.k) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Wall(localBackupFile=");
        sb.append(this.a);
        sb.append(", modifiedTime=");
        sb.append(this.b);
        fz5.r(sb, ", fileSize=", this.c, ", name=");
        xs1.t(sb, this.d, ", driveId=", this.e, ", thumbnailLink=");
        sb.append(this.f);
        sb.append(", isDownloaded=");
        sb.append(this.k);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeSerializable(this.a);
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.k ? 1 : 0);
    }

    public /* synthetic */ yn8(q63 q63Var, long j, long j2, String str, int i) {
        this(q63Var, j, j2, (i & 8) != 0 ? null : str, null, null, (i & 64) == 0);
    }
}
