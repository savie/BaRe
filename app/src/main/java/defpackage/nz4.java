package defpackage;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nz4 implements bw1, w23 {
    public static final Object k = new Object();
    public static nz4 n;
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;

    public nz4(q27 q27Var, ai5 ai5Var) {
        this.a = 1;
        this.d = q27Var.b(ai5Var);
        this.b = q27Var.d();
        q27Var.g();
        q27Var.e();
        q27Var.isPrimitive();
        this.e = q27Var.getVersion();
        this.c = q27Var.j();
        q27Var.getText();
        this.f = q27Var.getType();
    }

    public static nz4 e(Activity activity) {
        nz4 nz4Var;
        synchronized (k) {
            try {
                if (n == null) {
                    n = new nz4(activity.getApplicationContext());
                }
                nz4Var = n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nz4Var;
    }

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) throws wt1 {
        Class cls = (Class) ((ln5) this.f).b;
        ix2 ix2Var = (ix2) this.e;
        String strC = ix2Var.c();
        if (ix2Var.h) {
            throw new wt1("Can not have %s as an attribute for %s", cls, ix2Var);
        }
        if (strC == null) {
            strC = ((ai5) this.b).m(cls);
        }
        ((cz4) this.d).getClass();
        ((ro) this.c).w(ev5Var, obj, cls, strC);
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) throws w70 {
        tr9 position = mc4Var.getPosition();
        ln5 ln5Var = (ln5) this.f;
        Class cls = (Class) ln5Var.b;
        ix2 ix2Var = (ix2) this.e;
        String strC = ix2Var.c();
        if (strC == null) {
            strC = ((ai5) this.b).m(cls);
        }
        if (ix2Var.h) {
            throw new w70("Can not have %s as an attribute for %s at %s", cls, ix2Var, position);
        }
        ((cz4) this.d).getClass();
        Class cls2 = (Class) ln5Var.b;
        mc4 mc4VarF = mc4Var.f(strC);
        if (mc4VarF == null || ((lc4) mc4VarF).k()) {
            return null;
        }
        return ((ro) this.c).r(mc4VarF, cls2);
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) throws kd5 {
        tr9 position = mc4Var.getPosition();
        Class cls = (Class) ((ln5) this.f).b;
        if (obj == null) {
            return b(mc4Var);
        }
        throw new kd5("Can not read key of %s for %s at %s", cls, (ix2) this.e, position);
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) throws wt1 {
        tr9 position = mc4Var.getPosition();
        ln5 ln5Var = (ln5) this.f;
        Class cls = (Class) ln5Var.b;
        ix2 ix2Var = (ix2) this.e;
        String strC = ix2Var.c();
        if (strC == null) {
            strC = ((ai5) this.b).m(cls);
        }
        if (ix2Var.h) {
            throw new wt1("Can not have %s as an attribute for %s at %s", cls, ix2Var, position);
        }
        ((cz4) this.d).getClass();
        mc4 mc4VarF = mc4Var.f(strC);
        Class cls2 = (Class) ln5Var.b;
        if (mc4VarF == null || ((lc4) mc4VarF).k()) {
            return true;
        }
        return ((ro) this.c).v(mc4VarF, cls2);
    }

    public void f(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (((HashMap) this.c)) {
            try {
                mz4 mz4Var = new mz4(broadcastReceiver, intentFilter);
                ArrayList arrayList = (ArrayList) ((HashMap) this.c).get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    ((HashMap) this.c).put(broadcastReceiver, arrayList);
                }
                arrayList.add(mz4Var);
                for (int i = 0; i < intentFilter.countActions(); i++) {
                    String action = intentFilter.getAction(i);
                    ArrayList arrayList2 = (ArrayList) ((HashMap) this.d).get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        ((HashMap) this.d).put(action, arrayList2);
                    }
                    arrayList2.add(mz4Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean g(Intent intent) {
        String str;
        synchronized (((HashMap) this.c)) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(((Context) this.b).getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z = (intent.getFlags() & 8) != 0;
                if (z) {
                    Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList arrayList = (ArrayList) ((HashMap) this.d).get(intent.getAction());
                if (arrayList != null) {
                    if (z) {
                        Log.v("LocalBroadcastManager", "Action list: " + arrayList);
                    }
                    ArrayList arrayList2 = null;
                    int i = 0;
                    while (i < arrayList.size()) {
                        mz4 mz4Var = (mz4) arrayList.get(i);
                        if (z) {
                            Log.v("LocalBroadcastManager", "Matching against filter " + mz4Var.a);
                        }
                        if (mz4Var.c) {
                            if (z) {
                                Log.v("LocalBroadcastManager", "  Filter's target already added");
                            }
                            arrayList = arrayList;
                        } else {
                            int iMatch = mz4Var.a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                            if (iMatch >= 0) {
                                if (z) {
                                    Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                                }
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(mz4Var);
                                mz4Var.c = true;
                            } else {
                                arrayList = arrayList;
                                if (z) {
                                    if (iMatch == -4) {
                                        str = "category";
                                    } else if (iMatch == -3) {
                                        str = "action";
                                    } else if (iMatch != -2) {
                                        str = iMatch != -1 ? "unknown reason" : "type";
                                    } else {
                                        str = "data";
                                    }
                                    Log.v("LocalBroadcastManager", "  Filter did not match: " + str);
                                }
                            }
                        }
                        i++;
                        arrayList = arrayList;
                    }
                    if (arrayList2 != null) {
                        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                            ((mz4) arrayList2.get(i2)).c = false;
                        }
                        ((ArrayList) this.e).add(new wc9(4, intent, arrayList2));
                        if (!((lz4) this.f).hasMessages(1)) {
                            ((lz4) this.f).sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        return new dj6((a48) ((ca6) this.b).get(), (qg3) ((ca6) this.c).get(), (f10) ((ca6) this.d).get(), (fj6) ((ca6) this.e).get(), (ka7) ((ca6) this.f).get());
    }

    public void h(BroadcastReceiver broadcastReceiver) {
        synchronized (((HashMap) this.c)) {
            try {
                ArrayList arrayList = (ArrayList) ((HashMap) this.c).remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    mz4 mz4Var = (mz4) arrayList.get(size);
                    mz4Var.d = true;
                    for (int i = 0; i < mz4Var.a.countActions(); i++) {
                        String action = mz4Var.a.getAction(i);
                        ArrayList arrayList2 = (ArrayList) ((HashMap) this.d).get(action);
                        if (arrayList2 != null) {
                            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                mz4 mz4Var2 = (mz4) arrayList2.get(size2);
                                if (mz4Var2.b == broadcastReceiver) {
                                    mz4Var2.d = true;
                                    arrayList2.remove(size2);
                                }
                            }
                            if (arrayList2.size() <= 0) {
                                ((HashMap) this.d).remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return fz5.k((Class) this.f, "schema for ");
            default:
                return super.toString();
        }
    }

    public nz4(ai5 ai5Var, ix2 ix2Var, ln5 ln5Var) {
        this.a = 2;
        this.c = new ro(ai5Var);
        this.d = ai5Var.n();
        this.b = ai5Var;
        this.e = ix2Var;
        this.f = ln5Var;
    }

    public /* synthetic */ nz4(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
        this.e = obj4;
        this.f = obj5;
    }

    public nz4(Context context) {
        this.a = 0;
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new ArrayList();
        this.b = context;
        this.f = new lz4(this, context.getMainLooper());
    }
}
