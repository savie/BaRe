package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.az1;
import defpackage.ji2;
import defpackage.tn1;
import defpackage.un1;
import defpackage.vm4;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsNdkRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        tn1 tn1VarB = un1.b(az1.class);
        tn1VarB.a = "fire-cls-ndk";
        tn1VarB.a(ji2.b(Context.class));
        tn1VarB.f = new a();
        tn1VarB.c();
        return Arrays.asList(tn1VarB.b(), vm4.h("fire-cls-ndk", "20.0.6"));
    }
}
