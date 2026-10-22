package defpackage;

import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class do8 {
    public static void a(List list, boolean z, dv dvVar) {
        dvVar.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return;
        }
        if (z) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = ((yn8) it.next()).e;
                if (str != null) {
                    arrayList.add(str);
                }
            }
            jd1 jd1Var = new jd1(el1.v1(new LinkedHashSet(el1.v1(arrayList))));
            tb1 tb1Var = tb1.a;
            qb1.c().b(jd1Var).c();
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((yn8) it2.next()).a.h();
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            jl0 jl0Var = (jl0) it3.next();
            fk6 fk6Var = dvVar.c;
            fk6Var.getClass();
            jl0Var.getClass();
            if (!fk6Var.isEmpty()) {
                fk6Var.remove(jl0Var.getItemId());
            }
        }
        dvVar.j(dvVar.f(false));
    }
}
