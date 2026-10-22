package defpackage;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zc2 {
    public final wj6 a;
    public final gy5 b;
    public final oc6 c = oc6.f;

    public zc2(wj6 wj6Var, gy5 gy5Var) {
        this.a = wj6Var;
        this.b = gy5Var;
    }

    public final void a(ez2 ez2Var) {
        qz8 qz8Var = qz8.b;
        synchronized (qz8Var.a) {
            try {
                List arrayList = (List) qz8Var.a.get(ez2Var);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    qz8Var.a.put(ez2Var, arrayList);
                }
                arrayList.add(ez2Var);
                if (!ez2Var.e().b()) {
                    ez2 ez2VarA = ez2Var.a(qc6.a(ez2Var.e().a));
                    List arrayList2 = (List) qz8Var.a.get(ez2VarA);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        qz8Var.a.put(ez2VarA, arrayList2);
                    }
                    arrayList2.add(ez2Var);
                }
                boolean z = true;
                ez2Var.c = true;
                zm5.s(!ez2Var.a.get());
                if (ez2Var.b != null) {
                    z = false;
                }
                zm5.s(z);
                ez2Var.b = qz8Var;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.a.n(new ue2(2, this, ez2Var));
    }

    public final void b(aj8 aj8Var) {
        a(new bj8(this.a, new la(this, aj8Var, false), f()));
    }

    public final void c(aj8 aj8Var) {
        a(new bj8(this.a, aj8Var, f()));
    }

    public final zc2 d(String str) {
        if (str == null) {
            f6.n("Can't pass null for argument 'pathString' in child()");
            return null;
        }
        gy5 gy5Var = this.b;
        if (gy5Var.isEmpty()) {
            ui8.b(str);
        } else {
            ui8.a(str);
        }
        return new zc2(this.a, gy5Var.e(new gy5(str)));
    }

    public final String e() {
        gy5 gy5Var = this.b;
        if (gy5Var.isEmpty()) {
            return null;
        }
        return gy5Var.i().a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zc2) && toString().equals(obj.toString());
    }

    public final qc6 f() {
        return new qc6(this.b, this.c);
    }

    public final void g(aj8 aj8Var) {
        if (aj8Var != null) {
            h(new bj8(this.a, aj8Var, f()));
        } else {
            f6.n("listener must not be null");
        }
    }

    public final void h(ez2 ez2Var) {
        qz8 qz8Var = qz8.b;
        synchronized (qz8Var.a) {
            try {
                List list = (List) qz8Var.a.get(ez2Var);
                if (list != null && !list.isEmpty()) {
                    if (ez2Var.e().b()) {
                        HashSet hashSet = new HashSet();
                        for (int size = list.size() - 1; size >= 0; size--) {
                            ez2 ez2Var2 = (ez2) list.get(size);
                            if (!hashSet.contains(ez2Var2.e())) {
                                hashSet.add(ez2Var2.e());
                                ez2Var2.h();
                            }
                        }
                    } else {
                        ((ez2) list.get(0)).h();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.a.n(new te2(2, this, ez2Var));
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    public final Task i(Object obj) {
        gy5 gy5Var = this.b;
        qn5 qn5VarZ = xh8.z(gy5Var, null);
        ui8.d(gy5Var);
        new rd2(gy5Var).e(obj);
        Object objF = t62.f(obj);
        ui8.c(objF);
        qn5 qn5VarA = xh8.a(objF, qn5VarZ);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        ci8 ci8Var = new ci8(taskCompletionSource);
        Task task = taskCompletionSource.getTask();
        this.a.n(new yc2(this, qn5VarA, new qw5(task, ci8Var)));
        return task;
    }

    public final String toString() {
        gy5 gy5VarL = this.b.l();
        wj6 wj6Var = this.a;
        zc2 zc2Var = gy5VarL != null ? new zc2(wj6Var, gy5VarL) : null;
        if (zc2Var == null) {
            return wj6Var.a.toString();
        }
        try {
            return zc2Var.toString() + "/" + URLEncoder.encode(e(), "UTF-8").replace("+", "%20");
        } catch (UnsupportedEncodingException e) {
            throw new xc2("Failed to URLEncode key: " + e(), e);
        }
    }
}
