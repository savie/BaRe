package defpackage;

import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ez2 {
    public qz8 b;
    public final AtomicBoolean a = new AtomicBoolean(false);
    public boolean c = false;

    public abstract ez2 a(qc6 qc6Var);

    public abstract pa2 b(k31 k31Var, qc6 qc6Var);

    public abstract void c(wc2 wc2Var);

    public abstract void d(pa2 pa2Var);

    public abstract qc6 e();

    public abstract boolean f(ez2 ez2Var);

    public abstract boolean g(int i);

    public final void h() {
        qz8 qz8Var;
        boolean z = true;
        if (!this.a.compareAndSet(false, true) || (qz8Var = this.b) == null) {
            return;
        }
        synchronized (qz8Var.a) {
            try {
                List list = (List) qz8Var.a.get(this);
                int i = 0;
                if (list != null) {
                    while (true) {
                        if (i >= list.size()) {
                            i = 0;
                            break;
                        } else {
                            if (list.get(i) == this) {
                                list.remove(i);
                                i = 1;
                                break;
                            }
                            i++;
                        }
                    }
                    if (list.isEmpty()) {
                        qz8Var.a.remove(this);
                    }
                }
                if (i == 0 && this.c) {
                    z = false;
                }
                zm5.s(z);
                if (!e().b()) {
                    ez2 ez2VarA = a(qc6.a(e().a));
                    List list2 = (List) qz8Var.a.get(ez2VarA);
                    if (list2 != null) {
                        for (int i2 = 0; i2 < list2.size(); i2++) {
                            if (list2.get(i2) == this) {
                                list2.remove(i2);
                                break;
                            }
                        }
                        if (list2.isEmpty()) {
                            qz8Var.a.remove(ez2VarA);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.b = null;
    }
}
