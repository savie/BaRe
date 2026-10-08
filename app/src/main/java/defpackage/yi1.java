package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import javax.net.SocketFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yi1 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ yi1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                SocketFactory socketFactory = (SocketFactory) obj;
                gv7 gv7Var = ij1.a;
                List list = ((dj1) obj2).a;
                if (list.size() > 1) {
                    if (!list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            if (((cj1) it.next()).b.c == dd1.WebDav) {
                            }
                        }
                    }
                    Iterator it2 = list.iterator();
                    bj1 bj1VarC = null;
                    while (it2.hasNext()) {
                        bj1VarC = ij1.c((cj1) it2.next(), socketFactory);
                        jj1 jj1Var = bj1VarC.b;
                        if (jj1Var.b) {
                            return nc8.I(bj1VarC);
                        }
                        String str = jj1Var.d;
                        if (str.equals("connect-failed") || str.equals("timeout")) {
                            return nc8.I(bj1VarC);
                        }
                    }
                    return fl1.B0(bj1VarC);
                }
                return nc8.I(ij1.c((cj1) el1.k1(list), socketFactory));
            default:
                return ((w16) ((cn6) obj2).b()).a((vh7) obj);
        }
    }
}
