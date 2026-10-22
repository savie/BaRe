package defpackage;

import android.text.TextUtils;
import android.util.Log;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class r99 {
    public static final u50 a = new u50("JSONParser", new String[0]);

    public static k50 a(JSONObject jSONObject) throws JSONException {
        k50 k50Var = new k50(0);
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objA = jSONObject.get(next);
            if (objA instanceof JSONArray) {
                objA = b((JSONArray) objA);
            } else if (objA instanceof JSONObject) {
                objA = a((JSONObject) objA);
            }
            k50Var.put(next, objA);
        }
        return k50Var;
    }

    public static ArrayList b(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object objA = jSONArray.get(i);
            if (objA instanceof JSONArray) {
                objA = b((JSONArray) objA);
            } else if (objA instanceof JSONObject) {
                objA = a((JSONObject) objA);
            }
            arrayList.add(objA);
        }
        return arrayList;
    }

    public static Map c(String str) {
        ly8.e(str);
        gl9 gl9Var = new gl9('.');
        nh nhVar = new nh(24);
        nhVar.b = gl9Var;
        List listJ = new fu(nhVar).j(str);
        if (listJ.size() < 2) {
            a.d("Invalid idToken ".concat(str), new Object[0]);
            return new HashMap();
        }
        k50 k50VarD = d(new String(cy0.p((String) listJ.get(1)), StandardCharsets.UTF_8));
        return k50VarD == null ? new HashMap() : k50VarD;
    }

    public static k50 d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject != JSONObject.NULL) {
                return a(jSONObject);
            }
            return null;
        } catch (Exception e) {
            Log.d("JSONParser", "Failed to parse JSONObject into Map.");
            throw new e2a(e);
        }
    }
}
