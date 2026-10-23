package defpackage;

import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class po8 extends qo0 {
    public final ix6 e = new ix6();
    public final ix6 f = new ix6();

    public final boolean j(List list) {
        int i = 0;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(R.string.downloading_backup_files);
        string.getClass();
        i(string);
        boolean zB = fo8.b(new fo8(i), list);
        f();
        if (zB) {
            xj1 xj1Var = xj1.g;
            ArrayList<jl0> arrayList = new ArrayList(hl1.G0(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(yn8.c((yn8) it.next(), 63));
            }
            xj1Var.getClass();
            for (jl0 jl0Var : arrayList) {
                fk6 fk6Var = xj1Var.c;
                fk6Var.getClass();
                jl0Var.getClass();
                fk6Var.put(jl0Var.getItemId(), jl0Var);
            }
            xj1Var.j(xj1Var.f(false));
        }
        return zB;
    }
}
