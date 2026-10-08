package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lk3 implements Parcelable, jl0 {
    public static final Parcelable.Creator<lk3> CREATOR = new b90(2);
    public final String a;
    public final int b;
    public final String c;
    public final int d;
    public final int e;
    public final boolean f;
    public final int k;
    public final int n;

    public lk3(String str, int i, String str2, int i2, int i3, boolean z, int i4, int i5) {
        str.getClass();
        this.a = str;
        this.b = i;
        this.c = str2;
        this.d = i2;
        this.e = i3;
        this.f = z;
        this.k = i4;
        this.n = i5;
    }

    public final boolean c() {
        if (!this.f) {
            return false;
        }
        String str = this.a;
        return (pe4.d(str, "Delete backups") || pe4.d(str, "New folder setup") || pe4.d(str, "Copy folder setups")) ? false : true;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lk3)) {
            return false;
        }
        lk3 lk3Var = (lk3) obj;
        return pe4.d(this.a, lk3Var.a) && this.b == lk3Var.b && pe4.d(this.c, lk3Var.c) && this.d == lk3Var.d && this.e == lk3Var.e && this.f == lk3Var.f && this.k == lk3Var.k && this.n == lk3Var.n;
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.a;
        str.getClass();
        return new lk3(str, this.b, this.c, this.d, this.e, this.f, this.k, this.n);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        int iD = eq3.d(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        return Integer.hashCode(this.n) + eq3.d(this.k, fz5.h(eq3.d(this.e, eq3.d(this.d, (iD + (str == null ? 0 : str.hashCode())) * 31, 31), 31), 31, this.f), 31);
    }

    public final String toString() {
        return "FolderBatchActionItem(id='" + this.a + "', isCloudSection=" + this.f + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f ? 1 : 0);
        parcel.writeInt(this.k);
        parcel.writeInt(this.n);
    }
}
