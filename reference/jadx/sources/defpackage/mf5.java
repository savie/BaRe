package defpackage;

import android.content.Context;
import com.google.android.datatransport.cct.CctBackendFactory;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mf5 {
    public final ib a;
    public final l22 b;
    public final HashMap c;

    public mf5(Context context, l22 l22Var) {
        ib ibVar = new ib(context);
        this.c = new HashMap();
        this.a = ibVar;
        this.b = l22Var;
    }

    public final synchronized ua8 a(String str) {
        if (this.c.containsKey(str)) {
            return (ua8) this.c.get(str);
        }
        CctBackendFactory cctBackendFactoryE = this.a.e(str);
        if (cctBackendFactoryE == null) {
            return null;
        }
        l22 l22Var = this.b;
        ua8 ua8VarCreate = cctBackendFactoryE.create(new hd0((Context) l22Var.b, (ba1) l22Var.c, (ba1) l22Var.d, str));
        this.c.put(str, ua8VarCreate);
        return ua8VarCreate;
    }
}
