package com.google.firebase;

import com.google.firebase.components.ComponentRegistrar;
import defpackage.ak0;
import defpackage.fl1;
import defpackage.ge;
import defpackage.ht0;
import defpackage.ji2;
import defpackage.ku4;
import defpackage.ld8;
import defpackage.lv1;
import defpackage.ma2;
import defpackage.nc6;
import defpackage.q34;
import defpackage.rx1;
import defpackage.tn1;
import defpackage.un1;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<un1> getComponents() {
        tn1 tn1VarA = un1.a(new nc6(ak0.class, rx1.class));
        tn1VarA.a(new ji2(new nc6(ak0.class, Executor.class), 1, 0));
        tn1VarA.f = q34.b;
        un1 un1VarB = tn1VarA.b();
        tn1 tn1VarA2 = un1.a(new nc6(ku4.class, rx1.class));
        tn1VarA2.a(new ji2(new nc6(ku4.class, Executor.class), 1, 0));
        tn1VarA2.f = ma2.b;
        un1 un1VarB2 = tn1VarA2.b();
        tn1 tn1VarA3 = un1.a(new nc6(ht0.class, rx1.class));
        tn1VarA3.a(new ji2(new nc6(ht0.class, Executor.class), 1, 0));
        tn1VarA3.f = lv1.d;
        un1 un1VarB3 = tn1VarA3.b();
        tn1 tn1VarA4 = un1.a(new nc6(ld8.class, rx1.class));
        tn1VarA4.a(new ji2(new nc6(ld8.class, Executor.class), 1, 0));
        tn1VarA4.f = ge.c;
        return fl1.A0(un1VarB, un1VarB2, un1VarB3, tn1VarA4.b());
    }
}
