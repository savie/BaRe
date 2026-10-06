package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p20 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Set c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p20(Object obj, Object obj2, boolean z, Set set, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.d = obj;
        this.e = obj2;
        this.b = z;
        this.c = set;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.e;
        Object obj3 = this.d;
        switch (i) {
            case 0:
                return new p20((List) obj3, (r20) obj2, this.b, this.c, jv1Var, 0);
            default:
                return new p20((hf1) obj3, (ArrayList) obj2, this.b, this.c, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((p20) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((p20) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0050 A[PHI: r1
      0x0050: PHI (r1v25 te1) = (r1v14 te1), (r1v27 te1) binds: [B:57:0x0111, B:11:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:32:0x00af  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, we1] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [tb1] */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13, types: [te1] */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [tb1] */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v26 */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        boolean z;
        te1 te1Var;
        ef1 ef1VarA;
        ?? r5;
        tb1 tb1Var;
        ?? P;
        pd1 pd1VarA;
        tb1 tb1Var2;
        tb1 tb1VarC;
        int i;
        String string;
        Long l = null;
        switch (this.a) {
            case 0:
                lg7.H(obj);
                List<ji> list = (List) this.d;
                boolean z2 = this.b;
                Set<LabelParams> set = this.c;
                ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                for (ji jiVar : list) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    if (z2) {
                        lr4 lr4Var = lr4.a;
                        Set setE = lr4.e(jiVar.getPackageName());
                        if (setE != null && !setE.isEmpty()) {
                            linkedHashSet.addAll(setE);
                        }
                    }
                    for (LabelParams labelParams : set) {
                        if (linkedHashSet.size() < 5) {
                            linkedHashSet.add(labelParams);
                        }
                    }
                    if (linkedHashSet.isEmpty()) {
                        linkedHashSet = null;
                    }
                    arrayList.add(new pw5(jiVar, linkedHashSet));
                }
                lr4 lr4Var2 = lr4.a;
                lr4.k(arrayList);
                ((r20) this.e).d();
                return be8.a;
            default:
                lg7.H(obj);
                ?? r3 = (we1) ((hf1) this.d).g.getValue();
                ArrayList arrayList2 = (ArrayList) this.e;
                int i2 = 2;
                ke keVar = new ke((hf1) this.d, i2);
                r3.getClass();
                r3.b = false;
                lh6 lh6Var = new lh6();
                try {
                    Iterator it = arrayList2.iterator();
                    tb1 tb1Var3 = null;
                    String str = null;
                    boolean z3 = false;
                    while (true) {
                        z = true;
                        if (it.hasNext()) {
                            qd1 qd1Var = (qd1) it.next();
                            if (r3.b) {
                                te1Var = (te1) lh6Var.a;
                                if (te1Var != null) {
                                    te1Var.a(keVar);
                                }
                            } else {
                                sd1 sd1Var = qd1Var.a;
                                sd1Var.getClass();
                                hf1.j((hf1) keVar.b, sd1Var, new hi(i2));
                                if (str != null) {
                                    pd1VarA = new pd1(rd1.SKIPPED, str, l);
                                    tb1Var2 = tb1Var3;
                                } else {
                                    if (x50.A0(new sd1[]{sd1.INTERNET_CONNECTIVITY, sd1.FIREBASE_BACKEND_ACCESS}).contains(qd1Var.a)) {
                                        tb1VarC = tb1Var3;
                                        r5 = l;
                                        tb1Var = tb1Var3;
                                    } else {
                                        if (tb1Var3 == null) {
                                            tb1 tb1Var4 = tb1.a;
                                            tb1VarC = qb1.c();
                                        }
                                        tb1 tb1Var5 = tb1VarC;
                                        tb1Var = tb1Var5;
                                        r5 = tb1Var5;
                                    }
                                    sd1 sd1Var2 = qd1Var.a;
                                    if (r5 != 0) {
                                        Set set2 = ud1.a;
                                        sd1Var2.getClass();
                                        ?? r8 = ud1.a.contains(sd1Var2) ? r5 : l;
                                        if (r8 != 0) {
                                            P = we1.p(lh6Var, arrayList2, r3, r8);
                                        } else {
                                            P = l;
                                        }
                                    } else {
                                        P = l;
                                    }
                                    pd1VarA = r3.A(sd1Var2, r5, z3, keVar, P);
                                    tb1Var2 = tb1Var;
                                }
                                sd1 sd1Var3 = qd1Var.a;
                                sd1Var3.getClass();
                                hf1.j((hf1) keVar.b, sd1Var3, new v10(pd1VarA, 3));
                                sd1 sd1Var4 = qd1Var.a;
                                sd1 sd1Var5 = sd1.INTERNET_CONNECTIVITY;
                                if (sd1Var4 == sd1Var5 && pd1VarA.a == rd1.PASSED) {
                                    z3 = true;
                                }
                                if (pd1VarA.a == rd1.ACTION_REQUIRED && (sd1Var4 == sd1Var5 || sd1Var4 == sd1.FIREBASE_BACKEND_ACCESS)) {
                                    int i3 = ue1.a[sd1Var4.ordinal()];
                                    if (i3 != 1) {
                                        i = 2;
                                        if (i3 != 2) {
                                            str = null;
                                        } else {
                                            string = r3.a.getString(R.string.cloud_diagnostics_skipped_firebase_unavailable);
                                        }
                                    } else {
                                        i = 2;
                                        string = r3.a.getString(R.string.cloud_diagnostics_skipped_internet_unavailable);
                                    }
                                    str = string;
                                } else {
                                    i = 2;
                                }
                                i2 = i;
                                l = null;
                                tb1Var3 = tb1Var2;
                            }
                        } else {
                            te1Var = (te1) lh6Var.a;
                            if (te1Var != null) {
                                te1Var.a(keVar);
                            }
                        }
                    }
                    hf1 hf1Var = (hf1) this.d;
                    synchronized (hf1Var) {
                        ef1 ef1Var = hf1Var.h;
                        if (ef1Var == null) {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                        ef1VarA = ef1.a(ef1Var, null, false, false, 255);
                        hf1Var.q(ef1VarA);
                    }
                    hf1 hf1Var2 = (hf1) this.d;
                    hf1Var2.i = null;
                    if (this.b) {
                        List list2 = ef1VarA.g;
                        Set set3 = this.c;
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj2 : list2) {
                            if (set3.contains(((md1) obj2).a.a)) {
                                arrayList3.add(obj2);
                            }
                        }
                        hf1 hf1Var3 = (hf1) this.d;
                        if (!arrayList3.isEmpty()) {
                            Iterator it2 = arrayList3.iterator();
                            while (it2.hasNext()) {
                                if (((md1) it2.next()).c != rd1.PASSED) {
                                    z = false;
                                }
                            }
                        }
                        hf1Var3.f.k(new bf1(el1.Y0(arrayList3, " | ", null, null, new gf1(0), 30), z));
                    } else {
                        hf1Var2.f.k(new af1(hf1.k(ef1VarA, this.c)));
                    }
                    return be8.a;
                } catch (Throwable th) {
                    te1 te1Var2 = (te1) lh6Var.a;
                    if (te1Var2 != null) {
                        te1Var2.a(keVar);
                    }
                    throw th;
                }
        }
    }
}
