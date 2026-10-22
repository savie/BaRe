package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m17 implements Parcelable {
    public static final Parcelable.Creator<m17> CREATOR = new r39(4);
    public final String a;
    public final String b;
    public final String c;
    public final int d;
    public final char[] e;
    public final ArrayList f;
    public final long k;
    public final boolean n;

    public m17(String str, String str2, String str3, int i, char[] cArr, ArrayList arrayList, long j, boolean z) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        this.e = cArr;
        this.f = arrayList;
        this.k = j;
        this.n = z;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d);
        parcel.writeCharArray(this.e);
        parcel.writeStringList(this.f);
        parcel.writeLong(this.k);
        parcel.writeInt(this.n ? 1 : 0);
    }
}
