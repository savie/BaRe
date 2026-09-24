package com.pcloud.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.microsoft.identity.client.claims.ClaimsRequest;
import defpackage.a72;
import defpackage.eq3;
import defpackage.f90;
import defpackage.gh;
import defpackage.h72;
import defpackage.h90;
import defpackage.i72;
import defpackage.ii8;
import defpackage.ix0;
import defpackage.ka;
import defpackage.l0;
import defpackage.nz4;
import defpackage.r80;
import defpackage.s80;
import defpackage.v80;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthorizationActivity extends Activity {
    public static final Uri f = Uri.parse("https://my.pcloud.com/oauth2/authorize");
    public WebView a;
    public f90 b;
    public r80 c;
    public gh d = null;
    public boolean e = true;

    public static long b(Map map, String str) {
        String strC = c(map, str);
        try {
            return Long.parseLong(strC);
        } catch (NumberFormatException unused) {
            l0.e(eq3.l("'", strC, "' is not a valid value for '", str, "'."));
            return 0L;
        }
    }

    public static String c(Map map, String str) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            return str2;
        }
        l0.e(eq3.k("Missing '", str, "' response parameter."));
        return null;
    }

    public final void a(Uri uri) {
        this.a.setWebViewClient(new s80(this));
        this.a.setVisibility(0);
        WebSettings settings = this.a.getSettings();
        settings.setCacheMode(2);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        this.a.loadUrl(uri.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.TreeMap] */
    public final boolean d(String str) {
        ?? treeMap;
        if (str != null) {
            if (str.startsWith("pcloud-oauth://" + getPackageName())) {
                try {
                    List list = ii8.a;
                    String fragment = Uri.parse(str).getFragment();
                    if (fragment != null) {
                        treeMap = new TreeMap();
                        for (String str2 : fragment.split("&")) {
                            int iIndexOf = str2.indexOf(61);
                            treeMap.put(str2.substring(0, iIndexOf), str2.substring(iIndexOf + 1));
                        }
                    } else {
                        treeMap = Collections.EMPTY_MAP;
                    }
                    if (!treeMap.containsKey(ClaimsRequest.ACCESS_TOKEN) && !treeMap.containsKey("code")) {
                        e(h90.c, null);
                        return true;
                    }
                    v80 v80Var = new v80(this.b, h90.a, this.b.a == 2 ? c(treeMap, ClaimsRequest.ACCESS_TOKEN) : null, b(treeMap, "userid"), b(treeMap, "locationid"), this.b.a == 1 ? c(treeMap, "code") : null, c(treeMap, "hostname"), null);
                    Intent intent = new Intent();
                    intent.putExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_RESULT", v80Var);
                    setResult(-1, intent);
                    finish();
                    return true;
                } catch (Exception e) {
                    e(h90.d, e.getMessage());
                    return true;
                }
            }
        }
        return false;
    }

    public final void e(h90 h90Var, String str) {
        v80 v80Var = new v80(this.b, h90Var, null, 0L, 0L, null, null, str);
        Intent intent = new Intent();
        intent.putExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_RESULT", v80Var);
        setResult(h90Var == h90.b ? 0 : -1, intent);
        finish();
    }

    public final void f(Uri uri, String str) {
        this.a.setVisibility(4);
        gh ghVar = new gh();
        ghVar.a = uri;
        ghVar.b = new a72(ghVar);
        this.d = ghVar;
        i72.a(this, getPackageName(), (a72) ghVar.b);
        h72 h72Var = new h72((ka) ghVar.c);
        h72Var.a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 1);
        ix0 ix0VarA = h72Var.a();
        Intent intent = (Intent) ix0VarA.b;
        intent.setPackage(str);
        intent.addFlags(1073741824);
        intent.setData(uri);
        intent.setData(uri);
        startActivity(intent, (Bundle) ix0VarA.c);
        this.e = false;
        this.c = new r80(this);
        nz4.e(this).f(this.c, new IntentFilter("CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION"));
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.a.canGoBack()) {
            this.a.goBack();
        } else {
            e(h90.b, null);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if ("CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION".equals(getIntent().getAction())) {
            setResult(0);
            finish();
            return;
        }
        if (intent == null || !intent.hasExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_REQUEST")) {
            l0.e("AuthorizationActivity must be launched with an Intent created via the AuthorizationActivity.createIntent() methods.");
            return;
        }
        this.b = (f90) intent.getParcelableExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_REQUEST");
        setContentView(R.layout.activity_pcloud_authentication);
        this.a = (WebView) findViewById(R.id.webView);
        f90 f90Var = this.b;
        int i = f90Var.a;
        Set set = f90Var.c;
        Uri.Builder builderAppendQueryParameter = f.buildUpon().appendQueryParameter("response_type", i == 1 ? "code" : "token").appendQueryParameter("client_id", f90Var.b).appendQueryParameter("redirect_uri", "pcloud-oauth://" + getPackageName());
        if (f90Var.e) {
            builderAppendQueryParameter.appendQueryParameter("force_reapprove", "true");
        }
        if (!set.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            Iterator it = set.iterator();
            while (it.hasNext()) {
                sb.append((String) it.next());
                if (it.hasNext()) {
                    sb.append(",");
                }
            }
            builderAppendQueryParameter.appendQueryParameter("permissions", sb.toString());
        }
        Uri uriBuild = builderAppendQueryParameter.build();
        List<String> list = this.b.d;
        List list2 = ii8.a;
        String str = null;
        if (!list.isEmpty()) {
            List<ResolveInfo> listQueryIntentServices = getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
            if (listQueryIntentServices != null) {
                loop1: for (String str2 : list) {
                    Iterator<ResolveInfo> it2 = listQueryIntentServices.iterator();
                    while (it2.hasNext()) {
                        ServiceInfo serviceInfo = it2.next().serviceInfo;
                        if (str2.equals(serviceInfo.packageName)) {
                            str = serviceInfo.packageName;
                            break loop1;
                        }
                    }
                }
            }
        }
        if (str == null) {
            a(uriBuild);
            return;
        }
        try {
            f(uriBuild, str);
        } catch (ActivityNotFoundException unused) {
            a(uriBuild);
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        gh ghVar = this.d;
        if (ghVar != null) {
            a72 a72Var = (a72) ghVar.b;
            if (a72Var != null) {
                unbindService(a72Var);
                ghVar.b = null;
                ghVar.c = null;
            }
            this.d = null;
        }
        if (this.c != null) {
            nz4.e(this).h(this.c);
            this.c = null;
        }
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        f90 f90Var = (f90) getIntent().getParcelableExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_REQUEST");
        Uri uri = (Uri) intent.getParcelableExtra("AuthorizationActivity.EXTRA_URL");
        intent.putExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_REQUEST", f90Var);
        setIntent(intent);
        if (f90Var == null || uri == null) {
            e(h90.d, f90Var == null ? "Missing intent extra ARGUMENT_AUTH_REQUEST" : "Missing intent extra EXTRA_REDIRECT_URL");
            return;
        }
        if ("AuthorizationActivity.REFRESH_ACTION".equals(intent.getAction())) {
            nz4.e(this).g(new Intent("CustomTabActivity.DESTROY_ACTION"));
            d(uri.toString());
        } else if ("CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION".equals(intent.getAction())) {
            d(uri.toString());
        }
    }

    @Override // android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle != null) {
            this.a.restoreState(bundle);
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.e && this.a.getVisibility() != 0) {
            e(h90.b, null);
        }
        this.e = true;
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.a.saveState(bundle);
    }
}
