package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oi8 extends i5 {
    public static final Parcelable.Creator<oi8> CREATOR = new mk(14);
    public final List a;

    public oi8(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof oi8)) {
            return false;
        }
        List list = ((oi8) obj).a;
        List list2 = this.a;
        if (list2 == null && list == null) {
            return true;
        }
        return list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2);
    }

    public final int hashCode() {
        List list = this.a;
        return Arrays.hashCode(new Object[]{list == null ? null : new HashSet(list)});
    }

    public final JSONArray n() {
        try {
            JSONArray jSONArray = new JSONArray();
            List list = this.a;
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    pi8 pi8Var = (pi8) list.get(i);
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put((int) pi8Var.c);
                    jSONArray2.put((int) pi8Var.b);
                    jSONArray2.put((int) pi8Var.c);
                    jSONArray.put(i, jSONArray2);
                }
            }
            return jSONArray;
        } catch (JSONException e) {
            e6.i("Error encoding UvmEntries to JSON object", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.z0(parcel, 1, this.a);
        yc9.G0(parcel, iF0);
    }
}
