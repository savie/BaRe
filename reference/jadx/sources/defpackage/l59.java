package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l59 implements gx6 {
    public static final Parcelable.Creator<l59> CREATOR = new u80(12);
    public final long a;
    public final long b;

    public l59(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public static l59 c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new l59(jSONObject.getLong("lastSignInTimestamp"), jSONObject.getLong("creationTimestamp"));
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 8);
        parcel.writeLong(this.a);
        yc9.D0(parcel, 2, 8);
        parcel.writeLong(this.b);
        yc9.G0(parcel, iF0);
    }
}
