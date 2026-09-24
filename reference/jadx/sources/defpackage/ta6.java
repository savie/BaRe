package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ta6 extends d80 {
    public static final Parcelable.Creator<ta6> CREATOR = new mk(12);
    public final byte[] a;
    public final Double b;
    public final String c;
    public final List d;
    public final Integer e;
    public final f58 f;
    public final jh8 k;
    public final i80 n;
    public final Long p;
    public final ResultReceiver q;

    public ta6(byte[] bArr, Double d, String str, ArrayList arrayList, Integer num, f58 f58Var, String str2, i80 i80Var, Long l, String str3, ResultReceiver resultReceiver) {
        this.q = resultReceiver;
        if (str3 != null) {
            nn9.a.p();
            throw null;
        }
        ly8.h(bArr);
        this.a = bArr;
        this.b = d;
        ly8.h(str);
        this.c = str;
        this.d = arrayList;
        this.e = num;
        this.f = f58Var;
        this.p = l;
        if (str2 != null) {
            try {
                this.k = jh8.c(str2);
            } catch (n99 e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            this.k = null;
        }
        this.n = i80Var;
    }

    public final boolean equals(Object obj) {
        List list;
        if (!(obj instanceof ta6)) {
            return false;
        }
        ta6 ta6Var = (ta6) obj;
        List list2 = ta6Var.d;
        return Arrays.equals(this.a, ta6Var.a) && x13.m(this.b, ta6Var.b) && x13.m(this.c, ta6Var.c) && (((list = this.d) == null && list2 == null) || (list != null && list2 != null && list.containsAll(list2) && list2.containsAll(list))) && x13.m(this.e, ta6Var.e) && x13.m(this.f, ta6Var.f) && x13.m(this.k, ta6Var.k) && x13.m(this.n, ta6Var.n) && x13.m(this.p, ta6Var.p);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(Arrays.hashCode(this.a)), this.b, this.c, this.d, this.e, this.f, this.k, this.n, this.p});
    }

    public final String toString() {
        String strT = cy0.t(this.a);
        String strValueOf = String.valueOf(this.d);
        String strValueOf2 = String.valueOf(this.f);
        String strValueOf3 = String.valueOf(this.k);
        String strValueOf4 = String.valueOf(this.n);
        StringBuilder sbU = dj7.u("PublicKeyCredentialRequestOptions{\n challenge=", strT, ", \n timeoutSeconds=");
        sbU.append(this.b);
        sbU.append(", \n rpId='");
        xs1.t(sbU, this.c, "', \n allowList=", strValueOf, ", \n requestId=");
        sbU.append(this.e);
        sbU.append(", \n tokenBinding=");
        sbU.append(strValueOf2);
        sbU.append(", \n userVerification=");
        xs1.t(sbU, strValueOf3, ", \n authenticationExtensions=", strValueOf4, ", \n longRequestId=");
        sbU.append(this.p);
        sbU.append("}");
        return sbU.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.o0(parcel, 2, this.a);
        Double d = this.b;
        if (d != null) {
            yc9.D0(parcel, 3, 8);
            parcel.writeDouble(d.doubleValue());
        }
        yc9.w0(parcel, 4, this.c);
        yc9.z0(parcel, 5, this.d);
        yc9.p0(parcel, 6, this.e);
        yc9.v0(parcel, 7, this.f, i);
        jh8 jh8Var = this.k;
        yc9.w0(parcel, 8, jh8Var == null ? null : jh8Var.a);
        yc9.v0(parcel, 9, this.n, i);
        yc9.s0(parcel, 10, this.p);
        yc9.v0(parcel, 12, this.q, i);
        yc9.G0(parcel, iF0);
    }
}
