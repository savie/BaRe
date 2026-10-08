package defpackage;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ol6 implements ta2, qa2 {
    public final td2 a;
    public final qd2 b;
    public int c;
    public int d = -1;
    public jo4 e;
    public List f;
    public int k;
    public volatile bh5 n;
    public File p;
    public pl6 q;

    public ol6(qd2 qd2Var, td2 td2Var) {
        this.b = qd2Var;
        this.a = td2Var;
    }

    @Override // defpackage.ta2
    public final boolean a() {
        List list;
        ArrayList arrayListJ;
        ArrayList arrayListA = this.b.a();
        boolean z = false;
        if (!arrayListA.isEmpty()) {
            qd2 qd2Var = this.b;
            mi6 mi6VarA = qd2Var.c.a();
            Class<?> cls = qd2Var.d.getClass();
            Class cls2 = qd2Var.g;
            Class cls3 = qd2Var.k;
            c00 c00Var = mi6VarA.h;
            rh5 rh5Var = (rh5) ((AtomicReference) c00Var.b).getAndSet(null);
            if (rh5Var == null) {
                rh5Var = new rh5(cls, cls2, cls3);
            } else {
                rh5Var.a = cls;
                rh5Var.b = cls2;
                rh5Var.c = cls3;
            }
            synchronized (((k50) c00Var.c)) {
                list = (List) ((k50) c00Var.c).get(rh5Var);
            }
            ((AtomicReference) c00Var.b).set(rh5Var);
            List list2 = list;
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                cd cdVar = mi6VarA.a;
                synchronized (cdVar) {
                    arrayListJ = ((ai5) cdVar.b).j(cls);
                }
                Iterator it = arrayListJ.iterator();
                while (it.hasNext()) {
                    for (Class cls4 : mi6VarA.c.f((Class) it.next(), cls2)) {
                        if (!mi6VarA.f.b(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                            arrayList.add(cls4);
                        }
                    }
                }
                c00 c00Var2 = mi6VarA.h;
                List listUnmodifiableList = Collections.unmodifiableList(arrayList);
                synchronized (((k50) c00Var2.c)) {
                    ((k50) c00Var2.c).put(new rh5(cls, cls2, cls3), listUnmodifiableList);
                }
                list2 = arrayList;
            }
            if (!list2.isEmpty()) {
                while (true) {
                    List list3 = this.f;
                    if (list3 != null && this.k < list3.size()) {
                        this.n = null;
                        while (!z && this.k < this.f.size()) {
                            List list4 = this.f;
                            int i = this.k;
                            this.k = i + 1;
                            ch5 ch5Var = (ch5) list4.get(i);
                            File file = this.p;
                            qd2 qd2Var2 = this.b;
                            this.n = ch5Var.b(file, qd2Var2.e, qd2Var2.f, qd2Var2.i);
                            if (this.n != null && this.b.c(this.n.c.a()) != null) {
                                this.n.c.d(this.b.o, this);
                                z = true;
                            }
                        }
                        return z;
                    }
                    int i2 = this.d + 1;
                    this.d = i2;
                    if (i2 >= list2.size()) {
                        int i3 = this.c + 1;
                        this.c = i3;
                        if (i3 >= arrayListA.size()) {
                            break;
                        }
                        this.d = 0;
                    }
                    jo4 jo4Var = (jo4) arrayListA.get(this.c);
                    Class cls5 = (Class) list2.get(this.d);
                    l98 l98VarE = this.b.e(cls5);
                    qd2 qd2Var3 = this.b;
                    this.q = new pl6(qd2Var3.c.a, jo4Var, qd2Var3.n, qd2Var3.e, qd2Var3.f, l98VarE, cls5, qd2Var3.i);
                    File fileE = qd2Var3.h.a().e(this.q);
                    this.p = fileE;
                    if (fileE != null) {
                        this.e = jo4Var;
                        this.f = this.b.c.a().f(fileE);
                        this.k = 0;
                    }
                }
            } else if (!File.class.equals(this.b.k)) {
                StringBuilder sb = new StringBuilder("Failed to find any load path from ");
                sb.append(this.b.d.getClass());
                Class cls6 = this.b.k;
                sb.append(" to ");
                sb.append(cls6);
                throw new IllegalStateException(sb.toString());
            }
        }
        return false;
    }

    @Override // defpackage.qa2
    public final void b(Exception exc) {
        this.a.c(this.q, exc, this.n.c, 4);
    }

    @Override // defpackage.ta2
    public final void cancel() {
        bh5 bh5Var = this.n;
        if (bh5Var != null) {
            bh5Var.c.cancel();
        }
    }

    @Override // defpackage.qa2
    public final void f(Object obj) {
        this.a.b(this.e, obj, this.n.c, 4, this.q);
    }
}
