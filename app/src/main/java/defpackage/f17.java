package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f17 implements Parcelable {
    public static final Parcelable.Creator<f17> CREATOR = new eq1(7);
    public final String a;
    public final String b;
    public final int c;
    public final long d;
    public final String e;
    public final d17 f;
    public final e17 k;
    public final c17 n;
    public final ArrayList p;
    public final int q;

    public f17(String str, String str2, int i, long j, String str3, d17 d17Var, e17 e17Var, c17 c17Var, ArrayList arrayList, int i2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        d17Var.getClass();
        e17Var.getClass();
        c17Var.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = j;
        this.e = str3;
        this.f = d17Var;
        this.k = e17Var;
        this.n = c17Var;
        this.p = arrayList;
        this.q = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f17)) {
            return false;
        }
        f17 f17Var = (f17) obj;
        return pe4.d(this.a, f17Var.a) && pe4.d(this.b, f17Var.b) && this.c == f17Var.c && this.d == f17Var.d && pe4.d(this.e, f17Var.e) && pe4.d(this.f, f17Var.f) && pe4.d(this.k, f17Var.k) && pe4.d(this.n, f17Var.n) && this.p.equals(f17Var.p) && this.q == f17Var.q;
    }

    public final int hashCode() {
        return Integer.hashCode(this.q) + ((this.p.hashCode() + ((this.n.hashCode() + ((this.k.hashCode() + ((this.f.hashCode() + fz5.g(xs1.f(this.d, eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31), 31, this.e)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("SbaRootArchiveInfo(formatName=", this.a, ", magic=", this.b, ", version=");
        sbP.append(this.c);
        sbP.append(", fileSize=");
        sbP.append(this.d);
        sbP.append(", metadata=");
        sbP.append(this.e);
        sbP.append(", header=");
        sbP.append(this.f);
        sbP.append(", index=");
        sbP.append(this.k);
        sbP.append(", footer=");
        sbP.append(this.n);
        sbP.append(", entries=");
        sbP.append(this.p);
        sbP.append(", nextEntryStartIndex=");
        sbP.append(this.q);
        sbP.append(")");
        return sbP.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeLong(this.d);
        parcel.writeString(this.e);
        this.f.writeToParcel(parcel, i);
        this.k.writeToParcel(parcel, i);
        this.n.writeToParcel(parcel, i);
        ArrayList arrayList = this.p;
        parcel.writeInt(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((k17) it.next()).writeToParcel(parcel, i);
        }
        parcel.writeInt(this.q);
    }
}
