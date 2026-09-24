package defpackage;

import android.content.Context;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ih4 {
    public static final /* synthetic */ co4[] d;
    public final String a;
    public final ThreadLocal b;
    public final w36 c;

    static {
        c96 c96Var = new c96(uz0.NO_RECEIVER, ih4.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0);
        ph6.a.getClass();
        d = new co4[]{c96Var};
    }

    public ih4(Context context, String str) {
        w36 w36Var;
        context.getClass();
        this.a = str;
        this.b = new ThreadLocal();
        int i = 13;
        nh nhVar = new nh(new zs(this, 9), i);
        lm lmVar = new lm(this, i);
        rf2 rf2Var = cn2.a;
        se2 se2Var = se2.c;
        fs7 fs7VarA = zm5.a();
        se2Var.getClass();
        dv1 dv1VarC = l73.c(iz1.s(se2Var, fs7VarA));
        x36 x36Var = new x36(str, nhVar, lmVar, dv1VarC);
        d[0].getClass();
        w36 w36Var2 = x36Var.c;
        if (w36Var2 == null) {
            synchronized (x36Var.b) {
                try {
                    if (x36Var.c == null) {
                        Context applicationContext = context.getApplicationContext();
                        applicationContext.getClass();
                        List list = (List) lmVar.invoke(applicationContext);
                        dg1 dg1Var = new dg1(1, applicationContext, x36Var);
                        int i2 = 2;
                        x36Var.c = new w36(new w36(new ic2(new x93(us2.d, v93.a, new cg1(dg1Var, i2)), nc8.I(new o41(list, (jv1) null, i2)), nhVar, dv1VarC)));
                    }
                    w36Var = x36Var.c;
                    w36Var.getClass();
                } catch (Throwable th) {
                    throw th;
                }
            }
            w36Var2 = w36Var;
        }
        this.c = w36Var2;
    }
}
