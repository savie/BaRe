package defpackage;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.firebase.auth.FirebaseAuthRegistrar;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t54 implements jk8, mo1, e59 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    @Override // defpackage.jk8
    public View getRoot() {
        return (ConstraintLayout) this.a;
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        return FirebaseAuthRegistrar.lambda$getComponents$0((nc6) this.a, (nc6) this.b, (nc6) this.c, (nc6) this.d, (nc6) this.e, pp0Var);
    }

    @Override // defpackage.e59
    public String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String str = (String) this.a;
        if (str != null) {
            jSONObject.put("email", str);
        }
        String str2 = (String) this.b;
        if (str2 != null) {
            jSONObject.put("password", str2);
        }
        String str3 = (String) this.c;
        if (str3 != null) {
            jSONObject.put("tenantId", str3);
        }
        String str4 = (String) this.d;
        if (str4 != null) {
            yc9.E0(jSONObject, "captchaResponse", str4);
        } else {
            jSONObject.put("clientType", "CLIENT_TYPE_ANDROID");
        }
        String str5 = (String) this.e;
        if (str5 != null) {
            jSONObject.put("idToken", str5);
        }
        return jSONObject.toString();
    }
}
