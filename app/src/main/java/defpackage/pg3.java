package defpackage;

import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pg3 implements qg3 {
    public static final Object m = new Object();
    public final FirebaseApp a;
    public final ng3 b;
    public final ro c;
    public final hi8 d;
    public final ps4 e;
    public final we6 f;
    public final Object g;
    public final ExecutorService h;
    public final o77 i;
    public String j;
    public final HashSet k;
    public final ArrayList l;

    static {
        new AtomicInteger(1);
    }

    public pg3(final FirebaseApp firebaseApp, ga6 ga6Var, ExecutorService executorService, o77 o77Var) {
        ng3 ng3Var = new ng3(firebaseApp.getApplicationContext(), ga6Var);
        ro roVar = new ro(firebaseApp, 10);
        if (ge.k == null) {
            ge.k = new ge();
        }
        ge geVar = ge.k;
        if (hi8.c == null) {
            hi8.c = new hi8(geVar);
        }
        hi8 hi8Var = hi8.c;
        ps4 ps4Var = new ps4(new ga6() { // from class: og3
            @Override // defpackage.ga6
            public final Object get() {
                return new r94(firebaseApp);
            }
        });
        we6 we6Var = new we6();
        this.g = new Object();
        this.k = new HashSet();
        this.l = new ArrayList();
        this.a = firebaseApp;
        this.b = ng3Var;
        this.c = roVar;
        this.d = hi8Var;
        this.e = ps4Var;
        this.f = we6Var;
        this.h = executorService;
        this.i = o77Var;
    }

    public final void a() {
        ee0 ee0VarS;
        int i;
        synchronized (m) {
            try {
                yf1 yf1VarH = yf1.h(this.a.getApplicationContext());
                try {
                    ee0VarS = this.c.s();
                    int i2 = ee0VarS.b;
                    boolean z = true;
                    if (i2 != 2 && i2 != 1) {
                        z = false;
                    }
                    i = 3;
                    if (z) {
                        String strF = f(ee0VarS);
                        ro roVar = this.c;
                        de0 de0VarA = ee0VarS.a();
                        de0VarA.a = strF;
                        de0VarA.b = 3;
                        ee0VarS = de0VarA.a();
                        roVar.n(ee0VarS);
                    }
                    if (yf1VarH != null) {
                        yf1VarH.q();
                    }
                } catch (Throwable th) {
                    if (yf1VarH != null) {
                        yf1VarH.q();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        i(ee0VarS);
        this.i.execute(new o10(this, i));
    }

    public final ee0 b(ee0 ee0Var) throws rg3 {
        int i;
        ne0 ne0Var;
        ne0 ne0VarF;
        ng3 ng3Var = this.b;
        String apiKey = this.a.getOptions().getApiKey();
        String str = ee0Var.a;
        String projectId = this.a.getOptions().getProjectId();
        String str2 = ee0Var.d;
        uk6 uk6Var = ng3Var.c;
        if (!uk6Var.a()) {
            throw new rg3("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = ng3.a("projects/" + projectId + "/installations/" + str + "/authTokens:generate");
        int i2 = 0;
        while (true) {
            if (i2 > 1) {
                throw new rg3("Firebase Installations Service is unavailable. Please try again later.");
            }
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection httpURLConnectionC = ng3Var.c(urlA, apiKey);
            try {
                try {
                    httpURLConnectionC.setRequestMethod("POST");
                    httpURLConnectionC.addRequestProperty("Authorization", "FIS_v2 " + str2);
                    httpURLConnectionC.setDoOutput(true);
                    ng3.h(httpURLConnectionC);
                    int responseCode = httpURLConnectionC.getResponseCode();
                    uk6Var.b(responseCode);
                    if (responseCode >= 200 && responseCode < 300) {
                        ne0VarF = ng3.f(httpURLConnectionC);
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        break;
                    }
                    ng3.b(httpURLConnectionC, null, apiKey, projectId);
                    i = i2;
                    try {
                        if (responseCode == 401 || responseCode == 404) {
                            if (((byte) (0 | 1)) != 1) {
                                throw new IllegalStateException("Missing required properties: tokenExpirationTimestamp");
                            }
                            ne0Var = new ne0(null, 0L, 3);
                        } else {
                            if (responseCode == 429) {
                                throw new rg3("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                            }
                            if (responseCode < 500 || responseCode >= 600) {
                                Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                                if (((byte) (0 | 1)) != 1) {
                                    throw new IllegalStateException("Missing required properties: tokenExpirationTimestamp");
                                }
                                ne0Var = new ne0(null, 0L, 2);
                            }
                            httpURLConnectionC.disconnect();
                            TrafficStats.clearThreadStatsTag();
                            i2 = i + 1;
                        }
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        ne0VarF = ne0Var;
                        break;
                    } catch (IOException | AssertionError unused) {
                    }
                } catch (IOException | AssertionError unused2) {
                    i = i2;
                }
            } catch (Throwable th) {
                httpURLConnectionC.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th;
            }
        }
        int iA = dj7.A(ne0VarF.c);
        if (iA == 0) {
            String str3 = ne0VarF.a;
            long j = ne0VarF.b;
            this.d.a.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            de0 de0VarA = ee0Var.a();
            de0VarA.c = str3;
            de0VarA.e = j;
            byte b = (byte) (de0VarA.h | 1);
            de0VarA.f = jCurrentTimeMillis;
            de0VarA.h = (byte) (b | 2);
            return de0VarA.a();
        }
        if (iA == 1) {
            de0 de0VarA2 = ee0Var.a();
            de0VarA2.g = "BAD CONFIG";
            de0VarA2.b = 5;
            return de0VarA2.a();
        }
        if (iA != 2) {
            throw new rg3("Firebase Installations Service is unavailable. Please try again later.");
        }
        synchronized (this) {
            this.j = null;
        }
        de0 de0VarA3 = ee0Var.a();
        de0VarA3.b = 2;
        return de0VarA3.a();
    }

    public final Task c() {
        String str;
        e();
        synchronized (this) {
            str = this.j;
        }
        if (str != null) {
            return Tasks.forResult(str);
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        jw3 jw3Var = new jw3(taskCompletionSource);
        synchronized (this.g) {
            this.l.add(jw3Var);
        }
        Task task = taskCompletionSource.getTask();
        this.h.execute(new yc(this, 2));
        return task;
    }

    public final Task d() {
        e();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        iv3 iv3Var = new iv3(this.d, taskCompletionSource);
        synchronized (this.g) {
            this.l.add(iv3Var);
        }
        Task task = taskCompletionSource.getTask();
        this.h.execute(new u12(this, 1));
        return task;
    }

    public final void e() {
        FirebaseApp firebaseApp = this.a;
        ly8.f(firebaseApp.getOptions().getApplicationId(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        ly8.f(firebaseApp.getOptions().getProjectId(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        ly8.f(firebaseApp.getOptions().getApiKey(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        String applicationId = firebaseApp.getOptions().getApplicationId();
        Pattern pattern = hi8.b;
        ly8.b("Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.", applicationId.contains(":"));
        ly8.b("Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.", hi8.b.matcher(firebaseApp.getOptions().getApiKey()).matches());
    }

    public final String f(ee0 ee0Var) {
        String string;
        if ((!this.a.getName().equals("CHIME_ANDROID_SDK") && !this.a.isDefaultApp()) || ee0Var.b != 1) {
            this.f.getClass();
            return we6.a();
        }
        r94 r94Var = (r94) this.e.get();
        synchronized (r94Var.a) {
            try {
                synchronized (r94Var.a) {
                    string = r94Var.a.getString("|S|id", null);
                }
                if (string == null) {
                    string = r94Var.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        this.f.getClass();
        return we6.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [ng3] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [ud0] */
    public final ee0 g(ee0 ee0Var) throws rg3 {
        String str = ee0Var.a;
        String string = null;
        if (str != null && str.length() == 11) {
            r94 r94Var = (r94) this.e.get();
            synchronized (r94Var.a) {
                try {
                    String[] strArr = r94.c;
                    int i = 0;
                    while (true) {
                        if (i >= 4) {
                            break;
                        }
                        String str2 = strArr[i];
                        String string2 = r94Var.a.getString("|T|" + r94Var.b + "|" + str2, null);
                        if (string2 != null && !string2.isEmpty()) {
                            if (string2.startsWith("{")) {
                                try {
                                    string = new JSONObject(string2).getString("token");
                                } catch (JSONException unused) {
                                }
                            } else {
                                string = string2;
                            }
                            break;
                        }
                        i++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ng3 ng3Var = this.b;
        String apiKey = this.a.getOptions().getApiKey();
        String str3 = ee0Var.a;
        String projectId = this.a.getOptions().getProjectId();
        String applicationId = this.a.getOptions().getApplicationId();
        uk6 uk6Var = ng3Var.c;
        if (!uk6Var.a()) {
            throw new rg3("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = ng3.a("projects/" + projectId + "/installations");
        int i2 = 0;
        ud0 ud0Var = ng3Var;
        while (i2 <= 1) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection httpURLConnectionC = ud0Var.c(urlA, apiKey);
            try {
                try {
                    httpURLConnectionC.setRequestMethod("POST");
                    httpURLConnectionC.setDoOutput(true);
                    if (string != null) {
                        httpURLConnectionC.addRequestProperty("x-goog-fis-android-iid-migration-auth", string);
                    }
                    ng3.g(httpURLConnectionC, str3, applicationId);
                    int responseCode = httpURLConnectionC.getResponseCode();
                    uk6Var.b(responseCode);
                    if (responseCode >= 200 && responseCode < 300) {
                        ud0 ud0VarE = ng3.e(httpURLConnectionC);
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        ud0Var = ud0VarE;
                    } else {
                        try {
                            ng3.b(httpURLConnectionC, applicationId, apiKey, projectId);
                            if (responseCode == 429) {
                                throw new rg3("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                            }
                            if (responseCode < 500 || responseCode >= 600) {
                                Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                                ud0 ud0Var2 = new ud0(null, null, null, null, 2);
                                httpURLConnectionC.disconnect();
                                TrafficStats.clearThreadStatsTag();
                                ud0Var = ud0Var2;
                            } else {
                                httpURLConnectionC.disconnect();
                                TrafficStats.clearThreadStatsTag();
                                i2++;
                                ud0Var = ud0Var;
                            }
                        } catch (IOException | AssertionError unused2) {
                            httpURLConnectionC.disconnect();
                            TrafficStats.clearThreadStatsTag();
                        }
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        i2++;
                        ud0Var = ud0Var;
                    }
                    int iA = dj7.A(ud0Var.e);
                    if (iA != 0) {
                        if (iA != 1) {
                            throw new rg3("Firebase Installations Service is unavailable. Please try again later.");
                        }
                        de0 de0VarA = ee0Var.a();
                        de0VarA.g = "BAD CONFIG";
                        de0VarA.b = 5;
                        return de0VarA.a();
                    }
                    String str4 = ud0Var.b;
                    String str5 = ud0Var.c;
                    this.d.a.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                    ne0 ne0Var = ud0Var.d;
                    String str6 = ne0Var.a;
                    long j = ne0Var.b;
                    de0 de0VarA2 = ee0Var.a();
                    de0VarA2.a = str4;
                    de0VarA2.b = 4;
                    de0VarA2.c = str6;
                    de0VarA2.d = str5;
                    de0VarA2.e = j;
                    byte b = (byte) (de0VarA2.h | 1);
                    de0VarA2.f = jCurrentTimeMillis;
                    de0VarA2.h = (byte) (b | 2);
                    return de0VarA2.a();
                } catch (Throwable th2) {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    throw th2;
                }
            } catch (IOException | AssertionError unused3) {
            }
        }
        throw new rg3("Firebase Installations Service is unavailable. Please try again later.");
    }

    public final void h(Exception exc) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((qm7) it.next()).onException(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(ee0 ee0Var) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((qm7) it.next()).a(ee0Var)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
