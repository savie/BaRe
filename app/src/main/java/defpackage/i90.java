package defpackage;

import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i90 extends AsyncTask {
    public final l58 a;
    public final t91 b;
    public final ge c;
    public final j90 d;
    public final lv1 e;
    public final boolean f;
    public z80 g;

    public i90(l58 l58Var, t91 t91Var, j90 j90Var, Boolean bool) {
        ge geVar = ge.b;
        lv1 lv1Var = lv1.f;
        this.a = l58Var;
        this.b = t91Var;
        this.c = geVar;
        this.e = lv1Var;
        this.d = j90Var;
        this.f = bool.booleanValue();
    }

    public static void a(HttpURLConnection httpURLConnection) {
        if (TextUtils.isEmpty(httpURLConnection.getRequestProperty("Accept"))) {
            httpURLConnection.setRequestProperty("Accept", "application/json");
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00b0 A[EXC_TOP_SPLITTER, PHI: r1
      0x00b0: PHI (r1v5 java.io.InputStream) = (r1v20 java.io.InputStream), (r1v21 java.io.InputStream) binds: [B:28:0x00ae, B:34:0x00c8] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [l58] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v3 */
    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) throws Throwable {
        InputStream inputStream;
        InputStream inputStream2;
        InputStream inputStream3;
        t91 t91Var = this.b;
        ?? r1 = this.a;
        ?? r4 = 0;
        try {
            try {
                ge geVar = this.c;
                l90 l90Var = r1.a;
                String str = r1.c;
                Uri uri = (Uri) l90Var.c;
                geVar.getClass();
                HttpURLConnection httpURLConnectionX = ge.x(uri);
                httpURLConnectionX.setRequestMethod("POST");
                httpURLConnectionX.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                a(httpURLConnectionX);
                httpURLConnectionX.setDoOutput(true);
                t91Var.getClass();
                HashMap mapA = r1.a();
                Map mapI = t91Var.i(str);
                if (mapI != null) {
                    mapA.putAll(mapI);
                }
                String strK = pe4.k(mapA);
                httpURLConnectionX.setRequestProperty("Content-Length", String.valueOf(strK.length()));
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnectionX.getOutputStream());
                outputStreamWriter.write(strK);
                outputStreamWriter.flush();
                InputStream errorStream = (httpURLConnectionX.getResponseCode() < 200 || httpURLConnectionX.getResponseCode() >= 300) ? httpURLConnectionX.getErrorStream() : httpURLConnectionX.getInputStream();
                try {
                    JSONObject jSONObject = new JSONObject(nc8.W(errorStream));
                    try {
                        errorStream.close();
                    } catch (IOException unused) {
                    }
                    return jSONObject;
                } catch (IOException e) {
                    inputStream2 = errorStream;
                    e = e;
                    j15.e().f(3, e, "Failed to complete exchange request", new Object[0]);
                    this.g = z80.g(x80.c, e);
                    r1 = inputStream2;
                    inputStream3 = inputStream2;
                    if (inputStream2 != null) {
                        try {
                            inputStream3.close();
                            r1 = inputStream3;
                        } catch (IOException unused2) {
                            return null;
                        }
                    }
                    return null;
                } catch (JSONException e2) {
                    inputStream = errorStream;
                    e = e2;
                    j15.e().f(3, e, "Failed to complete exchange request", new Object[0]);
                    this.g = z80.g(x80.d, e);
                    r1 = inputStream;
                    inputStream3 = inputStream;
                    if (inputStream != null) {
                        inputStream3.close();
                        r1 = inputStream3;
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    r4 = errorStream;
                    if (r4 != 0) {
                        try {
                            r4.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                r4 = r1;
            }
        } catch (IOException e3) {
            e = e3;
            inputStream2 = null;
        } catch (JSONException e4) {
            e = e4;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        z80 z80VarG;
        JSONObject jSONObject = (JSONObject) obj;
        l58 l58Var = this.a;
        z80 z80Var = this.g;
        j90 j90Var = this.d;
        if (z80Var != null) {
            j90Var.p(null, z80Var);
            return;
        }
        if (jSONObject.has("error")) {
            try {
                String string = jSONObject.getString("error");
                z80 z80Var2 = (z80) y80.b.get(string);
                if (z80Var2 == null) {
                    z80Var2 = y80.a;
                }
                String strOptString = jSONObject.optString("error_description", null);
                String strOptString2 = jSONObject.optString("error_uri");
                Uri uri = strOptString2 == null ? null : Uri.parse(strOptString2);
                int i = z80Var2.a;
                int i2 = z80Var2.b;
                if (string == null) {
                    string = z80Var2.c;
                }
                String str = string;
                if (strOptString == null) {
                    strOptString = z80Var2.d;
                }
                String str2 = strOptString;
                if (uri == null) {
                    uri = z80Var2.e;
                }
                z80VarG = new z80(i, i2, str, str2, uri, null);
            } catch (JSONException e) {
                z80VarG = z80.g(x80.d, e);
            }
            j90Var.p(null, z80VarG);
            return;
        }
        try {
            m58 m58Var = new m58();
            jb9.j(l58Var, "request cannot be null");
            m58Var.a = l58Var;
            m58Var.h = Collections.EMPTY_MAP;
            m58Var.a(jSONObject);
            l58 l58Var2 = m58Var.a;
            String str3 = m58Var.b;
            String str4 = m58Var.c;
            Long l = m58Var.d;
            String str5 = m58Var.e;
            n58 n58Var = new n58(l58Var2, str3, str4, l, str5, m58Var.f, m58Var.g, m58Var.h);
            if (str5 != null) {
                try {
                    try {
                        m94.a(str5).b(l58Var, this.e, this.f);
                    } catch (z80 e2) {
                        j90Var.p(null, e2);
                        return;
                    }
                } catch (l94 | JSONException e3) {
                    j90Var.p(null, z80.g(x80.e, e3));
                    return;
                }
            }
            j15.d("Token exchange with %s completed", (Uri) l58Var.a.c);
            j90Var.p(n58Var, null);
        } catch (JSONException e4) {
            j90Var.p(null, z80.g(x80.d, e4));
        }
    }
}
