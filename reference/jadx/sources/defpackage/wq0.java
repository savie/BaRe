package defpackage;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wq0 {
    public static final wq0 a;
    public static final ex6 b;
    public static final ex6 c;
    public static final ix6 d;
    public static final ix6 e;
    public static final uq0 f;
    public static final dq0 g;

    static {
        dq0 ud9Var;
        wq0 wq0Var = new wq0();
        a = wq0Var;
        b = new ex6();
        c = new ex6();
        d = new ix6();
        e = new ix6();
        f = new uq0();
        c6 c6Var = new c6(1);
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        db dbVar = new db(contextC);
        dbVar.a = new ma2(14);
        dbVar.c = c6Var;
        if (((c6) dbVar.c) == null) {
            c6.f("Please provide a valid listener for purchases updates.");
            return;
        }
        if (((ma2) dbVar.a) == null) {
            c6.f("Pending purchases for one-time products must be supported.");
            return;
        }
        ((ma2) dbVar.a).getClass();
        c6 c6Var2 = (c6) dbVar.c;
        ma2 ma2Var = (ma2) dbVar.a;
        if (c6Var2 != null) {
            c6 c6Var3 = (c6) dbVar.c;
            ud9Var = dbVar.a() ? new ud9(ma2Var, contextC, c6Var3, dbVar) : new dq0(ma2Var, contextC, c6Var3, dbVar);
        } else {
            ud9Var = dbVar.a() ? new ud9(ma2Var, contextC, dbVar) : new dq0(ma2Var, contextC, dbVar);
        }
        g = ud9Var;
        wq0Var.f();
    }

    public static wb6 a(List list) {
        Object next = null;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((wb6) obj).getPurchaseStateEnum() == wb6.b.PURCHASED) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                long jH = io4.h(((wb6) next).getPurchaseTime());
                do {
                    Object next2 = it.next();
                    long jH2 = io4.h(((wb6) next2).getPurchaseTime());
                    if (jH < jH2) {
                        next = next2;
                        jH = jH2;
                    }
                } while (it.hasNext());
            }
        }
        return (wb6) next;
    }

    public static void b(String str, ArrayList arrayList, w76 w76Var) {
        ty3 ty3Var = new ty3();
        ArrayList<pc6> arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            oe oeVar = new oe(11, false);
            oeVar.b = str;
            oeVar.c = str2;
            if ("first_party".equals(str)) {
                c6.f("Serialized doc id must be provided for first party products.");
                return;
            } else {
                if (((String) oeVar.c) == null) {
                    c6.f("Product id must be provided.");
                    return;
                }
                arrayList2.add(new pc6(oeVar));
            }
        }
        if (arrayList2.isEmpty()) {
            c6.f("Product list cannot be empty.");
            return;
        }
        HashSet hashSet = new HashSet();
        for (pc6 pc6Var : arrayList2) {
            if (!"play_pass_subs".equals(pc6Var.b)) {
                hashSet.add(pc6Var.b);
            }
        }
        if (hashSet.size() > 1) {
            c6.f("All products should be of the same product type.");
            return;
        }
        ma9 ma9VarO = ma9.o(arrayList2);
        ty3Var.a = ma9VarO;
        if (ma9VarO == null) {
            c6.f("Product list must be set to a non empty list.");
        } else {
            g.c(new jq6(ty3Var), w76Var);
        }
    }

    public static List c() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        int i = 1;
        List<wb6> list = (List) io4.j("BillingManager", "queryPurchasesPlayCache", true, new fl(i), 8);
        if (list != null) {
            for (wb6 wb6Var : list) {
                if (wb6Var.getPurchaseStateEnum() == wb6.b.PURCHASED && !pe4.d(wb6Var.isAcknowledged(), Boolean.TRUE)) {
                    Log.i("BillingManager", "Acknowledging purchase");
                    String purchaseToken = wb6Var.getPurchaseToken();
                    purchaseToken.getClass();
                }
            }
        }
        return list;
    }

    public static void d(String str, String str2) {
        vr6.e$default(vr6.INSTANCE, "BM.".concat(str), str2, null, 4, null);
    }

    public static void e(String str, String str2) {
        vr6.i$default(vr6.INSTANCE, "BM.".concat(str), str2, null, 4, null);
    }

    public static void g(wb6 wb6Var, hq0 hq0Var) {
        String string;
        wb6Var.getClass();
        String str = null;
        if (wb6Var.isSpoofedOrderId()) {
            wb6Var = null;
        }
        if (wb6Var == null) {
            wb6Var = wb6.Companion.m78default();
        }
        Task taskI = re3.k().d("transactions").d("premium").i(wb6Var);
        taskI.getClass();
        taskI.addOnCompleteListener(new pf(hq0Var, 1));
        String orderId = wb6Var.getOrderId();
        if (orderId == null || (string = nq7.H0(orderId).toString()) == null) {
            return;
        }
        if (string.length() > 0 && !nq7.j0(string)) {
            str = string;
        }
        if (str == null) {
            return;
        }
        zc2 zc2VarD = re3.k().d("transactions").d("premium_history");
        zc2VarD.b(new vq0(str, wb6Var, zc2VarD));
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0023 A[Catch: all -> 0x002e, Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:7:0x000b, B:9:0x0015, B:11:0x0019, B:18:0x0028, B:17:0x0023), top: B:28:0x000b, outer: #1 }] */
    public final synchronized void f() {
        dq0 dq0Var = g;
        if (dq0Var.v()) {
            return;
        }
        try {
            ex6 ex6Var = c;
            rq0 rq0Var = (rq0) ex6Var.d();
            if (rq0Var == null) {
                ex6Var.k(pq0.a);
            } else {
                if ((rq0Var instanceof mq0) || (rq0Var instanceof oq0)) {
                    ex6Var.k(pq0.a);
                }
            }
            dq0Var.d(f);
        } catch (Exception e2) {
            d("startConnection", yc9.g0(e2));
        }
    }
}
