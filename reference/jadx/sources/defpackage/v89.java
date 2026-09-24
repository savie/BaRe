package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v89 extends i5 {
    public static final Parcelable.Creator<v89> CREATOR = new mn0(8);
    public final String a;
    public final String b;
    public final String c;

    public v89(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public static final v89 n(JSONObject jSONObject) {
        return new v89(jSONObject.getString("credentialId"), jSONObject.getString("name"), jSONObject.getString("displayName"));
    }

    public static x89 q(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            q69 q69Var = z59.f;
            return x89.p;
        }
        q69 q69Var2 = z59.f;
        Object[] objArrCopyOf = new Object[4];
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < jSONArray.length()) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            v89 v89Var = new v89(jSONObject.getString("credentialId"), jSONObject.getString("name"), jSONObject.getString("displayName"));
            int iM0 = jb9.m0(objArrCopyOf.length, i2 + 1);
            if (iM0 > objArrCopyOf.length || z) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iM0);
                z = false;
            }
            objArrCopyOf[i2] = v89Var;
            i++;
            i2++;
        }
        return i2 == 0 ? x89.p : new x89(i2, objArrCopyOf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.G0(parcel, iF0);
    }
}
