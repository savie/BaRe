package com.google.firebase.datatransport;

import android.content.Context;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.a6;
import defpackage.b6;
import defpackage.c6;
import defpackage.ft4;
import defpackage.ji2;
import defpackage.jo1;
import defpackage.nc6;
import defpackage.oy0;
import defpackage.ta8;
import defpackage.tn1;
import defpackage.un1;
import defpackage.vm4;
import defpackage.wa8;
import defpackage.ya8;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ wa8 lambda$getComponents$0(jo1 jo1Var) {
        ya8.b((Context) jo1Var.b(Context.class));
        return ya8.a().c(oy0.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ wa8 lambda$getComponents$1(jo1 jo1Var) {
        ya8.b((Context) jo1Var.b(Context.class));
        return ya8.a().c(oy0.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ wa8 lambda$getComponents$2(jo1 jo1Var) {
        ya8.b((Context) jo1Var.b(Context.class));
        return ya8.a().c(oy0.e);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<un1> getComponents() {
        tn1 tn1VarB = un1.b(wa8.class);
        tn1VarB.a = LIBRARY_NAME;
        tn1VarB.a(ji2.b(Context.class));
        tn1VarB.f = new a6(11);
        un1 un1VarB = tn1VarB.b();
        tn1 tn1VarA = un1.a(new nc6(ft4.class, wa8.class));
        tn1VarA.a(ji2.b(Context.class));
        tn1VarA.f = new b6(10);
        un1 un1VarB2 = tn1VarA.b();
        tn1 tn1VarA2 = un1.a(new nc6(ta8.class, wa8.class));
        tn1VarA2.a(ji2.b(Context.class));
        tn1VarA2.f = new c6(16);
        return Arrays.asList(un1VarB, un1VarB2, tn1VarA2.b(), vm4.h(LIBRARY_NAME, "19.0.0"));
    }
}
