package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.database.Cursor;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.material.textfield.TextInputLayout;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.zip.Adler32;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e41 implements jk8 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public e41(String str, HashMap map) {
        this.a = 3;
        this.b = str;
        this.c = map;
        this.d = new HashMap();
    }

    public static String a(String str, HashMap map) {
        StringBuilder sb = new StringBuilder();
        Iterator it = map.entrySet().iterator();
        Map.Entry entry = (Map.Entry) it.next();
        sb.append((String) entry.getKey());
        sb.append("=");
        sb.append(entry.getValue() != null ? URLEncoder.encode((String) entry.getValue(), "UTF-8") : "");
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb.append("&");
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append(entry2.getValue() != null ? URLEncoder.encode((String) entry2.getValue(), "UTF-8") : "");
        }
        String string = sb.toString();
        if (string.isEmpty()) {
            return str;
        }
        if (!str.contains("?")) {
            return dj7.k(str, "?", string);
        }
        if (!str.endsWith("&")) {
            string = "&".concat(string);
        }
        return str.concat(string);
    }

    public e74 b() throws Throwable {
        HttpsURLConnection httpsURLConnection;
        s02.b();
        InputStream inputStream = null;
        String string = null;
        inputStream = null;
        try {
            String strA = a((String) this.b, (HashMap) this.c);
            String strConcat = "GET Request URL: ".concat(strA);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", strConcat, null);
            }
            httpsURLConnection = (HttpsURLConnection) new URL(strA).openConnection();
            try {
                httpsURLConnection.setReadTimeout(yr5.p);
                httpsURLConnection.setConnectTimeout(yr5.p);
                httpsURLConnection.setRequestMethod("GET");
                for (Map.Entry entry : ((HashMap) this.d).entrySet()) {
                    httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream2, "UTF-8"));
                        char[] cArr = new char[8192];
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            int i = bufferedReader.read(cArr);
                            if (i == -1) {
                                break;
                            }
                            sb.append(cArr, 0, i);
                        }
                        string = sb.toString();
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new e74(responseCode, string);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            httpsURLConnection = null;
        }
    }

    public void c(String str, String str2) {
        ((HashMap) this.d).put(str, str2);
    }

    public void d(oe0 oe0Var, int i, boolean z) {
        ge0 ge0Var = (ge0) this.d;
        Context context = (Context) this.b;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        String str = oe0Var.a;
        adler32.update(str.getBytes(Charset.forName("UTF-8")));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        d66 d66Var = oe0Var.c;
        adler32.update(byteBufferAllocate.putInt(h66.a(d66Var)).array());
        byte[] bArr = oe0Var.b;
        if (bArr != null) {
            adler32.update(bArr);
        }
        int value = (int) adler32.getValue();
        if (!z) {
            for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
                int i2 = jobInfo.getExtras().getInt("attemptNumber");
                if (jobInfo.getId() == value) {
                    if (i2 < i) {
                        break;
                    }
                    ly8.o("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", oe0Var);
                    return;
                }
            }
        }
        Cursor cursorRawQuery = ((mw6) this.c).a().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{str, String.valueOf(h66.a(d66Var))});
        try {
            Long lValueOf = cursorRawQuery.moveToNext() ? Long.valueOf(cursorRawQuery.getLong(0)) : 0L;
            cursorRawQuery.close();
            long jLongValue = lValueOf.longValue();
            JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
            builder.setMinimumLatency(ge0Var.a(d66Var, jLongValue, i));
            Set set = ((he0) ge0Var.b.get(d66Var)).c;
            if (set.contains(r47.a)) {
                builder.setRequiredNetworkType(2);
            } else {
                builder.setRequiredNetworkType(1);
            }
            if (set.contains(r47.c)) {
                builder.setRequiresCharging(true);
            }
            if (set.contains(r47.b)) {
                builder.setRequiresDeviceIdle(true);
            }
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putInt("attemptNumber", i);
            persistableBundle.putString("backendName", str);
            persistableBundle.putInt("priority", h66.a(d66Var));
            if (bArr != null) {
                persistableBundle.putString("extras", Base64.encodeToString(bArr, 0));
            }
            builder.setExtras(persistableBundle);
            Object[] objArr = {oe0Var, Integer.valueOf(value), Long.valueOf(ge0Var.a(d66Var, jLongValue, i)), lValueOf, Integer.valueOf(i)};
            String strConcat = "TRuntime.".concat("JobInfoScheduler");
            if (Log.isLoggable(strConcat, 3)) {
                Log.d(strConcat, String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr));
            }
            jobScheduler.schedule(builder.build());
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    public uf9 e() throws GeneralSecurityException {
        km8 km8Var;
        d2a d2aVarB;
        kg9 kg9Var = (kg9) this.b;
        if (kg9Var == null || (km8Var = (km8) this.c) == null) {
            m0.h("Cannot build without parameters and/or key material");
            return null;
        }
        if (kg9Var.a != ((d2a) km8Var.a).a.length) {
            m0.h("Key size mismatch");
            return null;
        }
        if (kg9Var.a() && ((Integer) this.d) == null) {
            m0.h("Cannot create key without ID requirement with parameters with ID requirement");
            return null;
        }
        if (!((kg9) this.b).a() && ((Integer) this.d) != null) {
            m0.h("Cannot create key with ID requirement with parameters without ID requirement");
            return null;
        }
        ig9 ig9Var = ((kg9) this.b).d;
        if (ig9Var == ig9.e) {
            d2aVarB = zs9.a;
        } else if (ig9Var == ig9.d) {
            d2aVarB = zs9.a(((Integer) this.d).intValue());
        } else {
            if (ig9Var != ig9.c) {
                l0.e("Unknown AesGcmParameters.Variant: ".concat(String.valueOf(ig9Var)));
                return null;
            }
            d2aVarB = zs9.b(((Integer) this.d).intValue());
        }
        return new uf9((kg9) this.b, (km8) this.c, d2aVarB, (Integer) this.d);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 0:
                return (LinearLayout) this.b;
            default:
                return (TextInputLayout) this.b;
        }
    }

    public /* synthetic */ e41(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    public /* synthetic */ e41() {
        this.a = 5;
    }

    public e41(zw2 zw2Var, fh7 fh7Var, dx2 dx2Var) {
        this.a = 2;
        this.d = zw2Var;
        this.c = fh7Var;
        this.b = dx2Var;
    }
}
