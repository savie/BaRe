package com.google.firebase.auth.internal;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.fragment.app.u;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.jwk.JWKParameterNames;
import defpackage.a59;
import defpackage.as2;
import defpackage.bb9;
import defpackage.c00;
import defpackage.cz4;
import defpackage.e6;
import defpackage.ec9;
import defpackage.ga6;
import defpackage.hc9;
import defpackage.j69;
import defpackage.l39;
import defpackage.l73;
import defpackage.ly8;
import defpackage.nz4;
import defpackage.q59;
import defpackage.sz8;
import defpackage.u48;
import defpackage.x49;
import defpackage.x99;
import defpackage.zv1;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class GenericIdpActivity extends u implements a59 {
    public static long b;
    public static final ec9 c = ec9.b;
    public boolean a = false;

    @Override // defpackage.a59
    public final void a(Status status) {
        if (status == null) {
            o();
        } else {
            n(status);
        }
    }

    @Override // defpackage.a59
    public final Uri.Builder b(Intent intent, String str, String str2) {
        String string;
        String str3;
        Uri.Builder builderAppendPath = new Uri.Builder().scheme("https").appendPath("__").appendPath("auth").appendPath("handler");
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY");
        String stringExtra2 = intent.getStringExtra("com.google.firebase.auth.KEY_PROVIDER_ID");
        String stringExtra3 = intent.getStringExtra("com.google.firebase.auth.KEY_TENANT_ID");
        String stringExtra4 = intent.getStringExtra("com.google.firebase.auth.KEY_FIREBASE_APP_NAME");
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("com.google.firebase.auth.KEY_PROVIDER_SCOPES");
        String strJoin = (stringArrayListExtra == null || stringArrayListExtra.isEmpty()) ? null : TextUtils.join(",", stringArrayListExtra);
        Bundle bundleExtra = intent.getBundleExtra("com.google.firebase.auth.KEY_PROVIDER_CUSTOM_PARAMS");
        if (bundleExtra == null) {
            string = null;
        } else {
            JSONObject jSONObject = new JSONObject();
            try {
                for (String str4 : bundleExtra.keySet()) {
                    String string2 = bundleExtra.getString(str4);
                    if (!TextUtils.isEmpty(string2)) {
                        jSONObject.put(str4, string2);
                    }
                }
            } catch (JSONException unused) {
                Log.e("GenericIdpActivity", "Unexpected JSON exception when serializing developer specified custom params");
            }
            string = jSONObject.toString();
        }
        String string3 = UUID.randomUUID().toString();
        try {
            str3 = new String(MessageDigest.getInstance("SHA-256").digest(UUID.randomUUID().toString().getBytes()));
            int length = str3.length();
            int i = 0;
            while (i < length) {
                char cCharAt = str3.charAt(i);
                if (cCharAt >= 'A' && cCharAt <= 'Z') {
                    char[] charArray = str3.toCharArray();
                    while (i < length) {
                        char c2 = charArray[i];
                        if (c2 >= 'A' && c2 <= 'Z') {
                            charArray[i] = (char) (c2 ^ ' ');
                        }
                        i++;
                    }
                    str3 = String.valueOf(charArray);
                    break;
                }
                i++;
            }
        } catch (NoSuchAlgorithmException unused2) {
            a59.E.d("Failed to get SHA-256 MessageDigest", new Object[0]);
            str3 = null;
        }
        String action = intent.getAction();
        String stringExtra5 = intent.getStringExtra("com.google.firebase.auth.internal.CLIENT_VERSION");
        cz4 cz4Var = cz4.n;
        Context applicationContext = getApplicationContext();
        String str5 = string;
        String str6 = strJoin;
        synchronized (cz4Var) {
            ly8.e(str);
            ly8.e(string3);
            ly8.e(str3);
            ly8.e(stringExtra4);
            SharedPreferences sharedPreferencesL = cz4.l(applicationContext, str);
            cz4.m(sharedPreferencesL);
            SharedPreferences.Editor editorEdit = sharedPreferencesL.edit();
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string3 + ".SESSION_ID", str3);
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string3 + ".OPERATION", action);
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string3 + ".PROVIDER_ID", stringExtra2);
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string3 + ".FIREBASE_APP_NAME", stringExtra4);
            editorEdit.putString("com.google.firebase.auth.api.gms.config.tenant.id", stringExtra3);
            editorEdit.apply();
        }
        String strM = l39.o(getApplicationContext(), FirebaseApp.getInstance(stringExtra4).getPersistenceKey()).m();
        if (TextUtils.isEmpty(strM)) {
            Log.e("GenericIdpActivity", "Could not generate an encryption key for Generic IDP - cancelling flow.");
            n(zv1.t("Failed to generate/retrieve public encryption key for Generic IDP flow."));
        } else if (str3 != null) {
            builderAppendPath.appendQueryParameter("eid", JWKParameterNames.RSA_FIRST_PRIME_FACTOR).appendQueryParameter("v", "X" + stringExtra5).appendQueryParameter("authType", "signInWithRedirect").appendQueryParameter("apiKey", stringExtra).appendQueryParameter("providerId", stringExtra2).appendQueryParameter("sessionId", str3).appendQueryParameter("eventId", string3).appendQueryParameter("apn", str).appendQueryParameter("sha1Cert", str2).appendQueryParameter("publicKey", strM);
            if (!TextUtils.isEmpty(str6)) {
                builderAppendPath.appendQueryParameter("scopes", str6);
            }
            if (!TextUtils.isEmpty(str5)) {
                builderAppendPath.appendQueryParameter("customParameters", str5);
            }
            if (TextUtils.isEmpty(stringExtra3)) {
                return builderAppendPath;
            }
            builderAppendPath.appendQueryParameter("tid", stringExtra3);
            return builderAppendPath;
        }
        return null;
    }

    @Override // defpackage.a59
    public final void c(Uri uri, String str, ga6 ga6Var) {
        if (ga6Var.get() != null) {
            e6.d();
            return;
        }
        Task taskForResult = Tasks.forResult(uri);
        c00 c00Var = new c00(16, false);
        c00Var.b = this;
        c00Var.c = str;
        taskForResult.addOnCompleteListener(c00Var);
    }

    @Override // defpackage.a59
    public final HttpURLConnection d(URL url) {
        try {
            synchronized (bb9.class) {
            }
            return (HttpURLConnection) url.openConnection();
        } catch (IOException unused) {
            Log.e("GenericIdpActivity", "Error generating URL connection");
            return null;
        }
    }

    public final void n(Status status) {
        b = 0L;
        this.a = false;
        Intent intent = new Intent();
        HashMap map = hc9.a;
        Parcel parcelObtain = Parcel.obtain();
        status.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        intent.putExtra("com.google.firebase.auth.internal.STATUS", bArrMarshall);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        if (nz4.e(this).g(intent)) {
            c.a(this);
        } else {
            x99.a(getApplicationContext(), status);
        }
        finish();
    }

    public final void o() {
        b = 0L;
        this.a = false;
        Intent intent = new Intent();
        intent.putExtra("com.google.firebase.auth.internal.EXTRA_CANCELED", true);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        if (nz4.e(this).g(intent)) {
            c.a(this);
        } else {
            x99.a(this, zv1.t("WEB_CONTEXT_CANCELED"));
        }
        finish();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String action = getIntent().getAction();
        if (!"com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN".equals(action) && !"com.google.firebase.auth.internal.NONGMSCORE_LINK".equals(action) && !"com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE".equals(action) && !"android.intent.action.VIEW".equals(action)) {
            Log.e("GenericIdpActivity", "Could not do operation - unknown action: " + action);
            o();
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - b < 30000) {
            Log.e("GenericIdpActivity", "Could not start operation - already in progress");
            return;
        }
        b = jCurrentTimeMillis;
        if (bundle != null) {
            this.a = bundle.getBoolean("com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN");
        }
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        as2 as2Var;
        super.onResume();
        if ("android.intent.action.VIEW".equals(getIntent().getAction())) {
            Intent intent = getIntent();
            if (intent.hasExtra("firebaseError")) {
                n(hc9.a(intent.getStringExtra("firebaseError")));
                return;
            }
            if (!intent.hasExtra("link") || !intent.hasExtra("eventId")) {
                o();
                return;
            }
            String stringExtra = intent.getStringExtra("link");
            String stringExtra2 = intent.getStringExtra("eventId");
            String packageName = getPackageName();
            boolean booleanExtra = intent.getBooleanExtra("encryptionEnabled", true);
            synchronized (cz4.n) {
                ly8.e(packageName);
                ly8.e(stringExtra2);
                SharedPreferences sharedPreferencesL = cz4.l(this, packageName);
                String str = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".SESSION_ID";
                String str2 = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".OPERATION";
                String str3 = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".PROVIDER_ID";
                String str4 = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".FIREBASE_APP_NAME";
                String string = sharedPreferencesL.getString(str, null);
                String string2 = sharedPreferencesL.getString(str2, null);
                String string3 = sharedPreferencesL.getString(str3, null);
                String string4 = sharedPreferencesL.getString("com.google.firebase.auth.api.gms.config.tenant.id", null);
                String string5 = sharedPreferencesL.getString(str4, null);
                SharedPreferences.Editor editorEdit = sharedPreferencesL.edit();
                editorEdit.remove(str);
                editorEdit.remove(str2);
                editorEdit.remove(str3);
                editorEdit.remove(str4);
                editorEdit.apply();
                if (string == null || string2 == null || string3 == null) {
                    as2Var = null;
                } else {
                    as2Var = new as2();
                    as2Var.a = string;
                    as2Var.b = string2;
                    as2Var.c = string3;
                    as2Var.d = string4;
                    as2Var.e = string5;
                }
            }
            if (as2Var == null) {
                o();
            }
            if (booleanExtra) {
                stringExtra = l39.o(getApplicationContext(), FirebaseApp.getInstance((String) as2Var.e).getPersistenceKey()).n(stringExtra);
            }
            j69 j69Var = new j69();
            ly8.h(as2Var);
            String str5 = (String) as2Var.a;
            ly8.e(str5);
            j69Var.t = str5;
            ly8.e(stringExtra);
            j69Var.x = stringExtra;
            String str6 = (String) as2Var.c;
            ly8.e(str6);
            j69Var.e = str6;
            j69Var.p = true;
            j69Var.k = "providerId=".concat(str6);
            String str7 = (String) as2Var.d;
            String str8 = (String) as2Var.b;
            j69Var.y = str7;
            if (!"com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN".equals(str8) && !"com.google.firebase.auth.internal.NONGMSCORE_LINK".equals(str8) && !"com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE".equals(str8)) {
                Log.e("GenericIdpActivity", "unsupported operation: ".concat(str8));
                o();
                return;
            }
            b = 0L;
            this.a = false;
            Intent intent2 = new Intent();
            Parcel parcelObtain = Parcel.obtain();
            j69Var.writeToParcel(parcelObtain, 0);
            byte[] bArrMarshall = parcelObtain.marshall();
            parcelObtain.recycle();
            intent2.putExtra("com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST", bArrMarshall);
            intent2.putExtra("com.google.firebase.auth.internal.OPERATION", str8);
            intent2.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
            if (nz4.e(this).g(intent2)) {
                c.a(this);
            } else {
                SharedPreferences.Editor editorEdit2 = getApplicationContext().getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
                Parcel parcelObtain2 = Parcel.obtain();
                j69Var.writeToParcel(parcelObtain2, 0);
                byte[] bArrMarshall2 = parcelObtain2.marshall();
                parcelObtain2.recycle();
                editorEdit2.putString("verifyAssertionRequest", bArrMarshall2 != null ? Base64.encodeToString(bArrMarshall2, 10) : null);
                editorEdit2.putString("operation", str8);
                editorEdit2.putString("tenantId", str7);
                editorEdit2.putLong("timestamp", System.currentTimeMillis());
                editorEdit2.commit();
            }
            finish();
            return;
        }
        if (this.a) {
            o();
            return;
        }
        String packageName2 = getPackageName();
        try {
            String lowerCase = l73.f(ly8.x(this, packageName2)).toLowerCase(Locale.US);
            FirebaseApp firebaseApp = FirebaseApp.getInstance(getIntent().getStringExtra("com.google.firebase.auth.KEY_FIREBASE_APP_NAME"));
            FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(firebaseApp);
            if (q59.a.containsKey(firebaseApp.getOptions().getApiKey())) {
                q59.a(firebaseApp.getOptions().getApiKey());
                throw null;
            }
            new x49(packageName2, lowerCase, getIntent(), firebaseApp, this).executeOnExecutor(firebaseAuth.r, new Void[0]);
            this.a = true;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("GenericIdpActivity", "Could not get package signature: " + packageName2 + TokenAuthenticationScheme.SCHEME_DELIMITER + String.valueOf(e));
            o();
        }
    }

    @Override // defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN", this.a);
    }

    @Override // defpackage.a59
    public final String zza(String str) {
        String strM0 = sz8.m0("firebear.identityToolkit");
        if (TextUtils.isEmpty(strM0)) {
            return q59.b(str);
        }
        u48.s("Found hermetic configuration for identityToolkit URL: ", strM0, "GenericIdpActivity");
        return strM0;
    }
}
