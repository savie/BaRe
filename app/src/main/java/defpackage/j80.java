package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j80 extends i5 {
    public static final Parcelable.Creator<j80> CREATOR = new mk(15);
    public final oi8 a;
    public final rh9 b;
    public final k80 c;
    public final fl9 d;
    public final String e;

    public j80(oi8 oi8Var, rh9 rh9Var, k80 k80Var, fl9 fl9Var, String str) {
        this.a = oi8Var;
        this.b = rh9Var;
        this.c = k80Var;
        this.d = fl9Var;
        this.e = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j80)) {
            return false;
        }
        j80 j80Var = (j80) obj;
        return x13.m(this.a, j80Var.a) && x13.m(this.b, j80Var.b) && x13.m(this.c, j80Var.c) && x13.m(this.d, j80Var.d) && x13.m(this.e, j80Var.e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d, this.e});
    }

    public final JSONObject n() {
        try {
            JSONObject jSONObject = new JSONObject();
            k80 k80Var = this.c;
            if (k80Var != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("rk", k80Var.a);
                    jSONObject.put("credProps", jSONObject2);
                } catch (JSONException e) {
                    throw new RuntimeException("Error encoding AuthenticationExtensionsCredPropsOutputs to JSON object", e);
                }
            }
            oi8 oi8Var = this.a;
            if (oi8Var != null) {
                jSONObject.put("uvm", oi8Var.n());
            }
            fl9 fl9Var = this.d;
            if (fl9Var != null) {
                jSONObject.put("prf", fl9Var.n());
            }
            String str = this.e;
            if (str != null) {
                jSONObject.put("txAuthSimple", str);
            }
            return jSONObject;
        } catch (JSONException e2) {
            e6.i("Error encoding AuthenticationExtensionsClientOutputs to JSON object", e2);
            return null;
        }
    }

    public final String toString() {
        return eq3.k("AuthenticationExtensionsClientOutputs{", n().toString(), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.v0(parcel, 2, this.b, i);
        yc9.v0(parcel, 3, this.c, i);
        yc9.v0(parcel, 4, this.d, i);
        yc9.w0(parcel, 5, this.e);
        yc9.G0(parcel, iF0);
    }
}
