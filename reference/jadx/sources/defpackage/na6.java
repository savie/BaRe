package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class na6 extends i5 {
    public static final Parcelable.Creator<na6> CREATOR = new b90(11);
    public final String a;
    public final String b;
    public final wk9 c;
    public final n80 d;
    public final m80 e;
    public final o80 f;
    public final j80 k;
    public final String n;

    public na6(String str, String str2, byte[] bArr, n80 n80Var, m80 m80Var, o80 o80Var, j80 j80Var, String str3) {
        wk9 wk9VarL = bArr == null ? null : wk9.l(bArr, bArr.length);
        boolean z = false;
        ly8.b("Must provide a response object.", (n80Var != null && m80Var == null && o80Var == null) || (n80Var == null && m80Var != null && o80Var == null) || (n80Var == null && m80Var == null && o80Var != null));
        if (o80Var != null || (str != null && wk9VarL != null)) {
            z = true;
        }
        ly8.b("Must provide id and rawId if not an error response.", z);
        this.a = str;
        this.b = str2;
        this.c = wk9VarL;
        this.d = n80Var;
        this.e = m80Var;
        this.f = o80Var;
        this.k = j80Var;
        this.n = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof na6)) {
            return false;
        }
        na6 na6Var = (na6) obj;
        return x13.m(this.a, na6Var.a) && x13.m(this.b, na6Var.b) && x13.m(this.c, na6Var.c) && x13.m(this.d, na6Var.d) && x13.m(this.e, na6Var.e) && x13.m(this.f, na6Var.f) && x13.m(this.k, na6Var.k) && x13.m(this.n, na6Var.n);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.e, this.d, this.f, this.k, this.n});
    }

    public final d80 n() {
        n80 n80Var = this.d;
        if (n80Var != null) {
            return n80Var;
        }
        m80 m80Var = this.e;
        if (m80Var != null) {
            return m80Var;
        }
        o80 o80Var = this.f;
        if (o80Var != null) {
            return o80Var;
        }
        l0.e("No response set.");
        return null;
    }

    public final String toString() {
        wk9 wk9Var = this.c;
        String strT = cy0.t(wk9Var == null ? null : wk9Var.o());
        String strValueOf = String.valueOf(this.d);
        String strValueOf2 = String.valueOf(this.e);
        String strValueOf3 = String.valueOf(this.f);
        String strValueOf4 = String.valueOf(this.k);
        StringBuilder sbP = u48.p("PublicKeyCredential{\n id='", this.a, "', \n type='", this.b, "', \n rawId=");
        xs1.t(sbP, strT, ", \n registerResponse=", strValueOf, ", \n signResponse=");
        xs1.t(sbP, strValueOf2, ", \n errorResponse=", strValueOf3, ", \n extensionsClientOutputs=");
        return eq3.o(sbP, strValueOf4, ", \n authenticatorAttachment='", this.n, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        nn9.a.p();
        throw null;
    }
}
