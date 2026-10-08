package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sp0 extends i5 {
    public static final Parcelable.Creator<sp0> CREATOR = new r39(8);
    public final boolean a;
    public final String b;
    public final String c;
    public final boolean d;
    public final String e;
    public final ArrayList f;
    public final boolean k;
    public final List n;
    public final String p;

    public sp0(boolean z, String str, String str2, boolean z2, String str3, ArrayList arrayList, boolean z3, ArrayList arrayList2, String str4) {
        boolean z4 = true;
        if (z2 && z3) {
            z4 = false;
        }
        ly8.b("filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups.", z4);
        this.a = z;
        if (z) {
            ly8.i(str, "serverClientId must be provided if Google ID tokens are requested");
        }
        this.b = str;
        this.c = str2;
        this.d = z2;
        ArrayList arrayList3 = null;
        if (arrayList != null && !arrayList.isEmpty()) {
            arrayList3 = new ArrayList(arrayList);
            Collections.sort(arrayList3);
        }
        this.f = arrayList3;
        this.e = str3;
        this.k = z3;
        this.n = arrayList2;
        this.p = str4;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof sp0)) {
            return false;
        }
        sp0 sp0Var = (sp0) obj;
        return this.a == sp0Var.a && x13.m(this.b, sp0Var.b) && x13.m(this.c, sp0Var.c) && this.d == sp0Var.d && x13.m(this.e, sp0Var.e) && x13.m(this.f, sp0Var.f) && this.k == sp0Var.k && x13.m(this.n, sp0Var.n) && x13.m(this.p, sp0Var.p);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.a), this.b, this.c, Boolean.valueOf(this.d), this.e, this.f, Boolean.valueOf(this.k), this.n, this.p});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a ? 1 : 0);
        yc9.w0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        yc9.w0(parcel, 5, this.e);
        yc9.x0(parcel, 6, this.f);
        yc9.D0(parcel, 7, 4);
        parcel.writeInt(this.k ? 1 : 0);
        yc9.z0(parcel, 8, this.n);
        yc9.w0(parcel, 9, this.p);
        yc9.G0(parcel, iF0);
    }
}
