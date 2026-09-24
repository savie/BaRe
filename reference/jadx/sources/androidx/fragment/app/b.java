package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import defpackage.ds3;
import defpackage.l0;
import defpackage.yj0;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new yj0(0);
    public final int[] a;
    public final ArrayList b;
    public final int[] c;
    public final int[] d;
    public final int e;
    public final String f;
    public final int k;
    public final int n;
    public final CharSequence p;
    public final int q;
    public final CharSequence r;
    public final ArrayList t;
    public final ArrayList x;
    public final boolean y;

    public b(a aVar) {
        int size = aVar.a.size();
        this.a = new int[size * 6];
        if (!aVar.g) {
            l0.e("Not on back stack");
            throw null;
        }
        this.b = new ArrayList(size);
        this.c = new int[size];
        this.d = new int[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            ds3 ds3Var = (ds3) aVar.a.get(i2);
            int i3 = i + 1;
            this.a[i] = ds3Var.a;
            ArrayList arrayList = this.b;
            o oVar = ds3Var.b;
            arrayList.add(oVar != null ? oVar.mWho : null);
            int[] iArr = this.a;
            iArr[i3] = ds3Var.c ? 1 : 0;
            iArr[i + 2] = ds3Var.d;
            iArr[i + 3] = ds3Var.e;
            int i4 = i + 5;
            iArr[i + 4] = ds3Var.f;
            i += 6;
            iArr[i4] = ds3Var.g;
            this.c[i2] = ds3Var.h.ordinal();
            this.d[i2] = ds3Var.i.ordinal();
        }
        this.e = aVar.f;
        this.f = aVar.i;
        this.k = aVar.t;
        this.n = aVar.j;
        this.p = aVar.k;
        this.q = aVar.l;
        this.r = aVar.m;
        this.t = aVar.n;
        this.x = aVar.o;
        this.y = aVar.p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.c);
        parcel.writeIntArray(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.k);
        parcel.writeInt(this.n);
        TextUtils.writeToParcel(this.p, parcel, 0);
        parcel.writeInt(this.q);
        TextUtils.writeToParcel(this.r, parcel, 0);
        parcel.writeStringList(this.t);
        parcel.writeStringList(this.x);
        parcel.writeInt(this.y ? 1 : 0);
    }

    public b(Parcel parcel) {
        this.a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.c = parcel.createIntArray();
        this.d = parcel.createIntArray();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.k = parcel.readInt();
        this.n = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.p = (CharSequence) creator.createFromParcel(parcel);
        this.q = parcel.readInt();
        this.r = (CharSequence) creator.createFromParcel(parcel);
        this.t = parcel.createStringArrayList();
        this.x = parcel.createStringArrayList();
        this.y = parcel.readInt() != 0;
    }
}
