package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a29 extends i5 implements fn6 {
    public static final Parcelable.Creator<a29> CREATOR = new r39(6);
    public final List a;
    public final String b;

    public a29(String str, ArrayList arrayList) {
        this.a = arrayList;
        this.b = str;
    }

    @Override // defpackage.fn6
    public final Status getStatus() {
        return this.b != null ? Status.e : Status.p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.x0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.G0(parcel, iF0);
    }
}
