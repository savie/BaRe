package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class az3 implements ne {
    public static final y53[] x = new y53[0];
    public volatile String a;
    public fr6 b;
    public final Context c;
    public final tt9 d;
    public final j99 e;
    public final Object f;
    public final Object g;
    public u39 h;
    public sl0 i;
    public IInterface j;
    public final ArrayList k;
    public xf9 l;
    public int m;
    public final ke n;
    public final jq6 o;
    public final int p;
    public final String q;
    public volatile String r;
    public hs1 s;
    public boolean t;
    public volatile jo9 u;
    public final AtomicInteger v;
    public final Set w;

    public az3(Context context, Looper looper, int i, z91 z91Var, nz3 nz3Var, oz3 oz3Var, int i2) {
        tt9 tt9VarA = tt9.a(context);
        Object obj = lz3.c;
        ly8.h(nz3Var);
        ly8.h(oz3Var);
        ke keVar = new ke(nz3Var, 17);
        jq6 jq6Var = new jq6(oz3Var, 19);
        String str = z91Var.d;
        Object obj2 = lz3.c;
        this.a = null;
        this.f = new Object();
        this.g = new Object();
        this.k = new ArrayList();
        this.m = 1;
        this.s = null;
        this.t = false;
        this.u = null;
        this.v = new AtomicInteger(0);
        ly8.i(context, "Context must not be null");
        this.c = context;
        ly8.i(looper, "Looper must not be null");
        ly8.i(tt9VarA, "Supervisor must not be null");
        this.d = tt9VarA;
        this.e = new j99(this, looper);
        this.p = i;
        this.n = keVar;
        this.o = jq6Var;
        this.q = str;
        Set set = z91Var.b;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                l0.e("Expanding scopes is not permitted, use implied scopes instead");
                throw null;
            }
        }
        this.w = set;
    }

    @Override // defpackage.ne
    public final Set a() {
        return j() ? this.w : Collections.EMPTY_SET;
    }

    @Override // defpackage.ne
    public void b(String str) {
        this.a = str;
        m();
    }

    @Override // defpackage.ne
    public final boolean c() {
        boolean z;
        synchronized (this.f) {
            int i = this.m;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    @Override // defpackage.ne
    public final void d() {
        if (!isConnected() || this.b == null) {
            g84.h("Failed to connect when checking package");
        }
    }

    @Override // defpackage.ne
    public final void e(sl0 sl0Var) {
        this.i = sl0Var;
        v(2, null);
    }

    @Override // defpackage.ne
    public abstract int f();

    @Override // defpackage.ne
    public final y53[] g() {
        jo9 jo9Var = this.u;
        if (jo9Var == null) {
            return null;
        }
        return jo9Var.b;
    }

    @Override // defpackage.ne
    public final void h(om5 om5Var) {
        ((g19) om5Var.a).x.n.post(new u8(om5Var, 3));
    }

    @Override // defpackage.ne
    public final String i() {
        return this.a;
    }

    @Override // defpackage.ne
    public final boolean isConnected() {
        boolean z;
        synchronized (this.f) {
            z = this.m == 4;
        }
        return z;
    }

    @Override // defpackage.ne
    public boolean j() {
        return false;
    }

    @Override // defpackage.ne
    public final void k(n74 n74Var, Set set) {
        Bundle bundleO = o();
        String str = this.r;
        int i = this.p;
        int i2 = mz3.a;
        Scope[] scopeArr = zw3.G;
        Bundle bundle = new Bundle();
        y53[] y53VarArr = zw3.H;
        zw3 zw3Var = new zw3(6, i, i2, null, null, scopeArr, bundle, null, y53VarArr, y53VarArr, true, 0, false, str);
        zw3Var.d = this.c.getPackageName();
        zw3Var.k = bundleO;
        if (set != null) {
            zw3Var.f = (Scope[]) set.toArray(new Scope[0]);
        }
        if (j()) {
            zw3Var.n = new Account("<<default account>>", "com.google");
            if (n74Var != null) {
                zw3Var.e = ((uv9) n74Var).a;
            }
        }
        zw3Var.p = x;
        zw3Var.q = n();
        if (t()) {
            zw3Var.x = true;
        }
        try {
            synchronized (this.g) {
                try {
                    u39 u39Var = this.h;
                    if (u39Var != null) {
                        u39Var.a(new de9(this, this.v.get()), zw3Var);
                    } else {
                        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int i3 = this.v.get();
            j99 j99Var = this.e;
            j99Var.sendMessage(j99Var.obtainMessage(6, i3, 3));
        } catch (RemoteException e2) {
            e = e2;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int i4 = this.v.get();
            ph9 ph9Var = new ph9(this, 8, null, null);
            j99 j99Var2 = this.e;
            j99Var2.sendMessage(j99Var2.obtainMessage(1, i4, -1, ph9Var));
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            e = e4;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int i5 = this.v.get();
            ph9 ph9Var2 = new ph9(this, 8, null, null);
            j99 j99Var3 = this.e;
            j99Var3.sendMessage(j99Var3.obtainMessage(1, i5, -1, ph9Var2));
        }
    }

    public abstract IInterface l(IBinder iBinder);

    public final void m() {
        this.v.incrementAndGet();
        ArrayList arrayList = this.k;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    t39 t39Var = (t39) arrayList.get(i);
                    synchronized (t39Var) {
                        t39Var.a = null;
                    }
                }
                arrayList.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.g) {
            this.h = null;
        }
        v(1, null);
    }

    public y53[] n() {
        return x;
    }

    public Bundle o() {
        return new Bundle();
    }

    public final IInterface p() {
        IInterface iInterface;
        synchronized (this.f) {
            try {
                if (this.m == 5) {
                    throw new DeadObjectException();
                }
                if (!isConnected()) {
                    throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
                }
                iInterface = this.j;
                ly8.i(iInterface, "Client is connected but service is null");
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    public abstract String q();

    public abstract String r();

    public boolean s() {
        return f() >= 211700000;
    }

    public boolean t() {
        return this instanceof km6;
    }

    public final /* synthetic */ boolean u(int i, int i2, IInterface iInterface) {
        synchronized (this.f) {
            try {
                if (this.m != i) {
                    return false;
                }
                v(i2, iInterface);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void v(int i, IInterface iInterface) {
        fr6 fr6Var;
        ly8.c((i == 4) == (iInterface != null));
        synchronized (this.f) {
            try {
                this.m = i;
                this.j = iInterface;
                Bundle bundle = null;
                if (i == 1) {
                    xf9 xf9Var = this.l;
                    if (xf9Var != null) {
                        tt9 tt9Var = this.d;
                        String str = (String) this.b.b;
                        ly8.h(str);
                        this.b.getClass();
                        if (this.q == null) {
                            this.c.getClass();
                        }
                        boolean z = this.b.a;
                        tt9Var.getClass();
                        tt9Var.c(new ur9(str, z), xf9Var);
                        this.l = null;
                    }
                } else if (i == 2 || i == 3) {
                    xf9 xf9Var2 = this.l;
                    if (xf9Var2 != null && (fr6Var = this.b) != null) {
                        String str2 = (String) fr6Var.b;
                        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 70 + "com.google.android.gms".length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(str2);
                        sb.append(" on com.google.android.gms");
                        Log.e("GmsClient", sb.toString());
                        tt9 tt9Var2 = this.d;
                        String str3 = (String) this.b.b;
                        ly8.h(str3);
                        this.b.getClass();
                        if (this.q == null) {
                            this.c.getClass();
                        }
                        boolean z2 = this.b.a;
                        tt9Var2.getClass();
                        tt9Var2.c(new ur9(str3, z2), xf9Var2);
                        this.v.incrementAndGet();
                    }
                    xf9 xf9Var3 = new xf9(this, this.v.get());
                    this.l = xf9Var3;
                    String strR = r();
                    boolean zS = s();
                    fr6 fr6Var2 = new fr6();
                    fr6Var2.b = strR;
                    fr6Var2.a = zS;
                    this.b = fr6Var2;
                    if (zS && f() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf((String) this.b.b)));
                    }
                    tt9 tt9Var3 = this.d;
                    String str4 = (String) this.b.b;
                    ly8.h(str4);
                    this.b.getClass();
                    String name = this.q;
                    if (name == null) {
                        name = this.c.getClass().getName();
                    }
                    hs1 hs1VarB = tt9Var3.b(new ur9(str4, this.b.a), xf9Var3, name);
                    if (!hs1VarB.n()) {
                        String str5 = (String) this.b.b;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str5).length() + 34 + "com.google.android.gms".length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(str5);
                        sb2.append(" on com.google.android.gms");
                        Log.w("GmsClient", sb2.toString());
                        int i2 = hs1VarB.b;
                        if (i2 == -1) {
                            i2 = 16;
                        }
                        if (hs1VarB.c != null) {
                            bundle = new Bundle();
                            bundle.putParcelable("pendingIntent", hs1VarB.c);
                        }
                        int i3 = this.v.get();
                        hj9 hj9Var = new hj9(this, i2, bundle);
                        j99 j99Var = this.e;
                        j99Var.sendMessage(j99Var.obtainMessage(7, i3, -1, hj9Var));
                    }
                } else if (i == 4) {
                    ly8.h(iInterface);
                    System.currentTimeMillis();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
