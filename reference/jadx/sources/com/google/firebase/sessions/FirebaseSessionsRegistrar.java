package com.google.firebase.sessions;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.ak0;
import defpackage.ao2;
import defpackage.c6;
import defpackage.ca6;
import defpackage.cd;
import defpackage.d6;
import defpackage.dh3;
import defpackage.fl1;
import defpackage.fu;
import defpackage.ga6;
import defpackage.gh;
import defpackage.gp1;
import defpackage.h80;
import defpackage.ht0;
import defpackage.id4;
import defpackage.iz1;
import defpackage.j75;
import defpackage.ji2;
import defpackage.jo1;
import defpackage.jq6;
import defpackage.nc6;
import defpackage.nz4;
import defpackage.o92;
import defpackage.od2;
import defpackage.ox1;
import defpackage.qg3;
import defpackage.rb;
import defpackage.rx1;
import defpackage.tn1;
import defpackage.u00;
import defpackage.un1;
import defpackage.vm4;
import defpackage.wa8;
import defpackage.wc9;
import defpackage.xt1;
import defpackage.yf1;
import defpackage.yg3;
import defpackage.zg3;
import defpackage.zq8;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {

    @Deprecated
    public static final String LIBRARY_NAME = "fire-sessions";
    private static final dh3 Companion = new dh3();
    private static final nc6 appContext = nc6.a(Context.class);
    private static final nc6 firebaseApp = nc6.a(FirebaseApp.class);
    private static final nc6 firebaseInstallationsApi = nc6.a(qg3.class);
    private static final nc6 backgroundDispatcher = new nc6(ak0.class, rx1.class);
    private static final nc6 blockingDispatcher = new nc6(ht0.class, rx1.class);
    private static final nc6 transportFactory = nc6.a(wa8.class);
    private static final nc6 firebaseSessionsComponent = nc6.a(zg3.class);

    /* JADX INFO: Access modifiers changed from: private */
    public static final yg3 getComponents$lambda$0(jo1 jo1Var) {
        return (yg3) ((o92) ((zg3) jo1Var.g(firebaseSessionsComponent))).p.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final zg3 getComponents$lambda$1(jo1 jo1Var) {
        Object objG = jo1Var.g(appContext);
        objG.getClass();
        Object objG2 = jo1Var.g(backgroundDispatcher);
        objG2.getClass();
        Object objG3 = jo1Var.g(blockingDispatcher);
        objG3.getClass();
        Object objG4 = jo1Var.g(firebaseApp);
        objG4.getClass();
        Object objG5 = jo1Var.g(firebaseInstallationsApi);
        objG5.getClass();
        ga6 ga6VarF = jo1Var.f(transportFactory);
        ga6VarF.getClass();
        o92 o92Var = new o92();
        o92Var.a = id4.b((FirebaseApp) objG4);
        id4 id4VarB = id4.b((Context) objG);
        o92Var.b = id4VarB;
        o92Var.c = ao2.a(new fu(id4VarB));
        o92Var.d = ao2.a(iz1.b);
        o92Var.e = id4.b((qg3) objG5);
        o92Var.f = ao2.a(new zq8(o92Var.a, 10));
        id4 id4VarB2 = id4.b((ox1) objG3);
        o92Var.g = id4VarB2;
        int i = 7;
        o92Var.h = ao2.a(new wc9(i, o92Var.f, id4VarB2));
        o92Var.i = id4.b((ox1) objG2);
        ca6 ca6VarA = ao2.a(new nz4(o92Var.d, o92Var.e, o92Var.f, o92Var.h, ao2.a(new u00(i, o92Var.i, o92Var.d, ao2.a(new yf1(6, o92Var.b, o92Var.g)))), 4));
        int i2 = 11;
        o92Var.j = ao2.a(new yf1(i2, o92Var.c, ca6VarA));
        ca6 ca6VarA2 = ao2.a(od2.d);
        o92Var.k = ca6VarA2;
        o92Var.l = ao2.a(new h80((Object) o92Var.d, (Object) ca6VarA2, 14, false));
        o92Var.m = ao2.a(new gp1(o92Var.a, o92Var.e, o92Var.j, ao2.a(new jq6(id4.b(ga6VarF), i2)), o92Var.i));
        o92Var.n = ao2.a(new gh(o92Var.b, o92Var.g, ao2.a(new rb(o92Var.l, 22))));
        ca6 ca6VarA3 = ao2.a(new j75(o92Var.j, o92Var.l, o92Var.m, o92Var.d, o92Var.n, ao2.a(new cd(12, o92Var.b, o92Var.k)), o92Var.i));
        o92Var.o = ca6VarA3;
        ca6 ca6VarA4 = ao2.a(new zq8(ca6VarA3, 17));
        id4 id4Var = o92Var.a;
        ca6 ca6Var = o92Var.j;
        id4 id4Var2 = o92Var.i;
        xt1 xt1Var = new xt1();
        xt1Var.a = id4Var;
        xt1Var.b = ca6Var;
        xt1Var.c = id4Var2;
        xt1Var.d = ca6VarA4;
        o92Var.p = ao2.a(xt1Var);
        return o92Var;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<un1> getComponents() {
        tn1 tn1VarB = un1.b(yg3.class);
        tn1VarB.a = LIBRARY_NAME;
        tn1VarB.a(ji2.a(firebaseSessionsComponent));
        tn1VarB.f = new c6(6);
        tn1VarB.c();
        un1 un1VarB = tn1VarB.b();
        tn1 tn1VarB2 = un1.b(zg3.class);
        tn1VarB2.a = "fire-sessions-component";
        tn1VarB2.a(ji2.a(appContext));
        tn1VarB2.a(ji2.a(backgroundDispatcher));
        tn1VarB2.a(ji2.a(blockingDispatcher));
        tn1VarB2.a(ji2.a(firebaseApp));
        tn1VarB2.a(ji2.a(firebaseInstallationsApi));
        tn1VarB2.a(new ji2(transportFactory, 1, 1));
        tn1VarB2.f = new d6();
        return fl1.A0(un1VarB, tn1VarB2.b(), vm4.h(LIBRARY_NAME, "3.0.6"));
    }
}
