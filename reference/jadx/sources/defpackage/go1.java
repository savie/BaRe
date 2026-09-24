package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class go1 {
    public final LinkedHashMap a = new LinkedHashMap();
    public final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashMap c = new LinkedHashMap();
    public final ArrayList d = new ArrayList();
    public final transient LinkedHashMap e = new LinkedHashMap();
    public final LinkedHashMap f = new LinkedHashMap();
    public final Bundle g = new Bundle();
    public final /* synthetic */ io1 h;

    public go1(io1 io1Var) {
        this.h = io1Var;
    }

    public final boolean a(int i, int i2, Intent intent) {
        String str = (String) this.a.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        r9 r9Var = (r9) this.e.get(str);
        if ((r9Var != null ? r9Var.a : null) != null) {
            ArrayList arrayList = this.d;
            if (arrayList.contains(str)) {
                r9Var.a.h(r9Var.b.parseResult(intent, i2));
                arrayList.remove(str);
                return true;
            }
        }
        this.f.remove(str);
        this.g.putParcelable(str, new g9(intent, i2));
        return true;
    }

    public final void b(int i, j9 j9Var, Object obj) {
        Bundle bundleExtra;
        final int i2;
        io1 io1Var = this.h;
        i9 synchronousResult = j9Var.getSynchronousResult(io1Var, obj);
        if (synchronousResult != null) {
            new Handler(Looper.getMainLooper()).post(new eo1(this, i, synchronousResult));
            return;
        }
        Intent intentCreateIntent = j9Var.createIntent(io1Var, obj);
        if (intentCreateIntent.getExtras() != null) {
            Bundle extras = intentCreateIntent.getExtras();
            extras.getClass();
            if (extras.getClassLoader() == null) {
                intentCreateIntent.setExtrasClassLoader(io1Var.getClassLoader());
            }
        }
        if (intentCreateIntent.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundleExtra = intentCreateIntent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            intentCreateIntent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else {
            bundleExtra = null;
        }
        Bundle bundle = bundleExtra;
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentCreateIntent.getAction())) {
            String[] stringArrayExtra = intentCreateIntent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            zh8.H(io1Var, stringArrayExtra, i);
            return;
        }
        if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentCreateIntent.getAction())) {
            io1Var.startActivityForResult(intentCreateIntent, i, bundle);
            return;
        }
        rd4 rd4Var = (rd4) intentCreateIntent.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try {
            rd4Var.getClass();
            i2 = i;
            try {
                io1Var.startIntentSenderForResult(rd4Var.a, i2, rd4Var.b, rd4Var.c, rd4Var.d, 0, bundle);
            } catch (IntentSender.SendIntentException e) {
                e = e;
                final IntentSender.SendIntentException sendIntentException = e;
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: fo1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(i2, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", sendIntentException));
                    }
                });
            }
        } catch (IntentSender.SendIntentException e2) {
            e = e2;
            i2 = i;
        }
    }

    public final t9 c(final String str, fu4 fu4Var, final j9 j9Var, final h9 h9Var) {
        hu4 lifecycle = fu4Var.getLifecycle();
        if (lifecycle.d.compareTo(st4.d) >= 0) {
            StringBuilder sb = new StringBuilder("LifecycleOwner ");
            sb.append(fu4Var);
            st4 st4Var = lifecycle.d;
            sb.append(" is attempting to register while current state is ");
            sb.append(st4Var);
            sb.append(". LifecycleOwners must call register before they are STARTED.");
            throw new IllegalStateException(sb.toString().toString());
        }
        e(str);
        LinkedHashMap linkedHashMap = this.c;
        s9 s9Var = (s9) linkedHashMap.get(str);
        if (s9Var == null) {
            s9Var = new s9(lifecycle);
        }
        au4 au4Var = new au4() { // from class: p9
            @Override // defpackage.au4
            public final void g(fu4 fu4Var2, rt4 rt4Var) {
                go1 go1Var = this.a;
                LinkedHashMap linkedHashMap2 = go1Var.e;
                rt4 rt4Var2 = rt4.ON_START;
                String str2 = str;
                if (rt4Var2 != rt4Var) {
                    if (rt4.ON_STOP == rt4Var) {
                        linkedHashMap2.remove(str2);
                        return;
                    } else {
                        if (rt4.ON_DESTROY == rt4Var) {
                            go1Var.f(str2);
                            return;
                        }
                        return;
                    }
                }
                Bundle bundle = go1Var.g;
                LinkedHashMap linkedHashMap3 = go1Var.f;
                h9 h9Var2 = h9Var;
                j9 j9Var2 = j9Var;
                linkedHashMap2.put(str2, new r9(h9Var2, j9Var2));
                if (linkedHashMap3.containsKey(str2)) {
                    Object obj = linkedHashMap3.get(str2);
                    linkedHashMap3.remove(str2);
                    h9Var2.h(obj);
                }
                g9 g9Var = (g9) xx3.j(bundle, str2, g9.class);
                if (g9Var != null) {
                    bundle.remove(str2);
                    h9Var2.h(j9Var2.parseResult(g9Var.b, g9Var.a));
                }
            }
        };
        s9Var.a.a(au4Var);
        s9Var.b.add(au4Var);
        linkedHashMap.put(str, s9Var);
        return new t9(this, str, j9Var);
    }

    public final u9 d(String str, j9 j9Var, h9 h9Var) {
        e(str);
        this.e.put(str, new r9(h9Var, j9Var));
        LinkedHashMap linkedHashMap = this.f;
        if (linkedHashMap.containsKey(str)) {
            Object obj = linkedHashMap.get(str);
            linkedHashMap.remove(str);
            h9Var.h(obj);
        }
        Bundle bundle = this.g;
        g9 g9Var = (g9) xx3.j(bundle, str, g9.class);
        if (g9Var != null) {
            bundle.remove(str);
            h9Var.h(j9Var.parseResult(g9Var.b, g9Var.a));
        }
        return new u9(this, str, j9Var);
    }

    public final void e(String str) {
        LinkedHashMap linkedHashMap = this.b;
        if (((Integer) linkedHashMap.get(str)) != null) {
            return;
        }
        q9 q9Var = new q9(0);
        for (Number number : new ws1(new ev3(q9Var, new v10(q9Var, 20)))) {
            Integer numValueOf = Integer.valueOf(number.intValue());
            LinkedHashMap linkedHashMap2 = this.a;
            if (!linkedHashMap2.containsKey(numValueOf)) {
                int iIntValue = number.intValue();
                linkedHashMap2.put(Integer.valueOf(iIntValue), str);
                linkedHashMap.put(str, Integer.valueOf(iIntValue));
                return;
            }
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    public final void f(String str) {
        Integer num;
        if (!this.d.contains(str) && (num = (Integer) this.b.remove(str)) != null) {
            this.a.remove(num);
        }
        this.e.remove(str);
        LinkedHashMap linkedHashMap = this.f;
        if (linkedHashMap.containsKey(str)) {
            StringBuilder sbU = dj7.u("Dropping pending result for request ", str, ": ");
            sbU.append(linkedHashMap.get(str));
            Log.w("ActivityResultRegistry", sbU.toString());
            linkedHashMap.remove(str);
        }
        Bundle bundle = this.g;
        if (bundle.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + ((g9) xx3.j(bundle, str, g9.class)));
            bundle.remove(str);
        }
        LinkedHashMap linkedHashMap2 = this.c;
        s9 s9Var = (s9) linkedHashMap2.get(str);
        if (s9Var != null) {
            ArrayList arrayList = s9Var.b;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                s9Var.a.f((au4) it.next());
            }
            arrayList.clear();
            linkedHashMap2.remove(str);
        }
    }
}
