package defpackage;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.billingclient.api.ProxyBillingActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class dq0 {
    public final Long A;
    public final wx3 B;
    public final String c;
    public final String d;
    public volatile c49 f;
    public final Context g;
    public final l39 h;
    public volatile w89 i;
    public volatile oa9 j;
    public boolean k;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public final ma2 x;
    public final boolean y;
    public ExecutorService z;
    public final Object a = new Object();
    public volatile int b = 0;
    public final Handler e = new Handler(Looper.getMainLooper());
    public int l = 0;

    public dq0(ma2 ma2Var, Context context, c6 c6Var, db dbVar) {
        long jNextLong = new Random().nextLong();
        this.A = Long.valueOf(jNextLong);
        this.B = o99.a;
        this.c = "8.3.0";
        String strH = h();
        this.d = strH;
        this.g = context.getApplicationContext();
        fp9 fp9VarZ = hp9.z();
        fp9VarZ.b();
        hp9.x((hp9) fp9VarZ.b);
        if (strH != null) {
            fp9VarZ.b();
            hp9.y((hp9) fp9VarZ.b, strH);
        }
        String packageName = this.g.getPackageName();
        fp9VarZ.b();
        hp9.q((hp9) fp9VarZ.b, packageName);
        fp9VarZ.b();
        hp9.D((hp9) fp9VarZ.b, jNextLong);
        fp9VarZ.b();
        hp9.w((hp9) fp9VarZ.b);
        int i = Build.VERSION.SDK_INT;
        fp9VarZ.b();
        hp9.A((hp9) fp9VarZ.b, i);
        fp9VarZ.c();
        w(fp9VarZ, context);
        try {
            int i2 = this.g.getPackageManager().getPackageInfo(this.g.getPackageName(), 0).versionCode;
            fp9VarZ.b();
            hp9.B((hp9) fp9VarZ.b, i2);
        } catch (Throwable th) {
            ta9.i("BillingClient", "Error getting app version code.", th);
        }
        this.h = new l39(this.g, (hp9) fp9VarZ.a());
        if (c6Var == null) {
            ta9.h("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f = new c49(this.g, c6Var, this.h);
        this.x = ma2Var;
        this.y = false;
        this.g.getPackageName();
    }

    public static Future f(Callable callable, long j, final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future futureSubmit = executorService.submit(callable);
            handler.postDelayed(new Runnable() { // from class: g99
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    future.cancel(true);
                    ta9.h("BillingClient", "Async task is taking too long, cancel it!");
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j * 0.95d));
            return futureSubmit;
        } catch (Exception e) {
            ta9.i("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    public static String h() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void j(dq0 dq0Var, int i) {
        if (i != 0) {
            dq0Var.r(0);
            return;
        }
        synchronized (dq0Var.a) {
            try {
                if (dq0Var.b == 3) {
                    return;
                }
                dq0Var.r(2);
                c49 c49Var = dq0Var.f != null ? dq0Var.f : null;
                if (c49Var != null) {
                    boolean z = dq0Var.u;
                    IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
                    IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
                    intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
                    c49Var.f = z;
                    x39 x39Var = c49Var.e;
                    Context context = c49Var.a;
                    x39Var.a(context, intentFilter2);
                    boolean z2 = c49Var.f;
                    x39 x39Var2 = c49Var.d;
                    if (!z2) {
                        x39Var2.a(context, intentFilter);
                        return;
                    }
                    synchronized (x39Var2) {
                        try {
                            if (x39Var2.a) {
                                return;
                            }
                            if (Build.VERSION.SDK_INT >= 33) {
                                context.registerReceiver(x39Var2, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, true != x39Var2.b ? 4 : 2);
                            } else {
                                context.registerReceiver(x39Var2, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
                            }
                            x39Var2.a = true;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void w(fp9 fp9Var, Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                int i = (int) (memoryInfo.totalMem / 1048576);
                fp9Var.b();
                hp9.v((hp9) fp9Var.b, i);
                String str = Build.BRAND;
                fp9Var.b();
                hp9.r((hp9) fp9Var.b);
                String str2 = Build.MODEL;
                fp9Var.b();
                hp9.u((hp9) fp9Var.b);
                String str3 = Build.MANUFACTURER;
                fp9Var.b();
                hp9.t((hp9) fp9Var.b);
                String str4 = Build.FINGERPRINT;
                fp9Var.b();
                hp9.s((hp9) fp9Var.b);
            }
        } catch (RuntimeException e) {
            ta9.i("BillingClient", "Runtime error while populating device info.", e);
        }
    }

    public final void A(int i, int i2, yq0 yq0Var, String str) {
        try {
            int i3 = zd9.a;
            o(zd9.b(i, i2, yq0Var, str, wo9.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            ta9.i("BillingClient", "Unable to log.", th);
        }
    }

    public final void B(int i, yq0 yq0Var, long j, boolean z) {
        try {
            int i2 = zd9.a;
            try {
                this.h.s(zd9.b(i, 2, yq0Var, null, wo9.BROADCAST_ACTION_UNSPECIFIED), this.l, j, z);
            } catch (Throwable th) {
                ta9.i("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            ta9.i("BillingClient", "Unable to log.", th2);
        }
    }

    public final void C(int i, yq0 yq0Var, String str, long j, boolean z) {
        try {
            int i2 = zd9.a;
            try {
                this.h.s(zd9.b(i, 2, yq0Var, str, wo9.BROADCAST_ACTION_UNSPECIFIED), this.l, j, z);
            } catch (Throwable th) {
                ta9.i("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            ta9.i("BillingClient", "Unable to log.", th2);
        }
    }

    public final void D(yq0 yq0Var) {
        if (Thread.interrupted()) {
            return;
        }
        this.e.post(new vb(4, this, yq0Var));
    }

    public void a(ia9 ia9Var, kq0 kq0Var) {
        if (f(new wu7(this, kq0Var, ia9Var), 30000L, new te2(this, kq0Var, 4), k(), e()) == null) {
            yq0 yq0VarN = n();
            y(25, 3, yq0VarN);
            kq0Var.a(yq0VarN);
        }
    }

    /* JADX WARN: Code duplicated, block: B:124:0x02d2 A[EDGE_INSN: B:124:0x02d2->B:90:0x0213 BREAK  A[LOOP:5: B:84:0x01dd->B:103:0x025d]] */
    /* JADX WARN: Code duplicated, block: B:55:0x010a  */
    /* JADX WARN: Code duplicated, block: B:57:0x010e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r29v0, types: [dq0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v53 */
    /* JADX WARN: Type inference failed for: r4v54 */
    /* JADX WARN: Type inference failed for: r4v55 */
    /* JADX WARN: Type inference failed for: r5v10, types: [long] */
    /* JADX WARN: Type inference failed for: r5v9, types: [long] */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v2, types: [boolean] */
    public yq0 b(Activity activity, final gq0 gq0Var) {
        String str;
        String str2;
        yq0 yq0VarA;
        s76 s76Var;
        yq0 yq0VarA2;
        long j;
        long j2;
        boolean z;
        Future futureF;
        String str3;
        ?? r6;
        ?? r4;
        ?? r7;
        ?? r5;
        int iF;
        int i;
        String string;
        String str4;
        boolean z2;
        String str5;
        ArrayList arrayList;
        boolean z3;
        int i2;
        long jNextLong = new Random().nextLong();
        if (this.f == null || this.f.b == null) {
            yq0 yq0Var = le9.q;
            z(12, yq0Var, jNextLong);
            return yq0Var;
        }
        try {
            ta9.g("BillingClient", "Already connected or not opted into auto reconnection.");
            yq0 yq0Var2 = le9.i;
            TimeUnit.MILLISECONDS.getClass();
            int i3 = yq0Var2.a;
            if (i3 == 0) {
                ta9.g("BillingClient", "Reconnection succeeded with result: " + i3);
            } else {
                ta9.h("BillingClient", "Reconnection failed with result: " + i3);
            }
        } catch (Exception e) {
            if (e instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            ta9.i("BillingClient", "Error during reconnection attempt: ", e);
        }
        if (!v()) {
            yq0 yq0Var3 = le9.j;
            z(2, yq0Var3, jNextLong);
            D(yq0Var3);
            return yq0Var3;
        }
        synchronized (this.a) {
            try {
                if (this.j != null) {
                    this.j.getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(gq0Var.e);
        ma9 ma9Var = gq0Var.d;
        Iterator it = arrayList2.iterator();
        if ((it.hasNext() ? it.next() : null) != null) {
            e6.d();
            return null;
        }
        ga9 ga9Var = (ga9) ma9Var.iterator();
        fq0 fq0Var = (fq0) (ga9Var.hasNext() ? ga9Var.next() : null);
        v76 v76Var = fq0Var.a;
        String str6 = v76Var.c;
        String str7 = v76Var.d;
        if (str7.equals("subs") && !this.k) {
            ta9.h("BillingClient", "Current client doesn't support subscriptions.");
            yq0 yq0Var4 = le9.l;
            B(9, yq0Var4, jNextLong, false);
            D(yq0Var4);
            return yq0Var4;
        }
        if (gq0Var.b == null) {
            gq0Var.c.getClass();
            if (!gq0Var.a) {
                ma9 ma9Var2 = gq0Var.d;
                if (ma9Var2 != null) {
                    int size = ma9Var2.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        ((fq0) ma9Var2.get(i4)).getClass();
                    }
                }
            } else if (!this.m) {
                ta9.h("BillingClient", "Current client doesn't support extra params for buy intent.");
                yq0 yq0Var5 = le9.f;
                B(18, yq0Var5, jNextLong, false);
                D(yq0Var5);
                return yq0Var5;
            }
        } else if (!this.m) {
            ta9.h("BillingClient", "Current client doesn't support extra params for buy intent.");
            yq0 yq0Var6 = le9.f;
            B(18, yq0Var6, jNextLong, false);
            D(yq0Var6);
            return yq0Var6;
        }
        if (arrayList2.size() > 1 && !this.q) {
            ta9.h("BillingClient", "Current client doesn't support multi-item purchases.");
            yq0 yq0Var7 = le9.m;
            B(19, yq0Var7, jNextLong, false);
            D(yq0Var7);
            return yq0Var7;
        }
        if (!ma9Var.isEmpty() && !this.r) {
            ta9.h("BillingClient", "Current client doesn't support purchases with ProductDetails.");
            yq0 yq0Var8 = le9.o;
            B(20, yq0Var8, jNextLong, false);
            D(yq0Var8);
            return yq0Var8;
        }
        if (!gq0Var.d.isEmpty()) {
            fq0 fq0Var2 = (fq0) gq0Var.d.get(0);
            int i5 = 1;
            str = null;
            while (true) {
                if (i5 >= gq0Var.d.size()) {
                    str2 = str6;
                    v76 v76Var2 = fq0Var2.a;
                    String strOptString = v76Var2.b.optString("packageName");
                    HashMap map = new HashMap();
                    HashSet hashSet = new HashSet();
                    ma9 ma9Var3 = gq0Var.d;
                    int size2 = ma9Var3.size();
                    int i6 = 0;
                    while (true) {
                        if (i6 < size2) {
                            ma9 ma9Var4 = ma9Var3;
                            fq0 fq0Var3 = (fq0) ma9Var3.get(i6);
                            fq0Var3.getClass();
                            int i7 = size2;
                            v76 v76Var3 = fq0Var3.a;
                            int i8 = i6;
                            ArrayList arrayList3 = v76Var3.h;
                            String str8 = v76Var3.c;
                            if (arrayList3 != null && fq0Var3.b == null) {
                                yq0VarA = le9.a(5, "offerToken is required for constructing ProductDetailsParams for subscriptions. Missing value for product id: " + str8);
                                break;
                            }
                            if (map.containsKey(str8)) {
                                yq0VarA = le9.a(5, "ProductId can not be duplicated. Invalid product id: " + str8 + ".");
                                break;
                            }
                            map.put(str8, fq0Var3);
                            if (!v76Var2.d.equals("play_pass_subs") && !v76Var3.d.equals("play_pass_subs") && !strOptString.equals(v76Var3.b.optString("packageName"))) {
                                yq0VarA = le9.a(5, "All products must have the same package name.");
                                break;
                            }
                            i6 = i8 + 1;
                            size2 = i7;
                            ma9Var3 = ma9Var4;
                            hashSet = hashSet;
                        } else {
                            Iterator it2 = hashSet.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    ArrayList arrayList4 = v76Var2.i;
                                    String str9 = fq0Var2.b;
                                    if (str9 != null && arrayList4 != null) {
                                        Iterator it3 = arrayList4.iterator();
                                        do {
                                            if (!it3.hasNext()) {
                                                s76Var = null;
                                                break;
                                            }
                                            s76Var = (s76) it3.next();
                                        } while (!str9.equals(s76Var.b));
                                        if (s76Var != null && s76Var.e != null) {
                                            yq0VarA = le9.a(5, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay.");
                                            break;
                                        }
                                        yq0VarA = le9.i;
                                        break;
                                    }
                                    yq0VarA = le9.i;
                                    break;
                                }
                                String str10 = (String) it2.next();
                                if (map.containsKey(str10)) {
                                    ((fq0) map.get(str10)).getClass();
                                    yq0VarA = le9.a(5, "OldProductId must not be one of the products to be purchased. Invalid old product id: " + str10 + ".");
                                    break;
                                }
                            }
                        }
                    }
                    yq0VarA2 = yq0VarA;
                    break;
                }
                fq0 fq0Var4 = (fq0) gq0Var.d.get(i5);
                str2 = str6;
                if (!fq0Var4.a.d.equals(fq0Var2.a.d) && !fq0Var4.a.d.equals("play_pass_subs")) {
                    yq0VarA2 = le9.a(5, "All products should have same ProductType.");
                    break;
                }
                i5++;
                str6 = str2;
            }
        } else {
            str2 = str6;
            yq0VarA2 = le9.i;
            str = null;
        }
        if (yq0VarA2 != le9.i) {
            B(108, yq0VarA2, jNextLong, false);
            D(yq0VarA2);
            return yq0VarA2;
        }
        Bundle bundle = null;
        if (this.m) {
            boolean z4 = this.n;
            boolean z5 = this.s;
            this.x.getClass();
            this.x.getClass();
            boolean z6 = this.y;
            String str11 = this.c;
            String str12 = this.d;
            long jLongValue = this.A.longValue();
            this.g.getPackageName();
            final Bundle bundle2 = new Bundle();
            ta9.b(bundle2, str11, str12, jLongValue);
            bundle2.putLong("billingClientTransactionId", j);
            gq0Var.c.getClass();
            if (!TextUtils.isEmpty(gq0Var.b)) {
                j = r4;
                bundle2.putString("accountId", gq0Var.b);
            }
            j = r4;
            if (TextUtils.isEmpty(str)) {
                str4 = str;
            } else {
                str4 = str;
                bundle2.putString("obfuscatedProfileId", str4);
            }
            if (!TextUtils.isEmpty(str4)) {
                bundle2.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(str4)));
            }
            gq0Var.c.getClass();
            if (!TextUtils.isEmpty(str4)) {
                gq0Var.c.getClass();
                bundle2.putString("oldSkuPurchaseToken", str4);
            }
            if (!TextUtils.isEmpty(str4)) {
                bundle2.putString("oldSkuPurchaseId", str4);
            }
            gq0Var.c.getClass();
            if (!TextUtils.isEmpty(str4)) {
                gq0Var.c.getClass();
                bundle2.putString("originalExternalTransactionId", str4);
            }
            if (!TextUtils.isEmpty(str4)) {
                bundle2.putString("paymentsPurchaseParams", str4);
            }
            if (z4) {
                z2 = true;
                bundle2.putBoolean("enablePendingPurchases", true);
            } else {
                z2 = true;
            }
            if (z5) {
                bundle2.putBoolean("enablePendingPurchaseForSubscriptions", z2);
            }
            if (z6) {
                bundle2.putBoolean("enableAlternativeBilling", z2);
            }
            ArrayList arrayList5 = new ArrayList();
            ga9 ga9VarListIterator = gq0Var.d.listIterator(0);
            while (ga9VarListIterator.hasNext()) {
                ((fq0) ga9VarListIterator.next()).getClass();
            }
            if (!arrayList5.isEmpty()) {
                mf9 mf9VarP = qf9.p();
                mf9VarP.b();
                qf9.q((qf9) mf9VarP.b, arrayList5);
                bundle2.putByteArray("subscriptionProductReplacementParamsList", ((qf9) mf9VarP.a()).b());
            }
            if (arrayList2.isEmpty()) {
                ArrayList<String> arrayList6 = new ArrayList<>(ma9Var.size() - 1);
                ArrayList<String> arrayList7 = new ArrayList<>(ma9Var.size() - 1);
                ArrayList<String> arrayList8 = new ArrayList<>();
                ArrayList<String> arrayList9 = new ArrayList<>();
                ArrayList<String> arrayList10 = new ArrayList<>();
                ArrayList<Integer> arrayList11 = new ArrayList<>();
                int i9 = 0;
                while (i9 < ma9Var.size()) {
                    fq0 fq0Var5 = (fq0) ma9Var.get(i9);
                    v76 v76Var4 = fq0Var5.a;
                    long j3 = j;
                    if (!v76Var4.f.isEmpty()) {
                        arrayList8.add(v76Var4.f);
                    }
                    String str13 = fq0Var5.b;
                    arrayList9.add(str13);
                    if (TextUtils.isEmpty(str13) || (arrayList = v76Var4.i) == null || arrayList.isEmpty()) {
                        str5 = v76Var4.g;
                        break;
                    }
                    Iterator it4 = arrayList.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            str5 = v76Var4.g;
                            break;
                        }
                        s76 s76Var2 = (s76) it4.next();
                        Iterator it5 = it4;
                        if (!TextUtils.isEmpty(s76Var2.d) && Objects.equals(s76Var2.b, str13)) {
                            str5 = s76Var2.d;
                            break;
                        }
                        it4 = it5;
                    }
                    if (!TextUtils.isEmpty(str5)) {
                        arrayList10.add(str5);
                    }
                    if (i9 > 0) {
                        arrayList6.add(((fq0) ma9Var.get(i9)).a.c);
                        arrayList7.add(((fq0) ma9Var.get(i9)).a.d);
                    }
                    i9++;
                    j = j3;
                }
                j2 = j;
                bundle2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList9);
                if (!arrayList11.isEmpty()) {
                    bundle2.putIntegerArrayList("autoPayBalanceThresholdList", arrayList11);
                }
                if (!arrayList8.isEmpty()) {
                    bundle2.putStringArrayList("skuDetailsTokens", arrayList8);
                }
                if (!arrayList10.isEmpty()) {
                    bundle2.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList10);
                }
                if (!arrayList6.isEmpty()) {
                    bundle2.putStringArrayList("additionalSkus", arrayList6);
                    bundle2.putStringArrayList("additionalSkuTypes", arrayList7);
                }
            } else {
                ArrayList<String> arrayList12 = new ArrayList<>();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                Iterator it6 = arrayList2.iterator();
                if (it6.hasNext()) {
                    throw eq3.h(it6);
                }
                if (!arrayList12.isEmpty()) {
                    bundle2.putStringArrayList("skuDetailsTokens", arrayList12);
                }
                if (arrayList2.size() > 1) {
                    ArrayList<String> arrayList13 = new ArrayList<>(arrayList2.size() - 1);
                    ArrayList<String> arrayList14 = new ArrayList<>(arrayList2.size() - 1);
                    if (1 < arrayList2.size()) {
                        arrayList2.get(1).getClass();
                        e6.d();
                        return null;
                    }
                    bundle2.putStringArrayList("additionalSkus", arrayList13);
                    bundle2.putStringArrayList("additionalSkuTypes", arrayList14);
                }
                j2 = j;
            }
            if (bundle2.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.o) {
                yq0 yq0Var9 = le9.n;
                B(21, yq0Var9, j2, false);
                D(yq0Var9);
                return yq0Var9;
            }
            z = false;
            if (TextUtils.isEmpty(fq0Var.a.b.optString("packageName"))) {
                z3 = false;
            } else {
                bundle2.putString("skuPackageName", fq0Var.a.b.optString("packageName"));
                z3 = true;
            }
            if (!TextUtils.isEmpty(null)) {
                bundle2.putString("accountName", null);
            }
            Intent intent = activity.getIntent();
            if (intent == null) {
                ta9.h("BillingClient", "Activity's intent is null.");
            } else if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                bundle2.putString("proxyPackage", stringExtra);
                try {
                    bundle2.putString("proxyPackageVersion", this.g.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                } catch (PackageManager.NameNotFoundException unused) {
                    bundle2.putString("proxyPackageVersion", "package not found");
                }
            }
            if (this.r && !ma9Var.isEmpty()) {
                i2 = 17;
            } else if (this.p && z3) {
                i2 = 15;
            } else {
                i2 = this.n ? 9 : 6;
            }
            final int i10 = i2;
            final String str14 = str2;
            final String str15 = str7;
            futureF = f(new Callable(i10, str14, str15, gq0Var, bundle2) { // from class: m59
                public final /* synthetic */ int b;
                public final /* synthetic */ String c;
                public final /* synthetic */ String d;
                public final /* synthetic */ Bundle e;

                {
                    this.e = bundle2;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Bundle bundleC;
                    w89 w89Var;
                    dq0 dq0Var = this.a;
                    int i11 = this.b;
                    String str16 = this.c;
                    String str17 = this.d;
                    Bundle bundle3 = this.e;
                    try {
                        synchronized (dq0Var.a) {
                            w89Var = dq0Var.i;
                        }
                        if (w89Var == null) {
                            return ta9.c(107, le9.j);
                        }
                        return ((g89) w89Var).q(i11, dq0Var.g.getPackageName(), str16, str17, bundle3);
                    } catch (DeadObjectException e2) {
                        yq0 yq0Var10 = le9.j;
                        String strA = zd9.a(e2);
                        bundleC = ta9.c(5, yq0Var10);
                        if (strA != null) {
                            bundleC.putString("ADDITIONAL_LOG_DETAILS", strA);
                        }
                        return bundleC;
                    } catch (Exception e3) {
                        yq0 yq0Var11 = le9.h;
                        String strA2 = zd9.a(e3);
                        bundleC = ta9.c(5, yq0Var11);
                        if (strA2 != null) {
                            bundleC.putString("ADDITIONAL_LOG_DETAILS", strA2);
                        }
                        return bundleC;
                    }
                }
            }, 5000L, null, this.e, e());
            str3 = str15;
            bundle = bundle2;
        } else {
            j = r4;
            j2 = j;
            z = false;
            String str16 = str7;
            futureF = f(new j25(1, this, str2, str16), 5000L, null, this.e, e());
            str3 = str16;
        }
        try {
            if (futureF == null) {
                try {
                    yq0 yq0Var10 = le9.c;
                    B(25, yq0Var10, j2, z);
                    D(yq0Var10);
                    return yq0Var10;
                } catch (CancellationException e2) {
                    e = e2;
                    r7 = z;
                    r5 = j2;
                    ta9.i("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                    yq0 yq0Var11 = le9.k;
                    C(4, yq0Var11, zd9.a(e), r5, r7);
                    D(yq0Var11);
                    return yq0Var11;
                } catch (TimeoutException e3) {
                    e = e3;
                    r7 = z;
                    r5 = j2;
                    ta9.i("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                    yq0 yq0Var12 = le9.k;
                    C(4, yq0Var12, zd9.a(e), r5, r7);
                    D(yq0Var12);
                    return yq0Var12;
                } catch (Exception e4) {
                    e = e4;
                    r6 = z;
                    r4 = j2;
                    ta9.i("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
                    yq0 yq0Var13 = le9.j;
                    C(5, yq0Var13, zd9.a(e), r4, r6);
                    D(yq0Var13);
                    return yq0Var13;
                }
            }
            boolean z7 = z;
            long j4 = j2;
            Bundle bundle3 = (Bundle) futureF.get(5000L, TimeUnit.MILLISECONDS);
            int iA = ta9.a(bundle3, "BillingClient");
            String strF = ta9.f(bundle3, "BillingClient");
            if (iA == 0) {
                Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                intent2.putExtra("BUY_INTENT", (PendingIntent) bundle3.getParcelable("BUY_INTENT"));
                intent2.putExtra("billingClientTransactionId", j4);
                intent2.putExtra("wasServiceAutoReconnected", z7);
                activity.startActivity(intent2);
                return le9.i;
            }
            ta9.h("BillingClient", "Unable to buy item, Error response code: " + iA);
            yq0 yq0VarA3 = le9.a(iA, strF);
            if (bundle3 == null) {
                i = 1;
                iF = 1;
            } else {
                try {
                    Object obj = bundle3.get("LOG_REASON");
                    if (obj != null) {
                        if (obj instanceof Integer) {
                            iF = u48.f(((Integer) obj).intValue());
                            i = 1;
                        } else {
                            ta9.h("BillingClient", "Unexpected type for bundle log reason: " + obj.getClass().getName());
                        }
                    }
                } catch (Throwable th2) {
                    ta9.h("BillingClient", "Failed to get log reason from bundle: ".concat(String.valueOf(th2.getMessage())));
                }
                i = 1;
                iF = 1;
            }
            if (iF == i) {
                iF = 23;
            }
            if (bundle3 == null) {
                string = null;
            } else {
                try {
                    string = bundle3.getString("ADDITIONAL_LOG_DETAILS");
                } catch (Throwable th3) {
                    ta9.h("BillingClient", "Failed to get additional log details from bundle: ".concat(String.valueOf(th3.getMessage())));
                    string = null;
                }
            }
            try {
                C(iF, yq0VarA3, string, j4, z7);
                D(yq0VarA3);
                return yq0VarA3;
            } catch (CancellationException e5) {
                e = e5;
                r5 = j4;
                r7 = z7;
                ta9.i("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                yq0 yq0Var14 = le9.k;
                C(4, yq0Var14, zd9.a(e), r5, r7);
                D(yq0Var14);
                return yq0Var14;
            } catch (TimeoutException e6) {
                e = e6;
                r5 = j4;
                r7 = z7;
                ta9.i("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                yq0 yq0Var15 = le9.k;
                C(4, yq0Var15, zd9.a(e), r5, r7);
                D(yq0Var15);
                return yq0Var15;
            } catch (Exception e7) {
                e = e7;
                r4 = j4;
                r6 = z7;
                ta9.i("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
                yq0 yq0Var16 = le9.j;
                C(5, yq0Var16, zd9.a(e), r4, r6);
                D(yq0Var16);
                return yq0Var16;
            }
        } catch (CancellationException e8) {
            e = e8;
            r5 = str3;
            r7 = bundle;
        } catch (TimeoutException e9) {
            e = e9;
            r5 = str3;
            r7 = bundle;
        } catch (Exception e10) {
            e = e10;
            r4 = str3;
            r6 = bundle;
        }
    }

    public void c(jq6 jq6Var, w76 w76Var) {
        if (f(new j25(2, this, w76Var, jq6Var), 30000L, new te2(this, w76Var, 5), k(), e()) == null) {
            yq0 yq0VarN = n();
            y(25, 7, yq0VarN);
            ga9 ga9Var = ma9.b;
            mb9 mb9Var = mb9.e;
            w76Var.a(yq0VarN, new ib(10, mb9Var, mb9Var));
        }
    }

    public void d(eq0 eq0Var) {
        s(eq0Var);
    }

    public final synchronized ExecutorService e() {
        try {
            if (this.z == null) {
                this.z = Executors.newFixedThreadPool(ta9.a, new v99(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.z;
    }

    public final void g() {
        if (TextUtils.isEmpty(null)) {
            this.g.getPackageName();
        }
    }

    public final void i(kq0 kq0Var, yq0 yq0Var, int i, Exception exc) {
        ta9.i("BillingClient", "Error in acknowledge purchase!", exc);
        A(i, 3, yq0Var, zd9.a(exc));
        kq0Var.a(yq0Var);
    }

    public final Handler k() {
        return Looper.myLooper() == null ? this.e : new Handler(Looper.myLooper());
    }

    public final wb9 l(yq0 yq0Var, int i, String str, Exception exc) {
        ta9.i("BillingClient", str, exc);
        A(i, 7, yq0Var, zd9.a(exc));
        return new wb9(yq0Var.a, yq0Var.c, new ArrayList(), new ArrayList());
    }

    public final yq0 m() {
        ta9.g("BillingClient", "Service connection is valid. No need to re-initialize.");
        ho9 ho9VarQ = no9.q();
        ho9VarQ.b();
        no9.p((no9) ho9VarQ.b, 6);
        tq9 tq9VarP = uq9.p();
        tq9VarP.b();
        uq9.u((uq9) tq9VarP.b);
        tq9VarP.c(false);
        tq9VarP.d();
        ho9VarQ.b();
        no9.u((no9) ho9VarQ.b, (uq9) tq9VarP.a());
        p((no9) ho9VarQ.a());
        return le9.i;
    }

    public final yq0 n() {
        int[] iArr = {0, 3};
        synchronized (this.a) {
            for (int i = 0; i < 2; i++) {
                if (this.b == iArr[i]) {
                    return le9.j;
                }
            }
            return le9.h;
        }
    }

    public final void o(do9 do9Var) {
        try {
            l39 l39Var = this.h;
            int i = this.l;
            l39Var.getClass();
            try {
                fp9 fp9Var = (fp9) ((hp9) l39Var.b).l();
                fp9Var.b();
                hp9.C((hp9) fp9Var.b, i);
                l39Var.b = (hp9) fp9Var.a();
                l39Var.p(do9Var);
            } catch (Throwable th) {
                ta9.i("BillingLogger", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            ta9.i("BillingClient", "Unable to log.", th2);
        }
    }

    public final void p(no9 no9Var) {
        try {
            l39 l39Var = this.h;
            int i = this.l;
            l39Var.getClass();
            try {
                fp9 fp9Var = (fp9) ((hp9) l39Var.b).l();
                fp9Var.b();
                hp9.C((hp9) fp9Var.b, i);
                hp9 hp9Var = (hp9) fp9Var.a();
                l39Var.b = hp9Var;
                try {
                    l39Var.x(no9Var, hp9Var);
                } catch (Throwable th) {
                    ta9.i("BillingLogger", "Unable to log.", th);
                }
            } catch (Throwable th2) {
                ta9.i("BillingLogger", "Unable to log.", th2);
            }
        } catch (Throwable th3) {
            ta9.i("BillingClient", "Unable to log.", th3);
        }
    }

    public final void q(int i, yq0 yq0Var) {
        try {
            int i2 = zd9.a;
            co9 co9Var = (co9) zd9.b(i, 6, yq0Var, null, wo9.BROADCAST_ACTION_UNSPECIFIED).l();
            tq9 tq9VarP = uq9.p();
            tq9VarP.c(false);
            tq9VarP.d();
            co9Var.d(tq9VarP);
            o((do9) co9Var.a());
        } catch (Throwable th) {
            ta9.i("BillingClient", "Unable to log.", th);
        }
    }

    public final void r(int i) {
        String str;
        String str2;
        synchronized (this.a) {
            try {
                if (this.b == 3) {
                    return;
                }
                int i2 = this.b;
                if (i2 == 0) {
                    str = "DISCONNECTED";
                } else if (i2 != 1) {
                    str = i2 != 2 ? "CLOSED" : "CONNECTED";
                } else {
                    str = "CONNECTING";
                }
                if (i == 0) {
                    str2 = "DISCONNECTED";
                } else if (i != 1) {
                    str2 = i != 2 ? "CLOSED" : "CONNECTED";
                } else {
                    str2 = "CONNECTING";
                }
                ta9.g("BillingClient", "Setting clientState from " + str + " to " + str2);
                this.b = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void s(eq0 eq0Var) {
        int i;
        yq0 yq0VarM;
        yq0 yq0Var;
        synchronized (this.a) {
            try {
                if (v()) {
                    yq0VarM = m();
                } else {
                    if (this.b == 1) {
                        ta9.h("BillingClient", "Client is already in the process of connecting to billing service.");
                        yq0Var = le9.d;
                        q(37, yq0Var);
                    } else if (this.b == 3) {
                        ta9.h("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                        yq0Var = le9.j;
                        q(38, yq0Var);
                    } else {
                        r(1);
                        t();
                        ta9.g("BillingClient", "Starting in-app billing setup.");
                        this.j = new oa9(this, eq0Var);
                        oa9 oa9Var = this.j;
                        synchronized (oa9Var.d.a) {
                            t99 t99Var = oa9Var.b;
                            t99Var.c = 0L;
                            t99Var.b = false;
                            t99Var.a();
                        }
                        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                        intent.setPackage("com.android.vending");
                        List<ResolveInfo> listQueryIntentServices = this.g.getPackageManager().queryIntentServices(intent, 0);
                        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                            i = 41;
                        } else {
                            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
                            i = 40;
                            if (serviceInfo != null) {
                                String str = serviceInfo.packageName;
                                String str2 = serviceInfo.name;
                                if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                                    ta9.h("BillingClient", "The device doesn't have valid Play Store.");
                                } else {
                                    ComponentName componentName = new ComponentName(str, str2);
                                    Intent intent2 = new Intent(intent);
                                    intent2.setComponent(componentName);
                                    intent2.putExtra("playBillingLibraryVersion", this.c);
                                    synchronized (this.a) {
                                        try {
                                            if (this.b == 2) {
                                                yq0VarM = m();
                                            } else if (this.b != 1) {
                                                ta9.h("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                                yq0Var = le9.j;
                                                q(105, yq0Var);
                                            } else {
                                                oa9 oa9Var2 = this.j;
                                                if (this.g.bindService(intent2, oa9Var2, 1)) {
                                                    ta9.g("BillingClient", "Service was bonded successfully.");
                                                    yq0VarM = null;
                                                } else {
                                                    ta9.h("BillingClient", "Connection to Billing service is blocked.");
                                                    i = 39;
                                                }
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                            } else {
                                ta9.h("BillingClient", "The device doesn't have valid Play Store.");
                            }
                        }
                        r(0);
                        ta9.g("BillingClient", "Billing service unavailable on device.");
                        yq0 yq0Var2 = le9.b;
                        q(i, yq0Var2);
                        yq0VarM = yq0Var2;
                    }
                    yq0VarM = yq0Var;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (yq0VarM != null) {
            eq0Var.a(yq0VarM);
        }
    }

    public final void t() {
        synchronized (this.a) {
            if (this.j != null) {
                try {
                    this.g.unbindService(this.j);
                    this.i = null;
                    this.j = null;
                } catch (Throwable th) {
                    try {
                        ta9.i("BillingClient", "There was an exception while unbinding service!", th);
                        this.i = null;
                        this.j = null;
                    } catch (Throwable th2) {
                        this.i = null;
                        this.j = null;
                        throw th2;
                    }
                }
            }
        }
    }

    public final boolean u() {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        wx3 wx3Var = this.B;
        if (wx3Var == null) {
            f6.n("ticker");
            return false;
        }
        long jF = wx3Var.F();
        long j = 30000;
        int i = 1;
        long jF2 = 30000;
        while (i <= 3) {
            try {
                if (Math.max(0L, jF2) <= 0) {
                    ta9.h("BillingClient", "No time remaining for reconnection attempt.");
                    return v();
                }
                ta9.g("BillingClient", "Already connected or not opted into auto reconnection.");
                yq0 yq0Var = le9.i;
                timeUnit.getClass();
                int i2 = yq0Var.a;
                if (i2 == 0) {
                    ta9.g("BillingClient", "Reconnection succeeded with result: " + i2);
                    return v();
                }
                ta9.h("BillingClient", "Reconnection failed with result: " + i2);
                jF2 = j - (((wx3Var.F() - jF) + 0) / 1000000);
                long j2 = j;
                long jPow = ((long) Math.pow(2.0d, i - 1)) * 1000;
                if (jF2 < jPow) {
                    ta9.h("BillingClient", "Reconnection failed due to timeout limit reached.");
                    return v();
                }
                if (i < 3 && jPow > 0) {
                    try {
                        Thread.sleep(jPow);
                        jF2 = j2 - (((wx3Var.F() - jF) + 0) / 1000000);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        ta9.i("BillingClient", "Error sleeping during reconnection attempt: ", e);
                    }
                }
                i++;
                j = j2;
            } catch (Exception e2) {
                if (e2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                ta9.i("BillingClient", "Error during reconnection attempt: ", e2);
            }
        }
        ta9.h("BillingClient", "Max retries reached.");
        return v();
    }

    public final boolean v() {
        boolean z;
        synchronized (this.a) {
            try {
                z = false;
                if (this.b == 2 && this.i != null && this.j != null) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public final ot9 x(yq0 yq0Var, int i, String str, Exception exc) {
        A(i, 9, yq0Var, zd9.a(exc));
        ta9.i("BillingClient", str, exc);
        return new ot9(yq0Var, null);
    }

    public final void y(int i, int i2, yq0 yq0Var) {
        try {
            int i3 = zd9.a;
            o(zd9.b(i, i2, yq0Var, null, wo9.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            ta9.i("BillingClient", "Unable to log.", th);
        }
    }

    public final void z(int i, yq0 yq0Var, long j) {
        try {
            int i2 = zd9.a;
            try {
                this.h.q(zd9.b(i, 2, yq0Var, null, wo9.BROADCAST_ACTION_UNSPECIFIED), this.l, j);
            } catch (Throwable th) {
                ta9.i("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            ta9.i("BillingClient", "Unable to log.", th2);
        }
    }

    public dq0(ma2 ma2Var, Context context, db dbVar) {
        long jNextLong = new Random().nextLong();
        this.A = Long.valueOf(jNextLong);
        this.B = o99.a;
        this.c = "8.3.0";
        String strH = h();
        this.d = strH;
        this.g = context.getApplicationContext();
        fp9 fp9VarZ = hp9.z();
        fp9VarZ.b();
        hp9.x((hp9) fp9VarZ.b);
        if (strH != null) {
            fp9VarZ.b();
            hp9.y((hp9) fp9VarZ.b, strH);
        }
        String packageName = this.g.getPackageName();
        fp9VarZ.b();
        hp9.q((hp9) fp9VarZ.b, packageName);
        fp9VarZ.b();
        hp9.D((hp9) fp9VarZ.b, jNextLong);
        fp9VarZ.b();
        hp9.w((hp9) fp9VarZ.b);
        int i = Build.VERSION.SDK_INT;
        fp9VarZ.b();
        hp9.A((hp9) fp9VarZ.b, i);
        fp9VarZ.c();
        w(fp9VarZ, context);
        try {
            int i2 = this.g.getPackageManager().getPackageInfo(this.g.getPackageName(), 0).versionCode;
            fp9VarZ.b();
            hp9.B((hp9) fp9VarZ.b, i2);
        } catch (Throwable th) {
            ta9.i("BillingClient", "Error getting app version code.", th);
        }
        this.h = new l39(this.g, (hp9) fp9VarZ.a());
        ta9.h("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f = new c49(this.g, null, this.h);
        this.x = ma2Var;
        this.g.getPackageName();
    }
}
