package defpackage;

import android.content.ServiceConnection;
import android.util.Pair;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vp6 extends dr0 {
    public final b94 b;
    public final /* synthetic */ bq6 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vp6(bq6 bq6Var, b94 b94Var) {
        super(b94Var.asBinder());
        this.c = bq6Var;
        this.b = b94Var;
    }

    @Override // defpackage.dr0
    public final void a() {
        bq6 bq6Var = this.c;
        if (bq6Var.a == this) {
            bq6Var.a = null;
        }
        if (bq6Var.b == this) {
            bq6Var.b = null;
        }
        Iterator it = bq6Var.e.values().iterator();
        while (it.hasNext()) {
            if (((wp6) it.next()).c == this) {
                it.remove();
            }
        }
        Iterator it2 = bq6Var.f.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            up6 up6Var = (up6) entry.getValue();
            if (((wp6) ((Pair) up6Var).first).c == this) {
                up6Var.a((ServiceConnection) entry.getKey());
                it2.remove();
            }
        }
    }
}
