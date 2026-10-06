package defpackage;

import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xo1 extends ju7 {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ju7, defpackage.bw1
    public final Object b(mc4 mc4Var) throws Throwable {
        double size;
        Throwable th;
        nz4 nz4Var = (nz4) this.d;
        d67 d67Var = (d67) nz4Var.c;
        yo1 yo1Var = (yo1) this.b;
        Throwable th2 = null;
        yo1Var.j(mc4Var, null, nz4Var);
        uq4 text = d67Var.getText();
        if (text != null) {
            yo1Var.g(mc4Var, null, text);
        }
        yo1Var.e(mc4Var, null, d67Var);
        yo1Var.f(mc4Var, null, d67Var);
        ny1 ny1Var = (ny1) nz4Var.b;
        nl1 nl1Var = (nl1) this.c;
        wf7 wf7Var = (wf7) ny1Var.c;
        double d = 0.0d;
        for (wf7 wf7Var2 : (List) ny1Var.b) {
            uf7 uf7Var = wf7Var2.b;
            Constructor constructor = uf7Var.b;
            uw5 uw5Var = new uw5();
            for (tw5 tw5Var : uf7Var.a) {
                Object obj = ((hz0) tw5Var).b;
                if (obj != null) {
                    uw5Var.put(obj, tw5Var);
                }
            }
            Iterator it = nl1Var.iterator();
            ml1 ml1Var = nl1Var.a;
            while (true) {
                size = -1.0d;
                if (!it.hasNext()) {
                    th = th2;
                    List list = wf7Var2.a;
                    Iterator it2 = list.iterator();
                    double d2 = 0.0d;
                    while (true) {
                        if (!it2.hasNext()) {
                            double size2 = ((double) list.size()) / 1000.0d;
                            if (d2 <= 0.0d) {
                                size = d2 / ((double) list.size());
                                break;
                            }
                            size = (d2 / ((double) list.size())) + size2;
                            break;
                        }
                        tw5 tw5Var2 = (tw5) it2.next();
                        if (((hj8) ml1Var.get(((hz0) tw5Var2).b)) == null) {
                            if (((hz0) tw5Var2).c) {
                                break;
                            }
                        } else {
                            d2 += 1.0d;
                        }
                    }
                } else {
                    Object next = it.next();
                    tw5 tw5Var3 = (tw5) uw5Var.get(next);
                    hj8 hj8Var = (hj8) ml1Var.get(next);
                    th = th2;
                    au1 au1VarK = hj8Var.b.k();
                    if (tw5Var3 != null) {
                        hj8Var.a.getClass().isPrimitive();
                        throw th;
                    }
                    if (au1VarK.g() && tw5Var3 == null) {
                        break;
                    }
                    th2 = th;
                }
            }
            if (size > d) {
                wf7Var = wf7Var2;
                d = size;
            }
            th2 = th;
        }
        Throwable th3 = th2;
        if (wf7Var == null) {
            throw new kd5("Constructor not matched for %s", (ri2) ny1Var.d);
        }
        List list2 = wf7Var.a;
        Object[] array = list2.toArray();
        for (int i = 0; i < list2.size(); i++) {
            hj8 hj8Var2 = (hj8) nl1Var.a.remove(((hz0) ((tw5) list2.get(i))).b);
            array[i] = hj8Var2 != null ? hj8Var2.a : th3;
        }
        Constructor constructor2 = wf7Var.b.b;
        if (!constructor2.isAccessible()) {
            constructor2.setAccessible(true);
        }
        Object objNewInstance = constructor2.newInstance(array);
        ((gd4) this.e).e(objNewInstance);
        nl1Var.c(objNewInstance);
        return objNewInstance;
    }
}
