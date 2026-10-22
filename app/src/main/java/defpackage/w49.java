package defpackage;

import com.google.firebase.FirebaseApp;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w49 {
    public static final u50 b = new u50("FirebaseAuth", "FirebaseAuthFallback:");
    public final ke a;

    public w49(FirebaseApp firebaseApp, ScheduledExecutorService scheduledExecutorService) {
        ly8.h(firebaseApp);
        ly8.h(firebaseApp.getApplicationContext());
        this.a = new ke(new g59(firebaseApp, j15.g()), 18);
        new p59(scheduledExecutorService);
    }

    public final void a(nh nhVar, v49 v49Var) {
        ly8.h(v49Var);
        ly8.h(nhVar);
        n69 n69VarU = ly8.U((xz5) nhVar.b);
        yf1 yf1Var = new yf1(v49Var, b);
        ke keVar = this.a;
        keVar.getClass();
        g59 g59Var = (g59) keVar.b;
        ro roVar = new ro(keVar, yf1Var);
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/verifyPhoneNumber", g59Var.f), n69VarU, roVar, new m69(), (xt1) d59Var.b);
    }

    public final void b(u59 u59Var, v49 v49Var) {
        ly8.h(v49Var);
        ly8.h(u59Var.c);
        au2 au2Var = u59Var.c;
        String str = u59Var.e;
        yf1 yf1Var = new yf1(v49Var, b);
        ke keVar = this.a;
        keVar.getClass();
        ly8.h(au2Var);
        if (au2Var.e) {
            keVar.r(au2Var.d, new ju7(keVar, au2Var, str, yf1Var));
        } else {
            keVar.s(new u59(au2Var, null, str), yf1Var);
        }
    }

    public final void c(j69 j69Var, v49 v49Var) {
        ly8.h(j69Var);
        ly8.h(v49Var);
        yf1 yf1Var = new yf1(v49Var, b);
        ke keVar = this.a;
        keVar.getClass();
        j69Var.G = true;
        g59 g59Var = (g59) keVar.b;
        ib ibVar = new ib(keVar, yf1Var);
        g59Var.getClass();
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/verifyAssertion", g59Var.f), j69Var, ibVar, new k69(), (xt1) d59Var.b);
    }

    public final void d(String str, String str2, String str3, String str4, v49 v49Var) {
        ly8.e(str);
        ly8.e(str2);
        ly8.h(v49Var);
        yf1 yf1Var = new yf1(v49Var, b);
        ke keVar = this.a;
        keVar.getClass();
        ly8.e(str);
        ly8.e(str2);
        k90 k90Var = new k90(str, str2, str3, str4);
        g59 g59Var = (g59) keVar.b;
        w00 w00Var = new w00(keVar, yf1Var);
        g59Var.getClass();
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/verifyPassword", g59Var.f), k90Var, w00Var, new l69(), (xt1) d59Var.b);
    }
}
