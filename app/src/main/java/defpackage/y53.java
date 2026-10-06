package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y53 extends i5 {
    public static final Parcelable.Creator<y53> CREATOR = new yj0(10);
    public final String a;
    public final int b;
    public final long c;
    public final boolean d;

    public y53(String str, int i, long j, boolean z) {
        this.a = str;
        this.b = i;
        this.c = j;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof y53) {
            y53 y53Var = (y53) obj;
            if (x13.m(this.a, y53Var.a) && n() == y53Var.n() && this.d == y53Var.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Long.valueOf(n()), Boolean.valueOf(this.d)});
    }

    public final long n() {
        long j = this.c;
        return j == -1 ? this.b : j;
    }

    public final String toString() {
        ib ibVar = new ib(this);
        ibVar.b(this.a, "name");
        ibVar.b(Long.valueOf(n()), "version");
        ibVar.b(Boolean.valueOf(this.d), "is_fully_rolled_out");
        return ibVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(this.b);
        long jN = n();
        yc9.D0(parcel, 3, 8);
        parcel.writeLong(jN);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        yc9.G0(parcel, iF0);
    }

    public y53(String str, long j) {
        this(str, -1, j, false);
    }
}
