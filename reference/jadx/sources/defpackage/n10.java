package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n10 implements Parcelable, jl0, c8 {
    public static final Parcelable.Creator<n10> CREATOR = new m10(0);
    public final String a;
    public final int b;
    public final int c;
    public final String d;
    public final int e;
    public final int f;
    public final boolean k;
    public final boolean n;
    public final int p;
    public final int q;

    public n10(String str, int i, int i2, String str2, int i3, int i4, boolean z, boolean z2, int i5, int i6) {
        str.getClass();
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = str2;
        this.e = i3;
        this.f = i4;
        this.k = z;
        this.n = z2;
        this.p = i5;
        this.q = i6;
    }

    @Override // defpackage.c8
    public final boolean c() {
        if (!this.k) {
            String str = this.a;
            if (!pe4.d(str, "Sync backups") && !pe4.d(str, "Apply labels")) {
                return false;
            }
        }
        return !g();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // defpackage.c8
    public final int e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n10)) {
            return false;
        }
        n10 n10Var = (n10) obj;
        return pe4.d(this.a, n10Var.a) && this.b == n10Var.b && this.c == n10Var.c && pe4.d(this.d, n10Var.d) && this.e == n10Var.e && this.f == n10Var.f && this.k == n10Var.k && this.n == n10Var.n && this.p == n10Var.p && this.q == n10Var.q;
    }

    @Override // defpackage.c8
    public final boolean g() {
        String str = this.a;
        return pe4.d(str, "Uninstall") || pe4.d(str, "Delete backups") || pe4.d(str, "Enable/Disable apps");
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.a;
        str.getClass();
        return new n10(str, this.b, this.c, this.d, this.e, this.f, this.k, this.n, this.p, this.q);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        int iD = eq3.d(this.c, eq3.d(this.b, this.a.hashCode() * 31, 31), 31);
        String str = this.d;
        return Integer.hashCode(this.q) + eq3.d(this.p, fz5.h(fz5.h(eq3.d(this.f, eq3.d(this.e, (iD + (str == null ? 0 : str.hashCode())) * 31, 31), 31), 31, this.k), 31, this.n), 31);
    }

    @Override // defpackage.c8
    public final boolean l() {
        return this.k;
    }

    @Override // defpackage.c8
    public final int m() {
        return this.q;
    }

    @Override // defpackage.c8
    public final int n() {
        return this.p;
    }

    public final String toString() {
        return "AppsBatchActionItem(id='" + this.a + "', isCloudSection=" + this.k + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeInt(this.n ? 1 : 0);
        parcel.writeInt(this.p);
        parcel.writeInt(this.q);
    }
}
