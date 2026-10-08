package defpackage;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g19 implements nz3, oz3 {
    public final ne b;
    public final df c;
    public final w00 d;
    public final int k;
    public final q19 n;
    public boolean p;
    public final /* synthetic */ pz3 x;
    public final LinkedList a = new LinkedList();
    public final HashSet e = new HashSet();
    public final HashMap f = new HashMap();
    public final ArrayList q = new ArrayList();
    public hs1 r = null;
    public int t = 0;

    public g19(pz3 pz3Var, kz3 kz3Var) {
        this.x = pz3Var;
        Looper looper = pz3Var.n.getLooper();
        vq vqVarA = kz3Var.a();
        z91 z91Var = new z91((String) vqVarA.c, (String) vqVarA.d, (p50) vqVarA.b);
        yc9 yc9Var = (yc9) kz3Var.c.b;
        ly8.h(yc9Var);
        ne neVarB = yc9Var.b(kz3Var.a, looper, z91Var, kz3Var.d, this, this);
        String str = kz3Var.b;
        if (str != null && (neVarB instanceof az3)) {
            ((az3) neVarB).r = str;
        }
        if (str != null && (neVarB instanceof bo5)) {
            xs1.r(neVarB);
            throw null;
        }
        this.b = neVarB;
        this.c = kz3Var.e;
        this.d = new w00();
        this.k = kz3Var.g;
        if (!neVarB.j()) {
            this.n = null;
            return;
        }
        Context context = pz3Var.e;
        n29 n29Var = pz3Var.n;
        vq vqVarA2 = kz3Var.a();
        this.n = new q19(context, n29Var, new z91((String) vqVarA2.c, (String) vqVarA2.d, (p50) vqVarA2.b));
    }

    @Override // defpackage.oz3
    public final void a(hs1 hs1Var) {
        o(hs1Var, null);
    }

    public final void b(hs1 hs1Var) {
        HashSet hashSet = this.e;
        Iterator it = hashSet.iterator();
        if (!it.hasNext()) {
            hashSet.clear();
        } else if (it.next() != null) {
            e6.d();
        } else {
            if (x13.m(hs1Var, hs1.f)) {
                this.b.d();
            }
            throw null;
        }
    }

    public final void c(Status status) {
        ly8.d(this.x.n);
        d(status, null, false);
    }

    public final void d(Status status, Exception exc, boolean z) {
        ly8.d(this.x.n);
        if ((status == null) == (exc == null)) {
            c6.f("Status XOR exception should be null");
            return;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            e29 e29Var = (e29) it.next();
            if (!z || e29Var.a == 2) {
                if (status != null) {
                    e29Var.a(status);
                } else {
                    e29Var.b(exc);
                }
                it.remove();
            }
        }
    }

    public final void e() {
        LinkedList linkedList = this.a;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            e29 e29Var = (e29) arrayList.get(i);
            if (!this.b.isConnected()) {
                return;
            }
            if (k(e29Var)) {
                linkedList.remove(e29Var);
            }
        }
    }

    @Override // defpackage.nz3
    public final void f(int i) {
        Looper looperMyLooper = Looper.myLooper();
        n29 n29Var = this.x.n;
        if (looperMyLooper == n29Var.getLooper()) {
            i(i);
        } else {
            n29Var.post(new f19(this, i));
        }
    }

    @Override // defpackage.nz3
    public final void g() {
        Looper looperMyLooper = Looper.myLooper();
        n29 n29Var = this.x.n;
        if (looperMyLooper == n29Var.getLooper()) {
            h();
        } else {
            n29Var.post(new w7(this, 6));
        }
    }

    public final void h() {
        pz3 pz3Var = this.x;
        ly8.d(pz3Var.n);
        this.r = null;
        b(hs1.f);
        n29 n29Var = pz3Var.n;
        if (this.p) {
            df dfVar = this.c;
            n29Var.removeMessages(11, dfVar);
            n29Var.removeMessages(9, dfVar);
            this.p = false;
        }
        Iterator it = this.f.values().iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
        e();
        j();
    }

    public final void i(int i) {
        pz3 pz3Var = this.x;
        n29 n29Var = pz3Var.n;
        ly8.d(pz3Var.n);
        this.r = null;
        this.p = true;
        String strI = this.b.i();
        w00 w00Var = this.d;
        w00Var.getClass();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (strI != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(strI);
        }
        w00Var.x(true, new Status(20, sb.toString(), null, null));
        df dfVar = this.c;
        n29Var.sendMessageDelayed(Message.obtain(n29Var, 9, dfVar), 5000L);
        n29Var.sendMessageDelayed(Message.obtain(n29Var, 11, dfVar), 120000L);
        ((SparseIntArray) pz3Var.g.b).clear();
        Iterator it = this.f.values().iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
    }

    public final void j() {
        pz3 pz3Var = this.x;
        n29 n29Var = pz3Var.n;
        df dfVar = this.c;
        n29Var.removeMessages(12, dfVar);
        n29Var.sendMessageDelayed(n29Var.obtainMessage(12, dfVar), pz3Var.a);
    }

    public final boolean k(e29 e29Var) {
        y53 y53Var;
        if (!(e29Var instanceof k19)) {
            w00 w00Var = this.d;
            ne neVar = this.b;
            e29Var.d(w00Var, neVar.j());
            try {
                e29Var.c(this);
                return true;
            } catch (DeadObjectException unused) {
                f(1);
                neVar.b("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        k19 k19Var = (k19) e29Var;
        y53[] y53VarArrG = k19Var.g(this);
        if (y53VarArrG == null || y53VarArrG.length == 0) {
            y53Var = null;
            break;
        }
        y53[] y53VarArrG2 = this.b.g();
        if (y53VarArrG2 == null) {
            y53VarArrG2 = new y53[0];
        }
        k50 k50Var = new k50(y53VarArrG2.length);
        for (y53 y53Var2 : y53VarArrG2) {
            k50Var.put(y53Var2.a, Long.valueOf(y53Var2.n()));
        }
        int length = y53VarArrG.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                y53Var = null;
                break;
            }
            y53Var = y53VarArrG[i];
            Long l = (Long) k50Var.get(y53Var.a);
            if (l == null || l.longValue() < y53Var.n()) {
                break;
            }
            i++;
        }
        if (y53Var == null) {
            w00 w00Var2 = this.d;
            ne neVar2 = this.b;
            e29Var.d(w00Var2, neVar2.j());
            try {
                e29Var.c(this);
                return true;
            } catch (DeadObjectException unused2) {
                f(1);
                neVar2.b("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        Log.w("GoogleApiManager", this.b.getClass().getName() + " could not execute call because it requires feature (" + y53Var.a + ", " + y53Var.n() + ").");
        if (!this.x.o || !k19Var.f(this)) {
            k19Var.b(new gf8(y53Var));
            return true;
        }
        h19 h19Var = new h19(this.c, y53Var);
        int iIndexOf = this.q.indexOf(h19Var);
        ArrayList arrayList = this.q;
        if (iIndexOf >= 0) {
            h19 h19Var2 = (h19) arrayList.get(iIndexOf);
            this.x.n.removeMessages(15, h19Var2);
            n29 n29Var = this.x.n;
            n29Var.sendMessageDelayed(Message.obtain(n29Var, 15, h19Var2), 5000L);
            return false;
        }
        arrayList.add(h19Var);
        n29 n29Var2 = this.x.n;
        n29Var2.sendMessageDelayed(Message.obtain(n29Var2, 15, h19Var), 5000L);
        n29 n29Var3 = this.x.n;
        n29Var3.sendMessageDelayed(Message.obtain(n29Var3, 16, h19Var), 120000L);
        hs1 hs1Var = new hs1(2, null, null);
        if (!l(hs1Var)) {
            this.x.d(hs1Var, this.k);
        }
        return false;
    }

    public final boolean l(hs1 hs1Var) {
        AtomicReference atomicReference;
        synchronized (pz3.r) {
            try {
                pz3 pz3Var = this.x;
                int i = 0;
                if (pz3Var.k == null || !pz3Var.l.contains(this.c)) {
                    return false;
                }
                a19 a19Var = this.x.k;
                int i2 = this.k;
                a19Var.getClass();
                g29 g29Var = new g29(hs1Var, i2);
                loop0: do {
                    atomicReference = a19Var.b;
                    do {
                        if (atomicReference.compareAndSet(null, g29Var)) {
                            a19Var.c.post(new j29(i, a19Var, g29Var));
                            break loop0;
                        }
                    } while (atomicReference.get() == null);
                } while (atomicReference.get() == null);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m() {
        pz3 pz3Var = this.x;
        ly8.d(pz3Var.n);
        ne neVar = this.b;
        if (neVar.isConnected() || neVar.c()) {
            return;
        }
        try {
            h80 h80Var = pz3Var.g;
            Context context = pz3Var.e;
            SparseIntArray sparseIntArray = (SparseIntArray) h80Var.b;
            ly8.h(context);
            int iF = neVar.f();
            int iC = ((SparseIntArray) h80Var.b).get(iF, -1);
            if (iC == -1) {
                iC = 0;
                int i = 0;
                while (true) {
                    if (i >= sparseIntArray.size()) {
                        iC = -1;
                        break;
                    }
                    int iKeyAt = sparseIntArray.keyAt(i);
                    if (iKeyAt > iF && sparseIntArray.get(iKeyAt) == 0) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (iC == -1) {
                    iC = ((lz3) h80Var.c).c(context, iF);
                }
                sparseIntArray.put(iF, iC);
            }
            if (iC != 0) {
                hs1 hs1Var = new hs1(iC, null, null);
                Log.w("GoogleApiManager", "The service for " + neVar.getClass().getName() + " is not available: " + hs1Var.toString());
                o(hs1Var, null);
                return;
            }
            w86 w86Var = new w86(pz3Var, neVar, this.c);
            if (neVar.j()) {
                q19 q19Var = this.n;
                ly8.h(q19Var);
                Handler handler = q19Var.c;
                z91 z91Var = q19Var.f;
                if7 if7Var = q19Var.k;
                if (if7Var != null) {
                    if7Var.m();
                }
                z91Var.f = Integer.valueOf(System.identityHashCode(q19Var));
                q19Var.k = (if7) q19Var.d.b(q19Var.b, handler.getLooper(), z91Var, z91Var.e, q19Var, q19Var);
                q19Var.n = w86Var;
                Set set = q19Var.e;
                if (set == null || set.isEmpty()) {
                    handler.post(new ib0(q19Var, 12));
                } else {
                    if7 if7Var2 = q19Var.k;
                    if7Var2.getClass();
                    if7Var2.e(new km5(if7Var2));
                }
            }
            try {
                neVar.e(w86Var);
            } catch (SecurityException e) {
                o(new hs1(10, null, null), e);
            }
        } catch (IllegalStateException e2) {
            o(new hs1(10, null, null), e2);
        }
    }

    public final void n(e29 e29Var) {
        ly8.d(this.x.n);
        boolean zIsConnected = this.b.isConnected();
        LinkedList linkedList = this.a;
        if (zIsConnected) {
            if (k(e29Var)) {
                j();
                return;
            } else {
                linkedList.add(e29Var);
                return;
            }
        }
        linkedList.add(e29Var);
        hs1 hs1Var = this.r;
        if (hs1Var == null || hs1Var.b == 0 || hs1Var.c == null) {
            m();
        } else {
            o(hs1Var, null);
        }
    }

    public final void o(hs1 hs1Var, RuntimeException runtimeException) {
        if7 if7Var;
        ly8.d(this.x.n);
        q19 q19Var = this.n;
        if (q19Var != null && (if7Var = q19Var.k) != null) {
            if7Var.m();
        }
        ly8.d(this.x.n);
        this.r = null;
        ((SparseIntArray) this.x.g.b).clear();
        b(hs1Var);
        if ((this.b instanceof k29) && hs1Var.b != 24) {
            pz3 pz3Var = this.x;
            pz3Var.b = true;
            n29 n29Var = pz3Var.n;
            n29Var.sendMessageDelayed(n29Var.obtainMessage(19), 300000L);
        }
        if (hs1Var.b == 4) {
            c(pz3.q);
            return;
        }
        if (this.a.isEmpty()) {
            this.r = hs1Var;
            return;
        }
        pz3 pz3Var2 = this.x;
        if (runtimeException != null) {
            ly8.d(pz3Var2.n);
            d(null, runtimeException, false);
            return;
        }
        boolean z = pz3Var2.o;
        df dfVar = this.c;
        if (!z) {
            c(pz3.e(dfVar, hs1Var));
            return;
        }
        d(pz3.e(dfVar, hs1Var), null, true);
        if (this.a.isEmpty() || l(hs1Var) || this.x.d(hs1Var, this.k)) {
            return;
        }
        if (hs1Var.b == 18) {
            this.p = true;
        }
        if (!this.p) {
            c(pz3.e(this.c, hs1Var));
            return;
        }
        pz3 pz3Var3 = this.x;
        df dfVar2 = this.c;
        n29 n29Var2 = pz3Var3.n;
        n29Var2.sendMessageDelayed(Message.obtain(n29Var2, 9, dfVar2), 5000L);
    }

    public final void p(hs1 hs1Var) {
        ly8.d(this.x.n);
        ne neVar = this.b;
        neVar.b("onSignInFailed for " + neVar.getClass().getName() + " with " + String.valueOf(hs1Var));
        o(hs1Var, null);
    }

    public final void q() {
        ly8.d(this.x.n);
        Status status = pz3.p;
        c(status);
        this.d.x(false, status);
        for (uy4 uy4Var : (uy4[]) this.f.keySet().toArray(new uy4[0])) {
            n(new c29(new TaskCompletionSource()));
        }
        b(new hs1(4, null, null));
        ne neVar = this.b;
        if (neVar.isConnected()) {
            neVar.h(new om5(this));
        }
    }
}
