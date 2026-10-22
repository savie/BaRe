package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.google.android.material.card.MaterialCardView;
import com.google.firebase.FirebaseApp;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bx5 implements jk8 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;

    public p49 a(JSONObject jSONObject) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        l59 l59VarC;
        try {
            String string = jSONObject.getString("cachedTokenState");
            String string2 = jSONObject.getString("applicationName");
            boolean z = jSONObject.getBoolean("anonymous");
            String string3 = jSONObject.getString("version");
            String str = string3 != null ? string3 : "2";
            JSONArray jSONArray3 = jSONObject.getJSONArray("userInfos");
            int length = jSONArray3.length();
            if (length == 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                arrayList.add(w1a.n(jSONArray3.getString(i)));
            }
            p49 p49Var = new p49(FirebaseApp.getInstance(string2), arrayList);
            if (!TextUtils.isEmpty(string)) {
                p49Var.a = b69.n(string);
            }
            if (!z) {
                p49Var.n = Boolean.FALSE;
            }
            p49Var.k = str;
            if (jSONObject.has("userMetadata") && (l59VarC = l59.c(jSONObject.getJSONObject("userMetadata"))) != null) {
                p49Var.p = l59VarC;
            }
            if (jSONObject.has("userMultiFactorInfo") && (jSONArray2 = jSONObject.getJSONArray("userMultiFactorInfo")) != null) {
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    JSONObject jSONObject2 = new JSONObject(jSONArray2.getString(i2));
                    String strOptString = jSONObject2.optString("factorIdKey");
                    arrayList2.add("phone".equals(strOptString) ? yz5.u(jSONObject2) : Objects.equals(strOptString, "totp") ? v88.u(jSONObject2) : null);
                }
                p49Var.v(arrayList2);
            }
            if (jSONObject.has("passkeyInfo") && (jSONArray = jSONObject.getJSONArray("passkeyInfo")) != null) {
                ArrayList arrayList3 = new ArrayList();
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    arrayList3.add(v89.n(new JSONObject(jSONArray.getString(i3))));
                }
                p49Var.x = arrayList3;
            }
            return p49Var;
        } catch (e2a e) {
            e = e;
            Log.wtf((String) ((u50) this.d).b, e);
            return null;
        } catch (ArrayIndexOutOfBoundsException e2) {
            e = e2;
            Log.wtf((String) ((u50) this.d).b, e);
            return null;
        } catch (IllegalArgumentException e3) {
            e = e3;
            Log.wtf((String) ((u50) this.d).b, e);
            return null;
        } catch (JSONException e4) {
            e = e4;
            Log.wtf((String) ((u50) this.d).b, e);
            return null;
        }
    }

    public void b(String str, String str2) {
        String strEncodeToString;
        c00 c00VarR = c00.r((Context) this.a, (String) this.b);
        c00VarR.getClass();
        ly8.h(str2);
        tr9 tr9Var = (tr9) c00VarR.c;
        String str3 = null;
        if (tr9Var == null) {
            Log.e("FirebearStorageCryptoHelper", "KeysetManager failed to initialize - unable to encrypt data");
        } else {
            try {
                synchronized (tr9Var) {
                    try {
                        ix0 ix0VarG = ((tr9) c00VarR.c).g();
                        w13.w();
                        strEncodeToString = Base64.encodeToString(((w99) ix0VarG.n(tu0.i, w99.class)).b(str2.getBytes(StandardCharsets.UTF_8), null), 2);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                str3 = strEncodeToString;
            } catch (GeneralSecurityException e) {
                u48.s("Exception encountered while encrypting bytes:\n", e.getMessage(), "FirebearStorageCryptoHelper");
            }
        }
        if (str3 != null) {
            ((SharedPreferences) this.c).edit().putString(str, "ENCRYPTED:".concat(str3)).apply();
        }
    }

    public String c(String str) {
        String str2;
        String string = ((SharedPreferences) this.c).getString(str, null);
        if (string == null) {
            return null;
        }
        if (!string.startsWith("ENCRYPTED:")) {
            return string;
        }
        c00 c00VarR = c00.r((Context) this.a, (String) this.b);
        String strSubstring = string.substring(10);
        c00VarR.getClass();
        tr9 tr9Var = (tr9) c00VarR.c;
        if (tr9Var == null) {
            Log.e("FirebearStorageCryptoHelper", "KeysetManager failed to initialize - unable to decrypt data");
            return null;
        }
        try {
            synchronized (tr9Var) {
                ix0 ix0VarG = ((tr9) c00VarR.c).g();
                w13.w();
                str2 = new String(((w99) ix0VarG.n(tu0.i, w99.class)).a(Base64.decode(strSubstring, 2), null), StandardCharsets.UTF_8);
            }
            return str2;
        } catch (IllegalArgumentException | GeneralSecurityException e) {
            u48.s("Exception encountered while decrypting bytes:\n", e.getMessage(), "FirebearStorageCryptoHelper");
            return null;
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.a;
    }
}
