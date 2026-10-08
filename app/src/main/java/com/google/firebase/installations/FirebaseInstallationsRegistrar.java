package com.google.firebase.installations;

import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.ak0;
import defpackage.b6;
import defpackage.ht0;
import defpackage.ji2;
import defpackage.jo1;
import defpackage.nc6;
import defpackage.o77;
import defpackage.pg3;
import defpackage.q34;
import defpackage.qg3;
import defpackage.r34;
import defpackage.rn1;
import defpackage.tn1;
import defpackage.un1;
import defpackage.vm4;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static qg3 lambda$getComponents$0(jo1 jo1Var) {
        return new pg3((FirebaseApp) jo1Var.b(FirebaseApp.class), jo1Var.c(r34.class), (ExecutorService) jo1Var.g(new nc6(ak0.class, ExecutorService.class)), new o77((Executor) jo1Var.g(new nc6(ht0.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<un1> getComponents() {
        tn1 tn1VarB = un1.b(qg3.class);
        tn1VarB.a = LIBRARY_NAME;
        tn1VarB.a(ji2.b(FirebaseApp.class));
        int i = 0;
        tn1VarB.a(new ji2(0, 1, r34.class));
        tn1VarB.a(new ji2(new nc6(ak0.class, ExecutorService.class), 1, 0));
        tn1VarB.a(new ji2(new nc6(ht0.class, Executor.class), 1, 0));
        tn1VarB.f = new b6(5);
        un1 un1VarB = tn1VarB.b();
        q34 q34Var = new q34(i);
        tn1 tn1VarB2 = un1.b(q34.class);
        tn1VarB2.e = 1;
        tn1VarB2.f = new rn1(q34Var, i);
        return Arrays.asList(un1VarB, tn1VarB2.b(), vm4.h(LIBRARY_NAME, "19.1.0"));
    }
}
