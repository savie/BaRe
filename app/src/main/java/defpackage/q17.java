package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q17 implements Parcelable {
    public static final Parcelable.Creator<q17> CREATOR = new m8(14);
    public final ArrayList a;
    public final int b;

    public q17(ArrayList arrayList, int i) {
        this.a = arrayList;
        this.b = i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q17)) {
            return false;
        }
        q17 q17Var = (q17) obj;
        return this.a.equals(q17Var.a) && this.b == q17Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "SbaRootTarEntryList(entries=" + this.a + ", nextStartIndex=" + this.b + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        ArrayList arrayList = this.a;
        parcel.writeInt(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((p17) it.next()).writeToParcel(parcel, i);
        }
        parcel.writeInt(this.b);
    }
}
