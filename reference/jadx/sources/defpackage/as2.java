package defpackage;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class as2 implements bw1, e59 {
    public Object a = new int[10];
    public Object b = new int[10];
    public Serializable c = new int[10];
    public Object d = new int[10];
    public Object e = new int[10];

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) {
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            ev5 ev5VarI = ev5Var.i((String) this.c);
            if (ev5VarI == null) {
                return;
            }
            Object obj2 = Array.get(obj, i);
            if (obj2 != null && !((x40) this.a).e((ln5) this.d, obj2, ev5VarI)) {
                ((cy6) this.b).a(ev5VarI, obj2);
            }
        }
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) throws wt1 {
        y40 y40Var = (y40) ((x40) this.a).f(mc4Var);
        Object objD = y40Var.d();
        if (!((wi8) y40Var.c).c()) {
            c(mc4Var, objD);
        }
        return objD;
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) throws wt1 {
        int length = Array.getLength(obj);
        int i = 0;
        while (true) {
            tr9 position = mc4Var.getPosition();
            mc4 mc4VarD = mc4Var.d();
            if (mc4VarD == null) {
                return obj;
            }
            if (i >= length) {
                throw new wt1("Array length missing or incorrect for %s at %s", (vb8) this.e, position);
            }
            Array.set(obj, i, ((cy6) this.b).b(mc4VarD));
            i++;
        }
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) {
        y40 y40Var = (y40) ((x40) this.a).f(mc4Var);
        if (((wi8) y40Var.c).c()) {
            return true;
        }
        y40Var.e(null);
        while (true) {
            mc4 mc4VarD = mc4Var.d();
            if (mc4VarD == null) {
                return true;
            }
            ((cy6) this.b).d(mc4VarD);
        }
    }

    public boolean e(String str) {
        ly8.e(str);
        return ((lp1) this.d).a.contains(str);
    }

    @Override // defpackage.e59
    public String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("returnSecureToken", true);
        lp1 lp1Var = (lp1) this.e;
        if (!lp1Var.a.isEmpty()) {
            ArrayList arrayList = lp1Var.a;
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < arrayList.size(); i++) {
                jSONArray.put(arrayList.get(i));
            }
            jSONObject.put("deleteProvider", jSONArray);
        }
        ArrayList arrayList2 = ((lp1) this.d).a;
        int size = arrayList2.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            String str = (String) arrayList2.get(i2);
            str.getClass();
            int i3 = 2;
            switch (str) {
                case "DISPLAY_NAME":
                    break;
                case "EMAIL":
                    i3 = 1;
                    break;
                case "PHOTO_URL":
                    i3 = 4;
                    break;
                case "PASSWORD":
                    i3 = 5;
                    break;
                default:
                    i3 = 0;
                    break;
            }
            iArr[i2] = i3;
        }
        if (size > 0) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i4 = 0; i4 < size; i4++) {
                jSONArray2.put(iArr[i4]);
            }
            jSONObject.put("deleteAttribute", jSONArray2);
        }
        String str2 = (String) this.a;
        if (str2 != null) {
            jSONObject.put("idToken", str2);
        }
        String str3 = (String) this.b;
        if (str3 != null) {
            jSONObject.put("displayName", str3);
        }
        String str4 = (String) this.c;
        if (str4 != null) {
            jSONObject.put("photoUrl", str4);
        }
        return jSONObject.toString();
    }
}
