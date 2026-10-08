package com.google.firebase.auth.internal;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
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
import defpackage.bb9;
import defpackage.cz4;
import defpackage.e6;
import defpackage.ec9;
import defpackage.ga6;
import defpackage.hc9;
import defpackage.ix0;
import defpackage.ji8;
import defpackage.l39;
import defpackage.l73;
import defpackage.ly8;
import defpackage.nz4;
import defpackage.q59;
import defpackage.sz8;
import defpackage.u48;
import defpackage.x49;
import defpackage.zv1;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class RecaptchaActivity extends u implements a59 {
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
        Uri.Builder builderAppendPath = new Uri.Builder().scheme("https").appendPath("__").appendPath("auth").appendPath("handler");
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY");
        String string = UUID.randomUUID().toString();
        String stringExtra2 = intent.getStringExtra("com.google.firebase.auth.internal.CLIENT_VERSION");
        String stringExtra3 = intent.getStringExtra("com.google.firebase.auth.internal.FIREBASE_APP_NAME");
        FirebaseApp firebaseApp = FirebaseApp.getInstance(stringExtra3);
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(firebaseApp);
        cz4 cz4Var = cz4.n;
        Context applicationContext = getApplicationContext();
        synchronized (cz4Var) {
            ly8.e(str);
            ly8.e(string);
            SharedPreferences sharedPreferencesL = cz4.l(applicationContext, str);
            cz4.m(sharedPreferencesL);
            SharedPreferences.Editor editorEdit = sharedPreferencesL.edit();
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string + ".OPERATION", "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA");
            editorEdit.putString("com.google.firebase.auth.internal.EVENT_ID." + string + ".FIREBASE_APP_NAME", stringExtra3);
            editorEdit.apply();
        }
        String strM = l39.o(getApplicationContext(), firebaseApp.getPersistenceKey()).m();
        String strQ = null;
        if (TextUtils.isEmpty(strM)) {
            Log.e("RecaptchaActivity", "Could not generate an encryption key for reCAPTCHA - cancelling flow.");
            n(zv1.t("Failed to generate/retrieve public encryption key for reCAPTCHA flow."));
            return null;
        }
        synchronized (firebaseAuth.g) {
        }
        if (TextUtils.isEmpty(null)) {
            strQ = ji8.Q();
        }
        builderAppendPath.appendQueryParameter("apiKey", stringExtra).appendQueryParameter("authType", "verifyApp").appendQueryParameter("apn", str).appendQueryParameter("hl", strQ).appendQueryParameter("eventId", string).appendQueryParameter("v", "X" + stringExtra2).appendQueryParameter("eid", JWKParameterNames.RSA_FIRST_PRIME_FACTOR).appendQueryParameter("appName", stringExtra3).appendQueryParameter("sha1Cert", str2).appendQueryParameter("publicKey", strM);
        return builderAppendPath;
    }

    @Override // defpackage.a59
    public final void c(Uri uri, String str, ga6 ga6Var) {
        if (ga6Var.get() != null) {
            e6.d();
            return;
        }
        Task taskForResult = Tasks.forResult(uri);
        ix0 ix0Var = new ix0(11, false);
        ix0Var.b = this;
        ix0Var.c = str;
        taskForResult.addOnCompleteListener(ix0Var);
    }

    @Override // defpackage.a59
    public final HttpURLConnection d(URL url) {
        try {
            synchronized (bb9.class) {
            }
            return (HttpURLConnection) url.openConnection();
        } catch (IOException unused) {
            a59.E.d("Error generating connection", new Object[0]);
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
        nz4.e(this).g(intent);
        c.a(this);
        finish();
    }

    public final void o() {
        b = 0L;
        this.a = false;
        Intent intent = new Intent();
        intent.putExtra("com.google.firebase.auth.internal.EXTRA_CANCELED", true);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        nz4.e(this).g(intent);
        c.a(this);
        finish();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String action = getIntent().getAction();
        if (!"com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA".equals(action) && !"android.intent.action.VIEW".equals(action)) {
            Log.e("RecaptchaActivity", "Could not do operation - unknown action: " + action);
            o();
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - b < 30000) {
            Log.e("RecaptchaActivity", "Could not start operation - already in progress");
            return;
        }
        b = jCurrentTimeMillis;
        if (bundle != null) {
            this.a = bundle.getBoolean("com.google.firebase.auth.internal.KEY_ALREADY_STARTED_RECAPTCHA_FLOW");
        }
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        RecaptchaActivity recaptchaActivity;
        super.onResume();
        String str = null;
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
            cz4 cz4Var = cz4.n;
            Context applicationContext = getApplicationContext();
            String packageName = getPackageName();
            String stringExtra2 = intent.getStringExtra("eventId");
            synchronized (cz4Var) {
                ly8.e(packageName);
                ly8.e(stringExtra2);
                SharedPreferences sharedPreferencesL = cz4.l(applicationContext, packageName);
                String str2 = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".OPERATION";
                String string = sharedPreferencesL.getString(str2, null);
                String str3 = "com.google.firebase.auth.internal.EVENT_ID." + stringExtra2 + ".FIREBASE_APP_NAME";
                String string2 = sharedPreferencesL.getString(str3, null);
                SharedPreferences.Editor editorEdit = sharedPreferencesL.edit();
                editorEdit.remove(str2);
                editorEdit.remove(str3);
                editorEdit.apply();
                if (!TextUtils.isEmpty(string)) {
                    str = string2;
                }
            }
            if (TextUtils.isEmpty(str)) {
                Log.e("RecaptchaActivity", "Failed to find registration for this event - failing to prevent session injection.");
                n(zv1.t("Failed to find registration for this reCAPTCHA event"));
            }
            if (intent.getBooleanExtra("encryptionEnabled", true)) {
                stringExtra = l39.o(getApplicationContext(), FirebaseApp.getInstance(str).getPersistenceKey()).n(stringExtra);
            }
            String queryParameter = Uri.parse(stringExtra).getQueryParameter("recaptchaToken");
            b = 0L;
            this.a = false;
            Intent intent2 = new Intent();
            intent2.putExtra("com.google.firebase.auth.internal.RECAPTCHA_TOKEN", queryParameter);
            intent2.putExtra("com.google.firebase.auth.internal.OPERATION", "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA");
            intent2.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
            if (nz4.e(this).g(intent2)) {
                c.a(this);
            } else {
                SharedPreferences.Editor editorEdit2 = getApplicationContext().getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
                editorEdit2.putString("recaptchaToken", queryParameter);
                editorEdit2.putString("operation", "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA");
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
        Intent intent3 = getIntent();
        String packageName2 = getPackageName();
        try {
            String lowerCase = l73.f(ly8.x(this, packageName2)).toLowerCase(Locale.US);
            FirebaseApp firebaseApp = FirebaseApp.getInstance(intent3.getStringExtra("com.google.firebase.auth.internal.FIREBASE_APP_NAME"));
            FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(firebaseApp);
            if (q59.a.containsKey(firebaseApp.getOptions().getApiKey())) {
                q59.a(firebaseApp.getOptions().getApiKey());
                throw null;
            }
            recaptchaActivity = this;
            new x49(packageName2, lowerCase, intent3, firebaseApp, recaptchaActivity).executeOnExecutor(firebaseAuth.r, new Void[0]);
            recaptchaActivity.a = true;
        } catch (PackageManager.NameNotFoundException e) {
            recaptchaActivity = this;
            Log.e("RecaptchaActivity", "Could not get package signature: " + packageName2 + TokenAuthenticationScheme.SCHEME_DELIMITER + String.valueOf(e));
            recaptchaActivity.o();
        }
    }

    @Override // defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("com.google.firebase.auth.internal.KEY_ALREADY_STARTED_RECAPTCHA_FLOW", this.a);
    }

    @Override // defpackage.a59
    public final String zza(String str) {
        String strM0 = sz8.m0("firebear.identityToolkit");
        if (TextUtils.isEmpty(strM0)) {
            return q59.b(str);
        }
        u48.s("Found hermetic configuration for identityToolkit URL: ", strM0, "RecaptchaActivity");
        return strM0;
    }
}
