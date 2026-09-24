package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ka9 extends i5 {
    public static final Parcelable.Creator<ka9> CREATOR = new b90(14);
    public final int a;
    public String b;

    public ka9(int i, String str) {
        this.a = i;
        this.b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.G0(parcel, iF0);
    }

    public ka9() {
        this.a = 1;
    }
}
