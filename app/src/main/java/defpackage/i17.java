package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i17 implements Parcelable {
    public static final Parcelable.Creator<i17> CREATOR = new b90(7);
    public final String a;
    public final ArrayList b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final char[] k;
    public final String n;
    public final long p;
    public final boolean q;

    public i17(String str, ArrayList arrayList, int i, int i2, int i3, int i4, char[] cArr, String str2, long j, boolean z) {
        str.getClass();
        this.a = str;
        this.b = arrayList;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.k = cArr;
        this.n = str2;
        this.p = j;
        this.q = z;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        ArrayList arrayList = this.b;
        parcel.writeInt(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((j17) it.next()).writeToParcel(parcel, i);
        }
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeCharArray(this.k);
        parcel.writeString(this.n);
        parcel.writeLong(this.p);
        parcel.writeInt(this.q ? 1 : 0);
    }
}
