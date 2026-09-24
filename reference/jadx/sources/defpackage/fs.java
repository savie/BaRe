package defpackage;

import android.util.Log;
import android.view.MenuItem;
import androidx.preference.Preference;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.l4digital.fastscroll.FastScroller;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import com.pcloud.sdk.internal.a;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Type;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import okhttp3.Response;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.b;
import org.swiftapps.swiftbackup.settings.f;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fs implements du7, h9, ObjectConstructor, OnSuccessListener, ll5, g36, hm6, OnCompleteListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ fs(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) {
        fw3 fw3Var = (fw3) ((a) this.b).f(response, fw3.class);
        List listE = fw3Var.e();
        String strF = fw3Var.f();
        ArrayList arrayList = new ArrayList(listE.size());
        Iterator it = listE.iterator();
        while (it.hasNext()) {
            arrayList.add(new URL("https", (String) it.next(), strF));
        }
        return new uf6(fw3Var.d(), arrayList, fw3Var.g());
    }

    @Override // defpackage.du7
    public void b() {
        AppListActivity appListActivity = (AppListActivity) this.b;
        int i = AppListActivity.q0;
        appListActivity.U().k(true, true);
        ((FastScroller) appListActivity.m0.getValue()).setEnabled(false);
    }

    public c31 c(gh ghVar) {
        d31 d31Var = (d31) this.b;
        URL url = (URL) ghVar.a;
        String strConcat = "TRuntime.".concat("CctTransportBackend");
        if (Log.isLoggable(strConcat, 4)) {
            Log.i(strConcat, String.format("Making request to: %s", url));
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(d31Var.g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.3.0 android/");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = (String) ghVar.c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    om5 om5Var = d31Var.a;
                    tb0 tb0Var = (tb0) ghVar.b;
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream));
                    kj4 kj4Var = (kj4) om5Var.a;
                    in4 in4Var = new in4(bufferedWriter, kj4Var.a, kj4Var.b, kj4Var.c, kj4Var.d);
                    in4Var.h(tb0Var);
                    in4Var.j();
                    in4Var.b.flush();
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    Integer numValueOf = Integer.valueOf(responseCode);
                    String strConcat2 = "TRuntime.".concat("CctTransportBackend");
                    if (Log.isLoggable(strConcat2, 4)) {
                        Log.i(strConcat2, String.format("Status Code: %d", numValueOf));
                    }
                    ly8.o("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                    ly8.o("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new c31(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new c31(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            c31 c31Var = new c31(responseCode, null, ae0.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).a);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return c31Var;
                        } catch (Throwable th) {
                            if (gZIPInputStream == null) {
                                throw th;
                            }
                            try {
                                gZIPInputStream.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        if (inputStream == null) {
                            throw th3;
                        }
                        try {
                            inputStream.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        gZIPOutputStream.close();
                        throw th5;
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                        throw th5;
                    }
                }
            } catch (Throwable th7) {
                if (outputStream == null) {
                    throw th7;
                }
                try {
                    outputStream.close();
                    throw th7;
                } catch (Throwable th8) {
                    th7.addSuppressed(th8);
                    throw th7;
                }
            }
        } catch (fw2 e) {
            e = e;
            ly8.p(e, "CctTransportBackend", "Couldn't encode request, returning with 400");
            return new c31(400, null, 0L);
        } catch (ConnectException e2) {
            e = e2;
            ly8.p(e, "CctTransportBackend", "Couldn't open connection, returning with 500");
            return new c31(500, null, 0L);
        } catch (UnknownHostException e3) {
            e = e3;
            ly8.p(e, "CctTransportBackend", "Couldn't open connection, returning with 500");
            return new c31(500, null, 0L);
        } catch (IOException e4) {
            e = e4;
            ly8.p(e, "CctTransportBackend", "Couldn't encode request, returning with 400");
            return new c31(400, null, 0L);
        }
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 3:
                return ConstructorConstructor.lambda$newDefaultConstructor$8((Constructor) obj);
            default:
                return ConstructorConstructor.lambda$newSpecialCollectionConstructor$5((Type) obj);
        }
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        org.swiftapps.swiftbackup.settings.a aVar = (org.swiftapps.swiftbackup.settings.a) this.b;
        MultipleBackupStrategy multipleBackupStrategy = (MultipleBackupStrategy) obj;
        if (multipleBackupStrategy != null) {
            b bVar = MultipleBackupStrategy.Companion;
            bVar.getClass();
            if (multipleBackupStrategy.equals(b.c())) {
                return;
            }
            w14.h(multipleBackupStrategy, "apps_multiple_backups_strategy");
            bVar.getClass();
            ((Preference) aVar.G.getValue()).B(f.a(b.c()).preferenceSummary());
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        ah8.a.updateInDatabase$lambda$0((bt3) this.b, task);
    }

    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) throws XmlPullParserException, IOException {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 7:
                IntroActivity introActivity = (IntroActivity) obj;
                int i2 = IntroActivity.V;
                int itemId = menuItem.getItemId();
                if (itemId == R.id.action_language) {
                    ai8.q(introActivity, LocaleActivity.class);
                } else if (itemId == R.id.action_swiftlogger) {
                    ai8.q(introActivity, SLogActivity.class);
                } else if (itemId == R.id.action_restart) {
                    Const.E(introActivity.r().concat(": Restart option"));
                }
                return true;
            default:
                kn3 kn3Var = (kn3) obj;
                if (menuItem.getItemId() != R.id.action_swiftlogger) {
                    return false;
                }
                kn3Var.invoke();
                return true;
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((k32) this.b).invoke(obj);
    }
}
