package com.google.firebase.crashlytics;

import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.ab;
import defpackage.ah3;
import defpackage.ak0;
import defpackage.az1;
import defpackage.ch3;
import defpackage.h97;
import defpackage.ht0;
import defpackage.ji2;
import defpackage.ku4;
import defpackage.nc6;
import defpackage.qg3;
import defpackage.sn1;
import defpackage.tn1;
import defpackage.un1;
import defpackage.vg3;
import defpackage.vm4;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {
    public static final /* synthetic */ int d = 0;
    public final nc6 a = new nc6(ak0.class, ExecutorService.class);
    public final nc6 b = new nc6(ht0.class, ExecutorService.class);
    public final nc6 c = new nc6(ku4.class, ExecutorService.class);

    static {
        Map map = ch3.b;
        h97 h97Var = h97.a;
        if (map.containsKey(h97Var)) {
            Log.d("FirebaseSessions", "Dependency " + h97Var + " already added.");
            return;
        }
        map.put(h97Var, new ah3(new CountDownLatch(1)));
        Log.d("FirebaseSessions", "Dependency to " + h97Var + " added.");
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        tn1 tn1VarB = un1.b(FirebaseCrashlytics.class);
        tn1VarB.a = "fire-cls";
        tn1VarB.a(ji2.b(FirebaseApp.class));
        tn1VarB.a(ji2.b(qg3.class));
        tn1VarB.a(new ji2(this.a, 1, 0));
        tn1VarB.a(new ji2(this.b, 1, 0));
        tn1VarB.a(new ji2(this.c, 1, 0));
        tn1VarB.a(new ji2(0, 2, az1.class));
        tn1VarB.a(new ji2(0, 2, ab.class));
        tn1VarB.a(new ji2(0, 2, vg3.class));
        tn1VarB.f = new sn1(this, 2);
        tn1VarB.c();
        return Arrays.asList(tn1VarB.b(), vm4.h("fire-cls", "20.0.6"));
    }
}
