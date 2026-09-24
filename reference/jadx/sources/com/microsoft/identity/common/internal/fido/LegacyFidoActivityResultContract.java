package com.microsoft.identity.common.internal.fido;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.util.Base64;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.d80;
import defpackage.fz5;
import defpackage.j9;
import defpackage.m80;
import defpackage.mt3;
import defpackage.na6;
import defpackage.o80;
import defpackage.ph6;
import defpackage.rd4;
import defpackage.rs9;
import defpackage.wk9;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LegacyFidoActivityResultContract extends j9 {
    private final String TAG = String.valueOf(ph6.a(LegacyFidoActivityResultContract.class).c());
    private mt3 assertionCallback = new LegacyFidoActivityResultContract$assertionCallback$1(this);
    private mt3 errorCallback = new LegacyFidoActivityResultContract$errorCallback$1(this);

    @Override // defpackage.j9
    public final Intent createIntent(Context context, Object obj) {
        LegacyFido2ApiObject legacyFido2ApiObject = (LegacyFido2ApiObject) obj;
        legacyFido2ApiObject.getClass();
        this.assertionCallback = legacyFido2ApiObject.getAssertionCallback();
        this.errorCallback = legacyFido2ApiObject.getErrorCallback();
        Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
        IntentSender intentSender = legacyFido2ApiObject.getPendingIntent().getIntentSender();
        intentSender.getClass();
        Intent intentPutExtra = intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", new rd4(intentSender, null, 0, 0));
        intentPutExtra.getClass();
        return intentPutExtra;
    }

    @Override // defpackage.j9
    public final Object parseResult(Intent intent, int i) throws JSONException {
        if (intent == null) {
            this.errorCallback.invoke(new LegacyFido2ApiException("null_object", "Result intent from legacy FIDO2 API was null.", null));
            return null;
        }
        if (i != -1) {
            this.errorCallback.invoke(new LegacyFido2ApiException("bad_activity_result_code", fz5.j(i, "Activity closed with result code: "), null));
            return null;
        }
        byte[] byteArrayExtra = intent.getByteArrayExtra("FIDO2_CREDENTIAL_EXTRA");
        if (byteArrayExtra == null) {
            this.errorCallback.invoke(new LegacyFido2ApiException("null_object", "Credential result from Intent is null.", null));
            return null;
        }
        na6 na6Var = (na6) rs9.d(byteArrayExtra, na6.CREATOR);
        na6Var.getClass();
        d80 d80VarN = na6Var.n();
        if (d80VarN instanceof o80) {
            o80 o80Var = (o80) d80VarN;
            String str = o80Var.b;
            String string = o80Var.a.toString();
            mt3 mt3Var = this.errorCallback;
            if (StringUtil.isNullOrEmpty(str)) {
                str = "AuthenticatorResponse has a null error message.";
            }
            mt3Var.invoke(new LegacyFido2ApiException(string, str, null));
            return null;
        }
        if (!(d80VarN instanceof m80)) {
            this.errorCallback.invoke(new LegacyFido2ApiException("unknown_error", "The legacy FIDO2 API response value is something unexpected which we currently cannot handle.", null));
            return null;
        }
        m80 m80Var = (m80) d80VarN;
        wk9 wk9Var = m80Var.e;
        if ((wk9Var == null ? null : wk9Var.o()) == null) {
            this.errorCallback.invoke(new LegacyFido2ApiException("null_object", "UserHandle value in AuthenticatorAssertionResponse is null.", null));
            return null;
        }
        mt3 mt3Var2 = this.assertionCallback;
        String strEncodeToString = Base64.encodeToString(m80Var.b.o(), 11);
        strEncodeToString.getClass();
        String strEncodeToString2 = Base64.encodeToString(m80Var.c.o(), 11);
        strEncodeToString2.getClass();
        String strEncodeToString3 = Base64.encodeToString(m80Var.d.o(), 11);
        strEncodeToString3.getClass();
        String strEncodeToString4 = Base64.encodeToString(wk9Var == null ? null : wk9Var.o(), 11);
        strEncodeToString4.getClass();
        String str2 = na6Var.a;
        str2.getClass();
        int i2 = WebAuthnJsonUtil.a;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", str2);
        jSONObject.put("authenticatorData", strEncodeToString2);
        jSONObject.put("clientDataJSON", strEncodeToString);
        jSONObject.put("signature", strEncodeToString3);
        jSONObject.put("userHandle", strEncodeToString4);
        String string2 = jSONObject.toString();
        string2.getClass();
        mt3Var2.invoke(string2);
        return null;
    }
}
