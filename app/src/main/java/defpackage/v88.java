package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v88 extends uh5 {
    public static final Parcelable.Creator<v88> CREATOR = new fm(12);
    public final String a;
    public final String b;
    public final long c;
    public final i69 d;

    public v88(String str, String str2, long j, i69 i69Var) {
        ly8.e(str);
        this.a = str;
        this.b = str2;
        this.c = j;
        ly8.i(i69Var, "totpInfo cannot be null.");
        this.d = i69Var;
    }

    public static v88 u(JSONObject jSONObject) {
        if (!jSONObject.has("enrollmentTimestamp")) {
            c6.f("An enrollment timestamp in seconds of UTC time since Unix epoch is required to build a TotpMultiFactorInfo instance.");
            return null;
        }
        long jOptLong = jSONObject.optLong("enrollmentTimestamp");
        if (jSONObject.opt("totpInfo") != null) {
            return new v88(jSONObject.optString("uid"), jSONObject.optString("displayName"), jOptLong, new i69());
        }
        c6.f("A totpInfo is required to build a TotpMultiFactorInfo instance.");
        return null;
    }

    @Override // defpackage.uh5
    public final String n() {
        return "totp";
    }

    @Override // defpackage.uh5
    public final JSONObject q() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("factorIdKey", "totp");
            jSONObject.putOpt("uid", this.a);
            jSONObject.putOpt("displayName", this.b);
            jSONObject.putOpt("enrollmentTimestamp", Long.valueOf(this.c));
            jSONObject.putOpt("totpInfo", this.d);
            return jSONObject;
        } catch (JSONException e) {
            Log.d("TotpMultiFactorInfo", "Failed to jsonify this object");
            throw new e2a(e);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.D0(parcel, 3, 8);
        parcel.writeLong(this.c);
        yc9.v0(parcel, 4, this.d, i);
        yc9.G0(parcel, iF0);
    }
}
