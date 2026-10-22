package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x49 extends AsyncTask {
    public static final u50 g = new u50("FirebaseAuth", "GetAuthDomainTask");
    public final String a;
    public final String b;
    public final WeakReference c;
    public final Uri.Builder d;
    public final String e;
    public final FirebaseApp f;

    public x49(String str, String str2, Intent intent, FirebaseApp firebaseApp, a59 a59Var) {
        ly8.e(str);
        this.a = str;
        this.f = firebaseApp;
        ly8.e(str2);
        ly8.h(intent);
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY");
        ly8.e(stringExtra);
        Uri.Builder builderBuildUpon = Uri.parse(a59Var.zza(stringExtra)).buildUpon();
        Uri.Builder builderAppendQueryParameter = builderBuildUpon.appendPath("getProjectConfig").appendQueryParameter("key", stringExtra).appendQueryParameter("androidPackageName", str);
        ly8.h(str2);
        builderAppendQueryParameter.appendQueryParameter("sha1Cert", str2);
        this.b = builderBuildUpon.build().toString();
        this.c = new WeakReference(a59Var);
        this.d = a59Var.b(intent, str, str2);
        this.e = intent.getStringExtra("com.google.firebase.auth.KEY_CUSTOM_AUTH_DOMAIN");
    }

    public static String a(HttpURLConnection httpURLConnection) {
        try {
            if (httpURLConnection.getResponseCode() < 400) {
                return null;
            }
            InputStream errorStream = httpURLConnection.getErrorStream();
            return errorStream == null ? "WEB_INTERNAL_ERROR:Could not retrieve the authDomain for this project but did not receive an error response from the network request. Please try again." : zh8.N(new String(d(errorStream)));
        } catch (IOException e) {
            g.g("Error parsing error message from response body in getErrorMessageFromBody. ".concat(String.valueOf(e)), new Object[0]);
            return null;
        }
    }

    public static boolean c(String str) {
        try {
            String host = new URI("https://" + str).getHost();
            return host != null && (host.endsWith("firebaseapp.com") || host.endsWith("web.app"));
        } catch (URISyntaxException e) {
            g.d(dj7.l("Error parsing URL for auth domain check: ", str, ". ", e.getMessage()), new Object[0]);
        }
    }

    public static byte[] d(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[128];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } finally {
            byteArrayOutputStream.close();
        }
    }

    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(b59 b59Var) {
        String str;
        String str2;
        Uri.Builder builder;
        a59 a59Var = (a59) this.c.get();
        if (b59Var != null) {
            str = b59Var.a;
            str2 = b59Var.b;
        } else {
            str = null;
            str2 = null;
        }
        if (a59Var == null) {
            g.d("An error has occurred: the handler reference has returned null.", new Object[0]);
        } else if (TextUtils.isEmpty(str) || (builder = this.d) == null) {
            a59Var.a(zv1.t(str2));
        } else {
            builder.authority(str);
            a59Var.c(builder.build(), this.a, FirebaseAuth.getInstance(this.f).p);
        }
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        String str = this.e;
        u50 u50Var = g;
        try {
            URL url = new URL(this.b);
            a59 a59Var = (a59) this.c.get();
            HttpURLConnection httpURLConnectionD = a59Var.d(url);
            httpURLConnectionD.addRequestProperty("Content-Type", "application/json; charset=UTF-8");
            httpURLConnectionD.setConnectTimeout(60000);
            new xt1(a59Var.zza(), this.f, "X" + Integer.toString(j15.g().a)).a(httpURLConnectionD);
            int responseCode = httpURLConnectionD.getResponseCode();
            if (responseCode != 200) {
                String strA = a(httpURLConnectionD);
                u50Var.d("Error getting project config. Failed with " + strA + TokenAuthenticationScheme.SCHEME_DELIMITER + responseCode, new Object[0]);
                b59 b59Var = new b59();
                b59Var.b = strA;
                return b59Var;
            }
            vk9 vk9Var = new vk9(20, false);
            vk9Var.zza(new String(d(httpURLConnectionD.getInputStream())));
            boolean zIsEmpty = TextUtils.isEmpty(str);
            ArrayList<String> arrayList = (ArrayList) vk9Var.b;
            if (!zIsEmpty) {
                if (arrayList.contains(str)) {
                    b59 b59Var2 = new b59();
                    b59Var2.a = str;
                    return b59Var2;
                }
                b59 b59Var3 = new b59();
                b59Var3.b = "UNAUTHORIZED_DOMAIN";
                return b59Var3;
            }
            for (String str2 : arrayList) {
                if (c(str2)) {
                    b59 b59Var4 = new b59();
                    b59Var4.a = str2;
                    return b59Var4;
                }
            }
            return null;
        } catch (d49 e) {
            u50Var.d(xs1.j("ConversionException encountered: ", e.getMessage()), new Object[0]);
            return null;
        } catch (IOException e2) {
            u50Var.d(xs1.j("IOException occurred: ", e2.getMessage()), new Object[0]);
            return null;
        } catch (NullPointerException e3) {
            u50Var.d(xs1.j("Null pointer encountered: ", e3.getMessage()), new Object[0]);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ void onCancelled(Object obj) {
        onPostExecute(null);
    }
}
