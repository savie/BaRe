package defpackage;

import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class dv {
    public boolean b;
    public final /* synthetic */ int f;
    public final String a = getClass().getSimpleName();
    public final fk6 c = new fk6();
    public final CopyOnWriteArraySet d = new CopyOnWriteArraySet();
    public boolean e = true;

    public dv(int i) {
        this.f = i;
    }

    public static /* synthetic */ void i(dv dvVar, boolean z, gk6 gk6Var, boolean z2, boolean z3, int i) {
        if ((i & 2) != 0) {
            gk6Var = null;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        if ((i & 8) != 0) {
            z3 = true;
        }
        dvVar.g(z, gk6Var, z2, z3);
    }

    public abstract ik6 a();

    public final jl0 b(String str) {
        str.getClass();
        return (jl0) this.c.get(str);
    }

    public List c() {
        int i = this.f;
        fk6 fk6Var = this.c;
        switch (i) {
            case 1:
                ArrayList arrayListA = fk6Var.a();
                return !arrayListA.isEmpty() ? el1.n1(arrayListA, nm3.a(FolderItem.Companion, new sl(7))) : arrayListA;
            default:
                return fk6Var.a();
        }
    }

    public final jl0 d(String str) {
        Object next;
        str.getClass();
        Iterator it = e().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (pe4.d(((jl0) next).getItemId(), str)) {
                return (jl0) next;
            }
        }
        next = null;
        return (jl0) next;
    }

    public final List e() {
        return !this.c.isEmpty() ? c() : (List) m().c;
    }

    public final synchronized ik6 f(boolean z) {
        List listC;
        try {
            listC = c();
        } catch (Throwable th) {
            throw th;
        }
        return !listC.isEmpty() ? new ik6(hk6.Success, listC, z, 4) : new ik6(hk6.Empty, null, z, 6);
    }

    public void g(boolean z, gk6 gk6Var, boolean z2, boolean z3) {
        switch (this.f) {
            case 2:
                h(z, gk6Var, z2, false);
                break;
            default:
                h(z, gk6Var, z2, z3);
                break;
        }
    }

    public final void h(final boolean z, final gk6 gk6Var, final boolean z2, boolean z3) {
        bt3 bt3Var = new bt3() { // from class: ek6
            @Override // defpackage.bt3
            public final Object invoke() {
                dv dvVar = this;
                CopyOnWriteArraySet copyOnWriteArraySet = dvVar.d;
                gk6 gk6Var2 = gk6Var;
                if (gk6Var2 != null && !copyOnWriteArraySet.contains(gk6Var2)) {
                    copyOnWriteArraySet.add(gk6Var2);
                }
                boolean z4 = z || !dvVar.b;
                if (z2) {
                    dvVar.j(new ik6(hk6.Loading, null, false, 14));
                }
                dvVar.j(z4 ? dvVar.m() : dvVar.f(true));
                return be8.a;
            }
        };
        if (z3) {
            zn4 zn4Var = zn4.a;
            zn4.d(bt3Var);
        } else {
            zn4 zn4Var2 = zn4.a;
            zn4.c(bt3Var);
        }
    }

    public final synchronized void j(ik6 ik6Var) {
        try {
            cv cvVar = new cv(13, this, ik6Var);
            if (this.e) {
                zn4 zn4Var = zn4.a;
                zn4.e(cvVar);
            } else {
                cvVar.invoke();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void k(ji jiVar) {
        jiVar.getClass();
        zn4 zn4Var = zn4.a;
        zn4.c(new cv(0, jiVar, this));
    }

    public final void l(jl0 jl0Var) {
        jl0Var.getClass();
        fk6 fk6Var = this.c;
        fk6Var.getClass();
        fk6Var.put(jl0Var.getItemId(), jl0Var);
        j(f(false));
    }

    public final synchronized ik6 m() {
        ik6 ik6VarA;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            throw new IllegalThreadStateException("Method called from main thread");
        }
        ik6VarA = a();
        fk6 fk6Var = this.c;
        List<jl0> list = (List) ik6VarA.c;
        fk6Var.getClass();
        fk6Var.clear();
        for (jl0 jl0Var : list) {
            jl0Var.getClass();
            fk6Var.put(jl0Var.getItemId(), jl0Var);
        }
        return ik6VarA;
    }

    public final void n(jl0 jl0Var) {
        fk6 fk6Var = this.c;
        fk6Var.getClass();
        if (!fk6Var.isEmpty()) {
            fk6Var.remove(jl0Var.getItemId());
        }
        j(f(false));
    }

    public final void o(String str) {
        str.getClass();
        jl0 jl0VarB = b(str);
        if (jl0VarB != null) {
            n(jl0VarB);
        }
    }

    public final void p(gk6 gk6Var) {
        this.d.remove(gk6Var);
    }
}
