package com.google.firebase.auth;

import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.ae4;
import defpackage.ak0;
import defpackage.ht0;
import defpackage.ji2;
import defpackage.jo1;
import defpackage.ku4;
import defpackage.ld8;
import defpackage.nc6;
import defpackage.ne4;
import defpackage.o49;
import defpackage.q34;
import defpackage.r34;
import defpackage.rn1;
import defpackage.t54;
import defpackage.tn1;
import defpackage.un1;
import defpackage.vm4;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseAuthRegistrar implements ComponentRegistrar {
    public static /* synthetic */ o49 lambda$getComponents$0(nc6 nc6Var, nc6 nc6Var2, nc6 nc6Var3, nc6 nc6Var4, nc6 nc6Var5, jo1 jo1Var) {
        return new o49((FirebaseApp) jo1Var.b(FirebaseApp.class), jo1Var.c(ne4.class), jo1Var.c(r34.class), (Executor) jo1Var.g(nc6Var), (Executor) jo1Var.g(nc6Var2), (Executor) jo1Var.g(nc6Var3), (ScheduledExecutorService) jo1Var.g(nc6Var4), (Executor) jo1Var.g(nc6Var5));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<un1> getComponents() {
        nc6 nc6Var = new nc6(ak0.class, Executor.class);
        nc6 nc6Var2 = new nc6(ht0.class, Executor.class);
        nc6 nc6Var3 = new nc6(ku4.class, Executor.class);
        nc6 nc6Var4 = new nc6(ku4.class, ScheduledExecutorService.class);
        nc6 nc6Var5 = new nc6(ld8.class, Executor.class);
        tn1 tn1Var = new tn1(o49.class, new Class[]{ae4.class});
        tn1Var.a(ji2.b(FirebaseApp.class));
        tn1Var.a(new ji2(1, 1, r34.class));
        tn1Var.a(new ji2(nc6Var, 1, 0));
        tn1Var.a(new ji2(nc6Var2, 1, 0));
        tn1Var.a(new ji2(nc6Var3, 1, 0));
        tn1Var.a(new ji2(nc6Var4, 1, 0));
        tn1Var.a(new ji2(nc6Var5, 1, 0));
        tn1Var.a(new ji2(0, 1, ne4.class));
        t54 t54Var = new t54();
        t54Var.a = nc6Var;
        t54Var.b = nc6Var2;
        t54Var.c = nc6Var3;
        t54Var.d = nc6Var4;
        t54Var.e = nc6Var5;
        tn1Var.f = t54Var;
        un1 un1VarB = tn1Var.b();
        q34 q34Var = new q34(0);
        tn1 tn1VarB = un1.b(q34.class);
        tn1VarB.e = 1;
        tn1VarB.f = new rn1(q34Var, 0);
        return Arrays.asList(un1VarB, tn1VarB.b(), vm4.h("fire-auth", "24.1.0"));
    }
}
