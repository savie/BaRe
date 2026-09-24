package defpackage;

import android.content.Intent;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sw2 extends rs9 {
    public final rw2 w;
    public final String x;

    public sw2(rw2 rw2Var, String str) {
        this.w = rw2Var;
        this.x = str;
    }

    @Override // defpackage.rs9
    public final String l() {
        return this.x;
    }

    @Override // defpackage.rs9
    public final Intent v() {
        Intent intent = new Intent();
        JSONObject jSONObject = new JSONObject();
        jm1.J(jSONObject, "request", this.w.b());
        jm1.M(jSONObject, "state", this.x);
        intent.putExtra("net.openid.appauth.EndSessionResponse", jSONObject.toString());
        return intent;
    }
}
