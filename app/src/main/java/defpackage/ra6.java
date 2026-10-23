package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ra6 extends i5 {
    public static final Parcelable.Creator<ra6> CREATOR;
    public final wa6 a;
    public final wk9 b;
    public final List c;

    static {
        pb9.x(2, od2.g, od2.h);
        CREATOR = new m10(12);
    }

    public ra6(String str, byte[] bArr, ArrayList arrayList) {
        wk9 wk9Var = wk9.c;
        wk9 wk9VarL = wk9.l(bArr, bArr.length);
        ly8.h(str);
        try {
            this.a = wa6.c(str);
            this.b = wk9VarL;
            this.c = arrayList;
        } catch (va6 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ra6)) {
            return false;
        }
        ra6 ra6Var = (ra6) obj;
        List list = ra6Var.c;
        if (!this.a.equals(ra6Var.a) || !x13.m(this.b, ra6Var.b)) {
            return false;
        }
        List list2 = this.c;
        if (list2 == null && list == null) {
            return true;
        }
        return list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.a);
        String strT = cy0.t(this.b.o());
        return dj7.n(u48.p("PublicKeyCredentialDescriptor{\n type=", strValueOf, ", \n id=", strT, ", \n transports="), String.valueOf(this.c), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        this.a.getClass();
        yc9.w0(parcel, 2, "public-key");
        yc9.o0(parcel, 3, this.b.o());
        yc9.z0(parcel, 4, this.c);
        yc9.G0(parcel, iF0);
    }
}
