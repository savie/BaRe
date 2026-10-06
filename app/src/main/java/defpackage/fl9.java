package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fl9 extends i5 {
    public static final Parcelable.Creator<fl9> CREATOR = new mn0(10);
    public final boolean a;
    public final wk9 b;

    public fl9(boolean z, wk9 wk9Var) {
        this.a = z;
        this.b = wk9Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fl9)) {
            return false;
        }
        fl9 fl9Var = (fl9) obj;
        return this.a == fl9Var.a && x13.m(this.b, fl9Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.a), this.b});
    }

    public final JSONObject n() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.a) {
                jSONObject.put("enabled", true);
            }
            wk9 wk9Var = this.b;
            byte[] bArrO = wk9Var == null ? null : wk9Var.o();
            if (bArrO != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("first", Base64.encodeToString(Arrays.copyOf(bArrO, 32), 11));
                if (bArrO.length == 64) {
                    jSONObject2.put("second", Base64.encodeToString(Arrays.copyOfRange(bArrO, 32, 64), 11));
                }
                jSONObject.put("results", jSONObject2);
            }
            return jSONObject;
        } catch (JSONException e) {
            e6.i("Error encoding AuthenticationExtensionsPrfOutputs to JSON object", e);
            return null;
        }
    }

    public final String toString() {
        return eq3.k("AuthenticationExtensionsPrfOutputs{", n().toString(), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a ? 1 : 0);
        wk9 wk9Var = this.b;
        yc9.o0(parcel, 2, wk9Var == null ? null : wk9Var.o());
        yc9.G0(parcel, iF0);
    }
}
