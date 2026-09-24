package com.google.firebase.auth;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.FirebaseApp;
import defpackage.a49;
import defpackage.ae4;
import defpackage.au2;
import defpackage.b69;
import defpackage.b8;
import defpackage.bx5;
import defpackage.d80;
import defpackage.e2a;
import defpackage.e49;
import defpackage.ec9;
import defpackage.ga6;
import defpackage.if3;
import defpackage.ix0;
import defpackage.j69;
import defpackage.jf3;
import defpackage.k49;
import defpackage.l59;
import defpackage.ly8;
import defpackage.me4;
import defpackage.n49;
import defpackage.o49;
import defpackage.o59;
import defpackage.ob;
import defpackage.p49;
import defpackage.q99;
import defpackage.r49;
import defpackage.rs9;
import defpackage.t49;
import defpackage.u50;
import defpackage.u99;
import defpackage.ua9;
import defpackage.ue2;
import defpackage.uh5;
import defpackage.v1a;
import defpackage.v88;
import defpackage.v89;
import defpackage.vb9;
import defpackage.w1a;
import defpackage.w39;
import defpackage.w49;
import defpackage.w7;
import defpackage.x99;
import defpackage.xs1;
import defpackage.xz5;
import defpackage.y49;
import defpackage.y89;
import defpackage.yo1;
import defpackage.yz5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseAuth implements ae4 {
    public final FirebaseApp a;
    public final CopyOnWriteArrayList b;
    public final CopyOnWriteArrayList c;
    public final CopyOnWriteArrayList d;
    public final ix0 e;
    public p49 f;
    public final Object g;
    public final Object h;
    public String i;
    public yo1 j;
    public final RecaptchaAction k;
    public final RecaptchaAction l;
    public final RecaptchaAction m;
    public final bx5 n;
    public final ec9 o;
    public final ga6 p;
    public vb9 q;
    public final Executor r;
    public final Executor s;
    public final Executor t;

    /* JADX WARN: Code duplicated, block: B:4:0x00ce  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.getSVar()" because "arg" is null
    	at jadx.core.dex.instructions.args.RegisterArg.sameCodeVar(RegisterArg.java:193)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.extractConstNumber(SwitchOverStringVisitor.java:369)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.collectPart1RegionCases(SwitchOverStringVisitor.java:207)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:108)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v9, types: [if3, yb9] */
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
    public FirebaseAuth(FirebaseApp firebaseApp, ga6 ga6Var, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, Executor executor3) {
        p49 p49VarA;
        b8 b8Var;
        b69 b69VarN;
        char c = 0;
        ix0 ix0Var = new ix0(10, (boolean) (0 == true ? 1 : 0));
        ix0Var.b = new w49(firebaseApp, scheduledExecutorService);
        ix0Var.c = executor;
        Context applicationContext = firebaseApp.getApplicationContext();
        String persistenceKey = firebaseApp.getPersistenceKey();
        bx5 bx5Var = new bx5();
        ly8.h(applicationContext);
        ly8.e(persistenceKey);
        bx5Var.b = persistenceKey;
        Context applicationContext2 = applicationContext.getApplicationContext();
        bx5Var.a = applicationContext2;
        bx5Var.c = applicationContext2.getSharedPreferences("com.google.firebase.auth.api.Store." + persistenceKey, 0);
        bx5Var.d = new u50("StorageHelpers", new String[0]);
        ec9 ec9Var = ec9.b;
        this.b = new CopyOnWriteArrayList();
        this.c = new CopyOnWriteArrayList();
        this.d = new CopyOnWriteArrayList();
        this.g = new Object();
        this.h = new Object();
        this.k = RecaptchaAction.custom("getOobCode");
        this.l = RecaptchaAction.custom("signInWithPassword");
        this.m = RecaptchaAction.custom("signUpPassword");
        RecaptchaAction.custom("sendVerificationCode");
        RecaptchaAction.custom("mfaSmsEnrollment");
        RecaptchaAction.custom("mfaSmsSignIn");
        this.a = firebaseApp;
        this.e = ix0Var;
        this.n = bx5Var;
        ly8.h(ec9Var);
        this.o = ec9Var;
        this.p = ga6Var;
        this.r = executor;
        this.s = executor2;
        this.t = executor3;
        bx5 bx5Var2 = this.n;
        String strC = bx5Var2.c("com.google.firebase.auth.FIREBASE_USER");
        u50 u50Var = (u50) bx5Var2.d;
        if (TextUtils.isEmpty(strC)) {
            p49VarA = null;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(strC);
                if (jSONObject.has("type") && "com.google.firebase.auth.internal.DefaultFirebaseUser".equalsIgnoreCase(jSONObject.optString("type"))) {
                    p49VarA = bx5Var2.a(jSONObject);
                } else {
                    p49VarA = null;
                }
            } catch (Exception unused) {
                Log.i((String) u50Var.b, u50Var.e("Failed to restore user data from persistent storage.", new Object[0]));
            }
        }
        this.f = p49VarA;
        if (p49VarA != null) {
            String strC2 = bx5Var2.c("com.google.firebase.auth.GET_TOKEN_RESPONSE." + p49VarA.b.a);
            if (strC2 != null) {
                try {
                    b69VarN = b69.n(strC2);
                } catch (e2a unused2) {
                    Log.i((String) u50Var.b, u50Var.e("Failed to restore token data from persistent storage.", new Object[0]));
                    b69VarN = null;
                }
            } else {
                b69VarN = null;
            }
            if (b69VarN != null) {
                g(this, this.f, b69VarN, false, false);
            }
        }
        this.o.a.getClass();
        FirebaseApp firebaseApp2 = this.a;
        SharedPreferences sharedPreferences = firebaseApp2.getApplicationContext().getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0);
        if (firebaseApp2.getName().equals(sharedPreferences.getString("firebaseAppName", ""))) {
            if (!sharedPreferences.contains("verifyAssertionRequest")) {
                if (!sharedPreferences.contains("recaptchaToken")) {
                    if (sharedPreferences.contains("statusCode")) {
                        Status status = new Status(sharedPreferences.getInt("statusCode", 17062), sharedPreferences.getString("statusMessage", ""), null, null);
                        sharedPreferences.getLong("timestamp", 0L);
                        x99.b(sharedPreferences);
                        Tasks.forException(y49.a(status));
                        return;
                    }
                    return;
                }
                String string = sharedPreferences.getString("recaptchaToken", "");
                String string2 = sharedPreferences.getString("operation", "");
                sharedPreferences.getLong("timestamp", 0L);
                string2.getClass();
                if (string2.equals("com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA")) {
                    Tasks.forResult(string);
                }
                x99.b(sharedPreferences);
                return;
            }
            String string3 = sharedPreferences.getString("verifyAssertionRequest", "");
            j69 j69Var = (j69) rs9.d(string3 == null ? null : Base64.decode(string3, 10), j69.CREATOR);
            String string4 = sharedPreferences.getString("operation", "");
            String string5 = sharedPreferences.getString("tenantId", null);
            String string6 = sharedPreferences.getString("firebaseUserUid", "");
            sharedPreferences.getLong("timestamp", 0L);
            if (string5 != null) {
                ly8.e(string5);
                synchronized (this.h) {
                    this.i = string5;
                }
                j69Var.y = string5;
            }
            string4.getClass();
            switch (string4.hashCode()) {
                case -98509410:
                    if (!string4.equals("com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE")) {
                        c = -1;
                    }
                    break;
                case 175006864:
                    c = !string4.equals("com.google.firebase.auth.internal.NONGMSCORE_LINK") ? -1 : 1;
                    break;
                case 1450464913:
                    c = !string4.equals("com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN") ? -1 : 2;
                    break;
                default:
                    c = -1;
                    break;
            }
            switch (c) {
                case 0:
                    if (c().b.a.equals(string6)) {
                        p49 p49VarC = c();
                        ua9 ua9VarU = ua9.u(j69Var);
                        ly8.h(p49VarC);
                        d80 d80VarQ = ua9VarU.q();
                        if (!(d80VarQ instanceof au2)) {
                            boolean z = d80VarQ instanceof xz5;
                            ix0 ix0Var2 = this.e;
                            if (!z) {
                                String strN = p49VarC.n();
                                if3 if3Var = new if3(this);
                                ix0Var2.getClass();
                                k49 k49Var = new k49(d80VarQ, strN);
                                k49Var.c = firebaseApp2;
                                k49Var.d = p49VarC;
                                k49Var.e = if3Var;
                                k49Var.f = if3Var;
                                ix0Var2.m(k49Var);
                            } else {
                                if3 if3Var2 = new if3(this);
                                ix0Var2.getClass();
                                o59.a.clear();
                                n49 n49Var = new n49((xz5) d80VarQ);
                                n49Var.c = firebaseApp2;
                                n49Var.d = p49VarC;
                                n49Var.e = if3Var2;
                                n49Var.f = if3Var2;
                                ix0Var2.m(n49Var);
                            }
                        } else {
                            au2 au2Var = (au2) d80VarQ;
                            if (!"password".equals(!TextUtils.isEmpty(au2Var.b) ? "password" : "emailLink")) {
                                String str = au2Var.c;
                                ly8.e(str);
                                int i = b8.c;
                                ly8.e(str);
                                try {
                                    b8Var = new b8(str);
                                } catch (IllegalArgumentException unused3) {
                                    b8Var = null;
                                }
                                if (b8Var == null || TextUtils.equals(this.i, b8Var.b)) {
                                    new w39(this, true, p49VarC, au2Var).O(this, this.i, this.k);
                                } else {
                                    Tasks.forException(y49.a(new Status(17072, null, null, null)));
                                }
                            } else {
                                String str2 = au2Var.a;
                                String str3 = au2Var.b;
                                ly8.e(str3);
                                String strN2 = p49VarC.n();
                                new a49(this, str2, true, p49VarC, str3, strN2).O(this, strN2, this.l);
                            }
                        }
                    }
                    break;
                case 1:
                    if (c().b.a.equals(string6)) {
                        p49 p49VarC2 = c();
                        ua9 ua9VarU2 = ua9.u(j69Var);
                        ly8.h(p49VarC2);
                        this.e.l(this.a, p49VarC2, ua9VarU2.q(), null, new if3(this));
                    }
                    break;
                case 2:
                    d(ua9.u(j69Var));
                    break;
            }
            x99.b(sharedPreferences);
        }
    }

    public static void f(FirebaseAuth firebaseAuth, p49 p49Var) {
        if (p49Var != null) {
            Log.d("FirebaseAuth", "Notifying auth state listeners about user ( " + p49Var.b.a + " ).");
        } else {
            Log.d("FirebaseAuth", "Notifying auth state listeners about a sign-out event.");
        }
        firebaseAuth.t.execute(new w7(firebaseAuth, 7));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00c0  */
    public static void g(FirebaseAuth firebaseAuth, p49 p49Var, b69 b69Var, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        ArrayList arrayList;
        boolean z6;
        boolean z7;
        ArrayList arrayList2;
        ly8.h(p49Var);
        ly8.h(b69Var);
        p49 p49Var2 = firebaseAuth.f;
        boolean z8 = p49Var2 != null && p49Var.b.a.equals(p49Var2.b.a);
        if (z8 || !z2) {
            p49 p49Var3 = firebaseAuth.f;
            if (p49Var3 == null) {
                z4 = true;
                z3 = true;
            } else {
                z3 = (z8 && p49Var3.a.b.equals(b69Var.b)) ? false : true;
                z4 = !z8;
            }
            if (firebaseAuth.f != null) {
                String str = p49Var.b.a;
                p49 p49Var4 = firebaseAuth.f;
                if (str.equals(p49Var4 == null ? null : p49Var4.b.a)) {
                    firebaseAuth.f.u(p49Var.e);
                    if (!p49Var.q()) {
                        firebaseAuth.f.n = Boolean.FALSE;
                    }
                    u99 u99Var = p49Var.t;
                    if (u99Var != null) {
                        arrayList2 = new ArrayList();
                        Iterator it = u99Var.a.iterator();
                        while (it.hasNext()) {
                            arrayList2.add((yz5) it.next());
                        }
                        Iterator it2 = u99Var.b.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add((v88) it2.next());
                        }
                    } else {
                        arrayList2 = new ArrayList();
                    }
                    List arrayList3 = p49Var.x;
                    firebaseAuth.f.v(arrayList2);
                    p49 p49Var5 = firebaseAuth.f;
                    if (arrayList3 == null) {
                        p49Var5.getClass();
                        arrayList3 = new ArrayList();
                    }
                    p49Var5.x = arrayList3;
                } else {
                    firebaseAuth.f = p49Var;
                }
            } else {
                firebaseAuth.f = p49Var;
            }
            if (z) {
                bx5 bx5Var = firebaseAuth.n;
                p49 p49Var6 = firebaseAuth.f;
                bx5Var.getClass();
                ly8.h(p49Var6);
                u50 u50Var = (u50) bx5Var.d;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("cachedTokenState", p49Var6.a.q());
                    jSONObject.put("applicationName", FirebaseApp.getInstance(p49Var6.c).getName());
                    jSONObject.put("type", "com.google.firebase.auth.internal.DefaultFirebaseUser");
                    if (p49Var6.e != null) {
                        JSONArray jSONArray = new JSONArray();
                        ArrayList arrayList4 = p49Var6.e;
                        int size = arrayList4.size();
                        if (arrayList4.size() > 30) {
                            z6 = true;
                            u50Var.g("Provider user info list size larger than max size, truncating list to %d. Actual list size: %d", 30, Integer.valueOf(arrayList4.size()));
                            size = 30;
                        } else {
                            z6 = true;
                        }
                        int i = 0;
                        boolean z9 = false;
                        while (true) {
                            if (i >= size) {
                                z5 = z4;
                                break;
                            }
                            w1a w1aVar = (w1a) arrayList4.get(i);
                            z5 = z4;
                            if (w1aVar.b.equals("firebase")) {
                                z9 = z6;
                            }
                            if (i == size - 1 && !z9) {
                                break;
                            }
                            jSONArray.put(w1aVar.q());
                            i++;
                            z4 = z5;
                        }
                        if (!z9) {
                            int i2 = size - 1;
                            while (true) {
                                if (i2 >= arrayList4.size() || i2 < 0) {
                                    z7 = z9;
                                    break;
                                }
                                w1a w1aVar2 = (w1a) arrayList4.get(i2);
                                if (w1aVar2.b.equals("firebase")) {
                                    jSONArray.put(w1aVar2.q());
                                    z7 = z6;
                                    break;
                                } else {
                                    if (i2 == arrayList4.size() - 1) {
                                        jSONArray.put(w1aVar2.q());
                                    }
                                    i2++;
                                }
                            }
                            if (!z7) {
                                u50Var.g("Malformed user object! No Firebase Auth provider id found. Provider user info list size: %d, trimmed size: %d", Integer.valueOf(arrayList4.size()), Integer.valueOf(size));
                                if (arrayList4.size() < 5) {
                                    StringBuilder sb = new StringBuilder("Provider user info list:\n");
                                    Iterator it3 = arrayList4.iterator();
                                    while (it3.hasNext()) {
                                        sb.append("Provider - " + ((w1a) it3.next()).b + "\n");
                                    }
                                    u50Var.g(sb.toString(), new Object[0]);
                                }
                            }
                        }
                        jSONObject.put("userInfos", jSONArray);
                    } else {
                        z5 = z4;
                    }
                    jSONObject.put("anonymous", p49Var6.q());
                    jSONObject.put("version", "2");
                    l59 l59Var = p49Var6.p;
                    if (l59Var != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("lastSignInTimestamp", l59Var.a);
                            jSONObject2.put("creationTimestamp", l59Var.b);
                        } catch (JSONException unused) {
                        }
                        jSONObject.put("userMetadata", jSONObject2);
                    }
                    u99 u99Var2 = p49Var6.t;
                    if (u99Var2 != null) {
                        arrayList = new ArrayList();
                        Iterator it4 = u99Var2.a.iterator();
                        while (it4.hasNext()) {
                            arrayList.add((yz5) it4.next());
                        }
                        Iterator it5 = u99Var2.b.iterator();
                        while (it5.hasNext()) {
                            arrayList.add((v88) it5.next());
                        }
                    } else {
                        arrayList = new ArrayList();
                    }
                    if (!arrayList.isEmpty()) {
                        JSONArray jSONArray2 = new JSONArray();
                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                            jSONArray2.put(((uh5) arrayList.get(i3)).q());
                        }
                        jSONObject.put("userMultiFactorInfo", jSONArray2);
                    }
                    List list = p49Var6.x;
                    if (list != null && !list.isEmpty()) {
                        JSONArray jSONArray3 = new JSONArray();
                        for (int i4 = 0; i4 < list.size(); i4++) {
                            v89 v89Var = (v89) list.get(i4);
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("credentialId", v89Var.a);
                            jSONObject3.put("name", v89Var.b);
                            jSONObject3.put("displayName", v89Var.c);
                            jSONArray3.put(jSONObject3);
                        }
                        jSONObject.put("passkeyInfo", jSONArray3);
                    }
                    String string = jSONObject.toString();
                    if (!TextUtils.isEmpty(string)) {
                        bx5Var.b("com.google.firebase.auth.FIREBASE_USER", string);
                    }
                } catch (Exception e) {
                    Log.wtf((String) u50Var.b, u50Var.e("Failed to turn object into JSON", new Object[0]), e);
                    throw new e2a(e);
                }
            } else {
                z5 = z4;
            }
            if (z3) {
                p49 p49Var7 = firebaseAuth.f;
                if (p49Var7 != null) {
                    p49Var7.a = b69Var;
                }
                h(firebaseAuth, p49Var7);
            }
            if (z5) {
                f(firebaseAuth, firebaseAuth.f);
            }
            if (z) {
                bx5 bx5Var2 = firebaseAuth.n;
                bx5Var2.getClass();
                bx5Var2.b(xs1.j("com.google.firebase.auth.GET_TOKEN_RESPONSE.", p49Var.b.a), b69Var.q());
            }
            p49 p49Var8 = firebaseAuth.f;
            if (p49Var8 != null) {
                if (firebaseAuth.q == null) {
                    FirebaseApp firebaseApp = firebaseAuth.a;
                    ly8.h(firebaseApp);
                    firebaseAuth.q = new vb9(firebaseApp);
                }
                vb9 vb9Var = firebaseAuth.q;
                b69 b69Var2 = p49Var8.a;
                vb9Var.getClass();
                if (b69Var2 == null) {
                    return;
                }
                Long l = b69Var2.c;
                long jLongValue = l == null ? 0L : l.longValue();
                if (jLongValue <= 0) {
                    jLongValue = 3600;
                }
                long jLongValue2 = (jLongValue * 1000) + b69Var2.e.longValue();
                y89 y89Var = vb9Var.b;
                y89Var.b = jLongValue2;
                y89Var.c = -1L;
                if (vb9Var.a <= 0 || vb9Var.c) {
                    return;
                }
                vb9Var.b.a();
            }
        }
    }

    public static FirebaseAuth getInstance() {
        o49 o49VarD = o49.d(FirebaseApp.getInstance());
        ly8.h(o49VarD);
        return o49VarD.c();
    }

    public static void h(FirebaseAuth firebaseAuth, p49 p49Var) {
        if (p49Var != null) {
            Log.d("FirebaseAuth", "Notifying id token listeners about user ( " + p49Var.b.a + " ).");
        } else {
            Log.d("FirebaseAuth", "Notifying id token listeners about a sign-out event.");
        }
        firebaseAuth.t.execute(new ue2(firebaseAuth, new me4(p49Var != null ? p49Var.a.b : null), 5, false));
    }

    @Override // defpackage.ae4
    public void a(ob obVar) {
        vb9 vb9Var;
        CopyOnWriteArrayList copyOnWriteArrayList = this.d;
        copyOnWriteArrayList.add(obVar);
        synchronized (this) {
            if (this.q == null) {
                FirebaseApp firebaseApp = this.a;
                ly8.h(firebaseApp);
                this.q = new vb9(firebaseApp);
            }
            vb9Var = this.q;
        }
        int size = copyOnWriteArrayList.size();
        if (size > 0 && vb9Var.a == 0) {
            vb9Var.a = size;
            if (vb9Var.a > 0 && !vb9Var.c) {
                vb9Var.b.a();
            }
        } else if (size == 0 && vb9Var.a != 0) {
            y89 y89Var = vb9Var.b;
            y89Var.d.removeCallbacks(y89Var.e);
        }
        vb9Var.a = size;
    }

    @Override // defpackage.ae4
    public Task b(boolean z) {
        p49 p49Var = this.f;
        if (p49Var == null) {
            return Tasks.forException(y49.a(new Status(17495, null, null, null)));
        }
        b69 b69Var = p49Var.a;
        if (b69Var.u() && !z) {
            return Tasks.forResult(q99.a(b69Var.b));
        }
        String str = b69Var.a;
        v1a v1aVar = new v1a(this);
        ix0 ix0Var = this.e;
        ix0Var.getClass();
        e49 e49Var = new e49(str);
        e49Var.d(this.a);
        e49Var.d = p49Var;
        e49Var.e = v1aVar;
        e49Var.f = v1aVar;
        return ix0Var.m(e49Var);
    }

    public p49 c() {
        return this.f;
    }

    public Task d(d80 d80Var) {
        b8 b8Var;
        d80 d80VarQ = d80Var.q();
        if (!(d80VarQ instanceof au2)) {
            boolean z = d80VarQ instanceof xz5;
            String str = this.i;
            FirebaseApp firebaseApp = this.a;
            ix0 ix0Var = this.e;
            if (!z) {
                jf3 jf3Var = new jf3(this);
                ix0Var.getClass();
                r49 r49Var = new r49(d80VarQ, str);
                r49Var.d(firebaseApp);
                r49Var.e = jf3Var;
                return ix0Var.m(r49Var);
            }
            jf3 jf3Var2 = new jf3(this);
            ix0Var.getClass();
            o59.a.clear();
            t49 t49Var = new t49((xz5) d80VarQ);
            t49Var.d(firebaseApp);
            t49Var.e = jf3Var2;
            return ix0Var.m(t49Var);
        }
        au2 au2Var = (au2) d80VarQ;
        String str2 = au2Var.c;
        if (TextUtils.isEmpty(str2)) {
            String str3 = au2Var.a;
            String str4 = au2Var.b;
            ly8.h(str4);
            String str5 = this.i;
            return new a49(this, str3, false, null, str4, str5).O(this, str5, this.l);
        }
        ly8.e(str2);
        int i = b8.c;
        ly8.e(str2);
        try {
            b8Var = new b8(str2);
        } catch (IllegalArgumentException unused) {
            b8Var = null;
        }
        if (b8Var != null && !TextUtils.equals(this.i, b8Var.b)) {
            return Tasks.forException(y49.a(new Status(17072, null, null, null)));
        }
        return new w39(this, false, null, au2Var).O(this, this.i, this.k);
    }

    public void e() {
        bx5 bx5Var = this.n;
        ly8.h(bx5Var);
        SharedPreferences sharedPreferences = (SharedPreferences) bx5Var.c;
        p49 p49Var = this.f;
        if (p49Var != null) {
            sharedPreferences.edit().remove(xs1.j("com.google.firebase.auth.GET_TOKEN_RESPONSE.", p49Var.b.a)).apply();
            this.f = null;
        }
        sharedPreferences.edit().remove("com.google.firebase.auth.FIREBASE_USER").apply();
        h(this, null);
        f(this, null);
        vb9 vb9Var = this.q;
        if (vb9Var != null) {
            y89 y89Var = vb9Var.b;
            y89Var.d.removeCallbacks(y89Var.e);
        }
    }

    public static FirebaseAuth getInstance(FirebaseApp firebaseApp) {
        o49 o49VarD = o49.d(firebaseApp);
        ly8.h(o49VarD);
        return o49VarD.c();
    }
}
