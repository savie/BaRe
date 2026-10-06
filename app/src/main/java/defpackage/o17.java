package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o17 implements Parcelable {
    public static final Parcelable.Creator<o17> CREATOR = new mk(4);
    public final long G;
    public final long H;
    public final long I;
    public final long a;
    public final int b;
    public final int c;
    public final int d;
    public final String e;
    public final String f;
    public final long k;
    public final long n;
    public final String p;
    public final long q;
    public final long r;
    public final long t;
    public final long x;
    public final long y;

    public /* synthetic */ o17(long j, int i, int i2, int i3, String str, String str2, long j2, long j3, String str3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, int i4) {
        this(j, i, i2, (i4 & 8) != 0 ? 0 : i3, str, str2, j2, j3, str3, (i4 & 512) != 0 ? 0L : j4, (i4 & 1024) != 0 ? 0L : j5, (i4 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? 0L : j6, (i4 & 4096) != 0 ? 0L : j7, (i4 & 8192) != 0 ? 0L : j8, (i4 & 16384) != 0 ? 0L : j9, (32768 & i4) != 0 ? 0L : j10, (i4 & 65536) != 0 ? 0L : j11);
    }

    public static o17 c(o17 o17Var) {
        return new o17(o17Var.a, 1, o17Var.c, o17Var.d, o17Var.e, o17Var.f, o17Var.k, o17Var.n, o17Var.p, o17Var.q, o17Var.r, o17Var.t, o17Var.x, o17Var.y, o17Var.G, o17Var.H, o17Var.I);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o17)) {
            return false;
        }
        o17 o17Var = (o17) obj;
        return this.a == o17Var.a && this.b == o17Var.b && this.c == o17Var.c && this.d == o17Var.d && pe4.d(this.e, o17Var.e) && pe4.d(this.f, o17Var.f) && this.k == o17Var.k && this.n == o17Var.n && pe4.d(this.p, o17Var.p) && this.q == o17Var.q && this.r == o17Var.r && this.t == o17Var.t && this.x == o17Var.x && this.y == o17Var.y && this.G == o17Var.G && this.H == o17Var.H && this.I == o17Var.I;
    }

    public final int hashCode() {
        int iD = eq3.d(this.d, eq3.d(this.c, eq3.d(this.b, Long.hashCode(this.a) * 31, 31), 31), 31);
        String str = this.e;
        int iHashCode = (iD + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        int iF = xs1.f(this.n, xs1.f(this.k, (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31), 31);
        String str3 = this.p;
        return Long.hashCode(this.I) + xs1.f(this.H, xs1.f(this.G, xs1.f(this.y, xs1.f(this.x, xs1.f(this.t, xs1.f(this.r, xs1.f(this.q, (iF + (str3 != null ? str3.hashCode() : 0)) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SbaRootResult(operationId=");
        sb.append(this.a);
        sb.append(", state=");
        sb.append(this.b);
        sb.append(", errorCode=");
        sb.append(this.c);
        sb.append(", errorSubCode=");
        sb.append(this.d);
        xs1.t(sb, ", errorMessage=", this.e, ", outputPath=", this.f);
        fz5.r(sb, ", bytesProcessed=", this.k, ", durationMillis=");
        sb.append(this.n);
        sb.append(", diagnostics=");
        sb.append(this.p);
        fz5.r(sb, ", tarEntryCount=", this.q, ", tarRegularFileCount=");
        sb.append(this.r);
        fz5.r(sb, ", tarDirectoryCount=", this.t, ", tarSymlinkCount=");
        sb.append(this.x);
        fz5.r(sb, ", tarHardlinkCount=", this.y, ", tarOtherEntryCount=");
        sb.append(this.G);
        fz5.r(sb, ", tarSkippedEntryCount=", this.H, ", tarRegularFileBytes=");
        return dj7.h(this.I, ")", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeLong(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeLong(this.k);
        parcel.writeLong(this.n);
        parcel.writeString(this.p);
        parcel.writeLong(this.q);
        parcel.writeLong(this.r);
        parcel.writeLong(this.t);
        parcel.writeLong(this.x);
        parcel.writeLong(this.y);
        parcel.writeLong(this.G);
        parcel.writeLong(this.H);
        parcel.writeLong(this.I);
    }

    public o17(long j, int i, int i2, int i3, String str, String str2, long j2, long j3, String str3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11) {
        this.a = j;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = str;
        this.f = str2;
        this.k = j2;
        this.n = j3;
        this.p = str3;
        this.q = j4;
        this.r = j5;
        this.t = j6;
        this.x = j7;
        this.y = j8;
        this.G = j9;
        this.H = j10;
        this.I = j11;
    }
}
