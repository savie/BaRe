package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class of7 extends i5 {
    public static final Parcelable.Creator<of7> CREATOR = new fm(5);
    public final String a;
    public final String b;
    public final Bundle c;

    public of7(String str, String str2, Bundle bundle) {
        str.getClass();
        bundle.getClass();
        this.a = str;
        this.b = str2;
        this.c = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.n0(parcel, 3, this.c);
        yc9.G0(parcel, iF0);
    }
}
