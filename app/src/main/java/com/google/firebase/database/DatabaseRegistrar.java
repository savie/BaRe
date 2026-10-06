package com.google.firebase.database;

import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.a6;
import defpackage.ae4;
import defpackage.jg3;
import defpackage.ji2;
import defpackage.jo1;
import defpackage.ne4;
import defpackage.tn1;
import defpackage.un1;
import defpackage.vm4;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DatabaseRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-rtdb";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ jg3 lambda$getComponents$0(jo1 jo1Var) {
        return new jg3((FirebaseApp) jo1Var.b(FirebaseApp.class), jo1Var.h(ae4.class), jo1Var.h(ne4.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<un1> getComponents() {
        tn1 tn1VarB = un1.b(jg3.class);
        tn1VarB.a = LIBRARY_NAME;
        tn1VarB.a(ji2.b(FirebaseApp.class));
        tn1VarB.a(new ji2(0, 2, ae4.class));
        tn1VarB.a(new ji2(0, 2, ne4.class));
        tn1VarB.f = new a6(5);
        return Arrays.asList(tn1VarB.b(), vm4.h(LIBRARY_NAME, "22.0.1"));
    }
}
