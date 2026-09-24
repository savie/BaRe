package defpackage;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class du9 implements t91, f59 {
    public static final du9 c;
    public static final du9 d;
    public static final du9 e;
    public static final du9 f;
    public final /* synthetic */ int a;
    public String b;

    static {
        int i = 0;
        c = new du9("TINK", i);
        d = new du9("CRUNCHY", i);
        e = new du9("LEGACY", i);
        f = new du9("NO_PREFIX", i);
    }

    public /* synthetic */ du9(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.t91
    public Map i(String str) {
        HashMap map = new HashMap();
        map.put("client_id", str);
        map.put("client_secret", this.b);
        return map;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return this.b;
            case 1:
            default:
                return super.toString();
            case 2:
                return "<" + this.b + '>';
        }
    }

    @Override // defpackage.f59
    public f59 zza(String str) throws d49 {
        try {
            JSONObject jSONObject = new JSONObject(new JSONObject(str).getString("error"));
            jSONObject.getInt("code");
            this.b = jSONObject.getString("message");
            return this;
        } catch (NullPointerException | JSONException e2) {
            Log.e("du9", "Failed to parse error for string [" + str + "] with exception: " + e2.getMessage());
            throw new d49(eq3.k("Failed to parse error for string [", str, "]"), e2);
        }
    }

    public /* synthetic */ du9(int i) {
        this.a = i;
    }
}
