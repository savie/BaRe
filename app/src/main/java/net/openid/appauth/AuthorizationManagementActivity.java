package net.openid.appauth;

import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.microsoft.identity.client.claims.ClaimsRequest;
import defpackage.a90;
import defpackage.c6;
import defpackage.e90;
import defpackage.g90;
import defpackage.j15;
import defpackage.jb9;
import defpackage.ji8;
import defpackage.jm1;
import defpackage.rs9;
import defpackage.rw2;
import defpackage.sw2;
import defpackage.sz8;
import defpackage.w80;
import defpackage.x80;
import defpackage.z80;
import defpackage.zm;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AuthorizationManagementActivity extends zm {
    public static final /* synthetic */ int f = 0;
    public boolean a = false;
    public Intent b;
    public a90 c;
    public PendingIntent d;
    public PendingIntent e;

    public final void n(Bundle bundle) {
        if (bundle == null) {
            j15.e().f(5, null, "No stored state - unable to handle response", new Object[0]);
            finish();
            return;
        }
        this.b = (Intent) bundle.getParcelable("authIntent");
        this.a = bundle.getBoolean("authStarted", false);
        this.d = (PendingIntent) bundle.getParcelable("completeIntent");
        this.e = (PendingIntent) bundle.getParcelable("cancelIntent");
        try {
            String string = bundle.getString("authRequest", null);
            this.c = string != null ? jm1.O(string, bundle.getString("authRequestType", null)) : null;
        } catch (JSONException unused) {
            o(this.e, w80.a.h(), 0);
        }
    }

    public final void o(PendingIntent pendingIntent, Intent intent, int i) {
        if (pendingIntent == null) {
            setResult(i, intent);
            return;
        }
        try {
            pendingIntent.send(this, 0, intent);
        } catch (PendingIntent.CanceledException e) {
            j15.e().f(6, null, "Failed to send cancel intent", e);
        }
    }

    @Override // androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            n(getIntent().getExtras());
        } else {
            n(bundle);
        }
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        rs9 sw2Var;
        Intent intentV;
        String[] strArrSplit;
        super.onResume();
        if (!this.a) {
            try {
                startActivity(this.b);
                this.a = true;
                return;
            } catch (ActivityNotFoundException unused) {
                j15.d("Authorization flow canceled due to missing browser", new Object[0]);
                o(this.e, z80.g(x80.b, null).h(), 0);
                finish();
                return;
            }
        }
        if (getIntent().getData() != null) {
            Uri data = getIntent().getData();
            if (data.getQueryParameterNames().contains("error")) {
                int i = z80.f;
                String queryParameter = data.getQueryParameter("error");
                String queryParameter2 = data.getQueryParameter("error_description");
                String queryParameter3 = data.getQueryParameter("error_uri");
                z80 z80Var = (z80) w80.e.get(queryParameter);
                if (z80Var == null) {
                    z80Var = w80.c;
                }
                int i2 = z80Var.a;
                int i3 = z80Var.b;
                if (queryParameter2 == null) {
                    queryParameter2 = z80Var.d;
                }
                intentV = new z80(i2, i3, queryParameter, queryParameter2, queryParameter3 != null ? Uri.parse(queryParameter3) : z80Var.e, null).h();
            } else {
                a90 a90Var = this.c;
                if (a90Var instanceof e90) {
                    e90 e90Var = (e90) a90Var;
                    new LinkedHashMap();
                    String queryParameter4 = data.getQueryParameter("state");
                    jb9.k(queryParameter4, "state must not be empty");
                    String queryParameter5 = data.getQueryParameter("token_type");
                    jb9.k(queryParameter5, "tokenType must not be empty");
                    String queryParameter6 = data.getQueryParameter("code");
                    jb9.k(queryParameter6, "authorizationCode must not be empty");
                    String queryParameter7 = data.getQueryParameter(ClaimsRequest.ACCESS_TOKEN);
                    jb9.k(queryParameter7, "accessToken must not be empty");
                    String queryParameter8 = data.getQueryParameter("expires_in");
                    Long lValueOf = queryParameter8 != null ? Long.valueOf(Long.parseLong(queryParameter8)) : null;
                    Long lValueOf2 = lValueOf == null ? null : Long.valueOf(TimeUnit.SECONDS.toMillis(lValueOf.longValue()) + System.currentTimeMillis());
                    String queryParameter9 = data.getQueryParameter(ClaimsRequest.ID_TOKEN);
                    jb9.k(queryParameter9, "idToken cannot be empty");
                    String queryParameter10 = data.getQueryParameter("scope");
                    String strJ = (TextUtils.isEmpty(queryParameter10) || (strArrSplit = queryParameter10.split(" +")) == null) ? null : sz8.J(Arrays.asList(strArrSplit));
                    Set set = g90.F;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (String str : data.getQueryParameterNames()) {
                        if (!set.contains(str)) {
                            linkedHashMap.put(str, data.getQueryParameter(str));
                        }
                    }
                    sw2Var = new g90(e90Var, queryParameter4, queryParameter5, queryParameter6, queryParameter7, lValueOf2, queryParameter9, strJ, Collections.unmodifiableMap(ji8.e(linkedHashMap, g90.F)));
                } else {
                    if (!(a90Var instanceof rw2)) {
                        c6.f("Malformed request or uri");
                        return;
                    }
                    rw2 rw2Var = (rw2) a90Var;
                    String queryParameter11 = data.getQueryParameter("state");
                    if (queryParameter11 != null) {
                        jb9.i(queryParameter11, "state must not be empty");
                    }
                    sw2Var = new sw2(rw2Var, queryParameter11);
                }
                if ((this.c.getState() != null || sw2Var.l() == null) && (this.c.getState() == null || this.c.getState().equals(sw2Var.l()))) {
                    intentV = sw2Var.v();
                } else {
                    j15.e().f(5, null, "State returned in authorization response (%s) does not match state from request (%s) - discarding response", sw2Var.l(), this.c.getState());
                    intentV = w80.d.h();
                }
            }
            intentV.setData(data);
            o(this.d, intentV, -1);
        } else {
            j15.d("Authorization flow canceled by user", new Object[0]);
            o(this.e, z80.g(x80.a, null).h(), 0);
        }
        finish();
    }

    @Override // defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        String str;
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("authStarted", this.a);
        bundle.putParcelable("authIntent", this.b);
        bundle.putString("authRequest", this.c.a());
        a90 a90Var = this.c;
        if (a90Var instanceof e90) {
            str = "authorization";
        } else {
            str = a90Var instanceof rw2 ? "end_session" : null;
        }
        bundle.putString("authRequestType", str);
        bundle.putParcelable("completeIntent", this.d);
        bundle.putParcelable("cancelIntent", this.e);
    }
}
