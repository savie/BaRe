package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uu7 implements Callable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ long b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ aa1 d;
    public final /* synthetic */ bv7 e;

    public uu7(bv7 bv7Var, boolean z, long j, boolean z2, aa1 aa1Var) {
        this.e = bv7Var;
        this.a = z;
        this.b = j;
        this.c = z2;
        this.d = aa1Var;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:97:0x00b7 A[SYNTHETIC] */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        kh8 kh8Var;
        long j;
        kh8 kh8Var2;
        boolean z;
        boolean zG;
        bv7 bv7Var = this.e;
        vq vqVar = bv7Var.b;
        eo5 eo5Var = bv7Var.g;
        if (this.a) {
            eo5Var.c();
        }
        Iterator it = ((ArrayList) vqVar.c).iterator();
        do {
            boolean zHasNext = it.hasNext();
            kh8Var = null;
            j = this.b;
            if (!zHasNext) {
                kh8Var2 = null;
                break;
            }
            kh8Var2 = (kh8) it.next();
        } while (kh8Var2.a != j);
        ArrayList<kh8> arrayList = (ArrayList) vqVar.c;
        int i = 0;
        for (kh8 kh8Var3 : arrayList) {
            if (kh8Var3.a == j) {
                kh8Var = kh8Var3;
                break;
            }
            i++;
        }
        zm5.r("removeWrite called with nonexistent writeId", kh8Var != null);
        arrayList.remove(kh8Var);
        boolean z2 = kh8Var.e;
        gy5 gy5Var = kh8Var.b;
        boolean z3 = false;
        for (int size = arrayList.size() - 1; z2 && size >= 0; size--) {
            kh8 kh8Var4 = (kh8) arrayList.get(size);
            boolean z4 = kh8Var4.e;
            gy5 gy5Var2 = kh8Var4.b;
            if (z4) {
                if (size >= i) {
                    if (!kh8Var4.c()) {
                        Iterator it2 = kh8Var4.a().a.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                zG = false;
                                break;
                            }
                            if (gy5Var2.e((gy5) ((Map.Entry) it2.next()).getKey()).g(gy5Var)) {
                                zG = true;
                                break;
                            }
                        }
                    } else {
                        zG = gy5Var2.g(gy5Var);
                    }
                    if (zG) {
                        z2 = false;
                    } else if (gy5Var.g(gy5Var2)) {
                        z3 = true;
                    }
                } else if (gy5Var.g(gy5Var2)) {
                    z3 = true;
                }
            }
        }
        if (z2) {
            if (z3) {
                vqVar.b = vq.o(arrayList, vq.k, gy5.d);
                if (arrayList.size() > 0) {
                    vqVar.d = Long.valueOf(((kh8) dj7.e(arrayList, 1)).a);
                } else {
                    vqVar.d = -1L;
                }
            } else if (kh8Var.c()) {
                np1 np1Var = (np1) vqVar.b;
                np1Var.getClass();
                vqVar.b = gy5Var.isEmpty() ? np1.b : new np1(np1Var.a.k(gy5Var, ua4.d));
            } else {
                Iterator it3 = kh8Var.a().a.iterator();
                while (it3.hasNext()) {
                    gy5 gy5Var3 = (gy5) ((Map.Entry) it3.next()).getKey();
                    np1 np1Var2 = (np1) vqVar.b;
                    gy5 gy5VarE = gy5Var.e(gy5Var3);
                    np1Var2.getClass();
                    vqVar.b = gy5VarE.isEmpty() ? np1.b : new np1(np1Var2.a.k(gy5VarE, ua4.d));
                }
            }
            z = true;
        } else {
            z = false;
        }
        boolean z5 = kh8Var2.e;
        gy5 gy5Var4 = kh8Var2.b;
        boolean z6 = this.c;
        if (z5 && !z6) {
            HashMap mapV = ms8.v(this.d);
            if (kh8Var2.c()) {
                ms8.L(kh8Var2.b(), new dj8(bv7Var, gy5Var4), mapV);
                eo5Var.c();
            } else {
                ms8.K(kh8Var2.a(), bv7Var, gy5Var4, mapV);
                eo5Var.c();
            }
        }
        if (!z) {
            return Collections.EMPTY_LIST;
        }
        ua4 ua4VarI = ua4.d;
        if (kh8Var2.c()) {
            ua4VarI = ua4VarI.i(gy5.d, Boolean.TRUE);
        } else {
            Iterator it4 = kh8Var2.a().a.iterator();
            while (it4.hasNext()) {
                ua4VarI = ua4VarI.i((gy5) ((Map.Entry) it4.next()).getKey(), Boolean.TRUE);
            }
        }
        return bv7.a(bv7Var, new s7(gy5Var4, ua4VarI, z6));
    }
}
