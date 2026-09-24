package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ob1 {
    public static List a() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        tb1 tb1Var = tb1.a;
        String str = Build.MODEL;
        str.getClass();
        ArrayList arrayListC0 = fl1.C0(qb1.n(str));
        String strE = qb1.e();
        if (!arrayListC0.contains(strE)) {
            arrayListC0.add(strE);
        }
        l73 l73VarA = cf3.a(re3.f(), true);
        if (l73VarA instanceof xe3) {
            ArrayList arrayListQ0 = el1.Q0(((xe3) l73VarA).n.b());
            ArrayList arrayList = new ArrayList();
            for (Object obj : arrayListQ0) {
                if (!el1.M0(arrayListC0, ((eb2) obj).b.e())) {
                    arrayList.add(obj);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String strE2 = ((eb2) it.next()).b.e();
                if (strE2 != null) {
                    arrayListC0.add(strE2);
                }
            }
        } else {
            if (!(l73VarA instanceof we3)) {
                q.j();
                return null;
            }
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String strG = dj7.g(R.string.error);
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, strG);
        }
        List listP = eq3.p(arrayListC0);
        String.CASE_INSENSITIVE_ORDER.getClass();
        return el1.n1(listP, new cl7(3));
    }

    public static void b(il0 il0Var, List list, mt3 mt3Var, ae1 ae1Var) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        tb1 tb1Var = tb1.a;
        String strE = qb1.e();
        int iIndexOf = list.indexOf(strE);
        String str = Build.MODEL;
        str.getClass();
        String strN = qb1.n(str);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String strN2 = (String) it.next();
            String string = il0Var.getString(R.string.default_word);
            string.getClass();
            if (pe4.d(strN2, strN)) {
                strN2 = u48.n(strN2, " (", string, ")");
            }
            arrayList.add(strN2);
        }
        lh6 lh6Var = new lh6();
        lh6Var.a = strE;
        s35 s35Var = new s35(il0Var, R.style.M3AlertDialogTheme, new hv1(il0Var, R.style.M3AlertDialogTheme), null);
        int i = 0;
        ((ra) s35Var.b).m = false;
        s35Var.v(R.string.select_active_tag);
        s35Var.u((CharSequence[]) arrayList.toArray(new String[0]), iIndexOf, new ib1(i, lh6Var, list, mt3Var));
        s35Var.s(R.string.ok, new jb1(mt3Var, lh6Var, i));
        if (ae1Var != null) {
            s35Var.r(R.string.new_tag, new kb1(i, il0Var, ae1Var));
        }
        s35Var.m();
    }
}
