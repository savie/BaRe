package defpackage;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Parcelable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import net.openid.appauth.AuthorizationManagementActivity;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k90 implements e59 {
    public boolean a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;

    public k90(Context context, wj wjVar) {
        int i;
        bw0 bw0Var = wjVar.a;
        Intent intent = cw0.a;
        PackageManager packageManager = context.getPackageManager();
        ArrayList<aw0> arrayList = new ArrayList();
        Intent intent2 = cw0.a;
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent2, 0);
        String str = resolveInfoResolveActivity != null ? resolveInfoResolveActivity.activityInfo.packageName : null;
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent2, 131136)) {
            IntentFilter intentFilter = resolveInfo.filter;
            if (intentFilter != null && intentFilter.hasAction("android.intent.action.VIEW") && resolveInfo.filter.hasCategory("android.intent.category.BROWSABLE") && resolveInfo.filter.schemesIterator() != null && resolveInfo.filter.authoritiesIterator() == null) {
                Iterator<String> itSchemesIterator = resolveInfo.filter.schemesIterator();
                boolean zEquals = false;
                boolean zEquals2 = false;
                while (itSchemesIterator.hasNext()) {
                    String next = itSchemesIterator.next();
                    zEquals |= "http".equals(next);
                    zEquals2 |= "https".equals(next);
                    if (zEquals && zEquals2) {
                        try {
                            PackageInfo packageInfo = packageManager.getPackageInfo(resolveInfo.activityInfo.packageName, 64);
                            String str2 = resolveInfo.activityInfo.packageName;
                            Intent intent3 = new Intent();
                            intent3.setAction("android.support.customtabs.action.CustomTabsService");
                            intent3.setPackage(str2);
                            if (packageManager.resolveService(intent3, 0) != null) {
                                i = 1;
                                aw0 aw0Var = new aw0(packageInfo, true);
                                if (resolveInfo.activityInfo.packageName.equals(str)) {
                                    arrayList.add(0, aw0Var);
                                } else {
                                    arrayList.add(aw0Var);
                                    i = 0;
                                }
                            } else {
                                i = 0;
                            }
                            aw0 aw0Var2 = new aw0(packageInfo, false);
                            if (resolveInfo.activityInfo.packageName.equals(str)) {
                                arrayList.add(i, aw0Var2);
                                break;
                            } else {
                                arrayList.add(aw0Var2);
                                break;
                            }
                        } catch (PackageManager.NameNotFoundException unused) {
                        }
                    }
                }
            }
        }
        aw0 aw0Var3 = null;
        for (aw0 aw0Var4 : arrayList) {
            if (bw0Var.h(aw0Var4)) {
                if (aw0Var4.d.booleanValue()) {
                    aw0Var3 = aw0Var4;
                    break;
                } else if (aw0Var3 == null) {
                    aw0Var3 = aw0Var4;
                }
            }
        }
        e38 e38Var = new e38(context);
        this.a = false;
        this.b = context;
        this.c = wjVar;
        this.d = e38Var;
        this.e = aw0Var3;
        if (aw0Var3 == null || !aw0Var3.d.booleanValue()) {
            return;
        }
        String str3 = aw0Var3.a;
        synchronized (e38Var) {
            try {
                if (((c72) e38Var.e) != null) {
                    return;
                }
                e38Var.e = new c72(e38Var);
                Context context2 = (Context) ((WeakReference) e38Var.b).get();
                if (context2 == null || !i72.a(context2, str3, (c72) e38Var.e)) {
                    j15.e().f(4, null, "Unable to bind custom tabs service", new Object[0]);
                    ((CountDownLatch) e38Var.d).countDown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a() {
        if (this.a) {
            return;
        }
        e38 e38Var = (e38) this.d;
        synchronized (e38Var) {
            try {
                if (((c72) e38Var.e) != null) {
                    Context context = (Context) ((WeakReference) e38Var.b).get();
                    if (context != null) {
                        context.unbindService((c72) e38Var.e);
                    }
                    ((AtomicReference) e38Var.c).set(null);
                    j15.d("CustomTabsService is disconnected", new Object[0]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.a = true;
    }

    public Intent b(e90 e90Var) {
        ka kaVarB;
        if (this.a) {
            l0.e("Service has been disposed and rendered inoperable");
            return null;
        }
        e38 e38Var = (e38) this.d;
        CountDownLatch countDownLatch = (CountDownLatch) e38Var.d;
        try {
            countDownLatch.await(1L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            j15.e().f(4, null, "Interrupted while waiting for browser connection", new Object[0]);
            countDownLatch.countDown();
        }
        i72 i72Var = (i72) ((AtomicReference) e38Var.c).get();
        if (i72Var != null) {
            kaVarB = i72Var.b();
            if (kaVarB == null) {
                j15.e().f(5, null, "Failed to create custom tabs session through custom tabs client", new Object[0]);
                kaVarB = null;
            }
        } else {
            kaVarB = null;
        }
        ix0 ix0VarA = new h72(kaVarB).a();
        if (this.a) {
            l0.e("Service has been disposed and rendered inoperable");
            return null;
        }
        aw0 aw0Var = (aw0) this.e;
        if (aw0Var == null) {
            throw new ActivityNotFoundException();
        }
        Boolean bool = aw0Var.d;
        Uri.Builder builderAppendQueryParameter = ((Uri) e90Var.a.b).buildUpon().appendQueryParameter("redirect_uri", e90Var.h.toString()).appendQueryParameter("client_id", e90Var.b).appendQueryParameter("response_type", e90Var.g);
        pe4.c(builderAppendQueryParameter, "display", e90Var.c);
        pe4.c(builderAppendQueryParameter, "login_hint", e90Var.d);
        pe4.c(builderAppendQueryParameter, "prompt", e90Var.e);
        pe4.c(builderAppendQueryParameter, "ui_locales", e90Var.f);
        pe4.c(builderAppendQueryParameter, "state", e90Var.j);
        pe4.c(builderAppendQueryParameter, "nonce", e90Var.k);
        pe4.c(builderAppendQueryParameter, "scope", e90Var.i);
        pe4.c(builderAppendQueryParameter, "response_mode", e90Var.o);
        if (e90Var.l != null) {
            builderAppendQueryParameter.appendQueryParameter("code_challenge", e90Var.m).appendQueryParameter("code_challenge_method", e90Var.n);
        }
        pe4.c(builderAppendQueryParameter, "claims", e90Var.p);
        pe4.c(builderAppendQueryParameter, "claims_locales", e90Var.q);
        for (Map.Entry entry : e90Var.r.entrySet()) {
            builderAppendQueryParameter.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        Uri uriBuild = builderAppendQueryParameter.build();
        Intent intent = bool.booleanValue() ? (Intent) ix0VarA.b : new Intent("android.intent.action.VIEW");
        intent.setPackage(aw0Var.a);
        intent.setData(uriBuild);
        j15.d("Using %s as browser for auth, custom tab = %s", intent.getPackage(), bool.toString());
        Context context = (Context) this.b;
        int i = AuthorizationManagementActivity.f;
        Intent intent2 = new Intent(context, (Class<?>) AuthorizationManagementActivity.class);
        intent2.putExtra("authIntent", intent);
        intent2.putExtra("authRequest", e90Var.a());
        intent2.putExtra("authRequestType", "authorization");
        intent2.putExtra("completeIntent", (Parcelable) null);
        intent2.putExtra("cancelIntent", (Parcelable) null);
        return intent2;
    }

    public void c(l58 l58Var, t91 t91Var, j90 j90Var) {
        if (this.a) {
            l0.e("Service has been disposed and rendered inoperable");
            return;
        }
        j15.d("Initiating code exchange request to %s", (Uri) l58Var.a.c);
        wj wjVar = (wj) this.c;
        wjVar.getClass();
        new i90(l58Var, t91Var, j90Var, Boolean.valueOf(wjVar.b)).execute(new Void[0]);
    }

    @Override // defpackage.e59
    public String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("email", (String) this.b);
        jSONObject.put("password", (String) this.c);
        jSONObject.put("returnSecureToken", this.a);
        String str = (String) this.d;
        if (str != null) {
            jSONObject.put("tenantId", str);
        }
        String str2 = (String) this.e;
        if (str2 != null) {
            yc9.E0(jSONObject, "captchaResponse", str2);
        } else {
            jSONObject.put("clientType", "CLIENT_TYPE_ANDROID");
        }
        return jSONObject.toString();
    }

    public k90(String str, String str2, String str3, String str4) {
        ly8.e(str);
        this.b = str;
        ly8.e(str2);
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.a = true;
    }

    public k90(Context context) {
        this(context, wj.c);
    }
}
