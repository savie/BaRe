package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import org.swiftapps.swiftbackup.appconfigs.data.Config;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k30 implements Parcelable, jl0 {
    public static final Parcelable.Creator<k30> CREATOR = new m8(2);
    public final String a;
    public final Config b;
    public final int c;
    public final int d;
    public final boolean e;
    public final int f;
    public final int k;
    public final gv7 n;

    public k30(String str, Config config, int i, int i2, boolean z, int i3, int i4) {
        str.getClass();
        config.getClass();
        this.a = str;
        this.b = config;
        this.c = i;
        this.d = i2;
        this.e = z;
        this.f = i3;
        this.k = i4;
        this.n = new gv7(new sm(2));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k30)) {
            return false;
        }
        k30 k30Var = (k30) obj;
        return pe4.d(this.a, k30Var.a) && pe4.d(this.b, k30Var.b) && this.c == k30Var.c && this.d == k30Var.d && this.e == k30Var.e && this.f == k30Var.f && this.k == k30Var.k;
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.a;
        str.getClass();
        Config config = this.b;
        config.getClass();
        return new k30(str, config, this.c, this.d, this.e, this.f, this.k);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.k) + eq3.d(this.f, fz5.h(eq3.d(this.d, eq3.d(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31), 31), 31, this.e), 31);
    }

    public final String toString() {
        return eq3.k("AppsConfigRunItem(id='", this.a, "')");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        this.b.writeToParcel(parcel, i);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e ? 1 : 0);
        parcel.writeInt(this.f);
        parcel.writeInt(this.k);
    }
}
