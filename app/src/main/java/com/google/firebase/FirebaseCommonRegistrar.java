package com.google.firebase;

import android.content.Context;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.ak0;
import defpackage.ep4;
import defpackage.fg2;
import defpackage.g84;
import defpackage.ji2;
import defpackage.l0;
import defpackage.lb;
import defpackage.nc6;
import defpackage.ne2;
import defpackage.q34;
import defpackage.r34;
import defpackage.s34;
import defpackage.tn1;
import defpackage.un1;
import defpackage.vm4;
import defpackage.wd0;
import defpackage.x5;
import defpackage.y5;
import defpackage.z5;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    public static String a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        String str;
        ArrayList arrayList = new ArrayList();
        tn1 tn1VarB = un1.b(fg2.class);
        tn1VarB.a(new ji2(2, 0, wd0.class));
        tn1VarB.f = new l0(7);
        arrayList.add(tn1VarB.b());
        nc6 nc6Var = new nc6(ak0.class, Executor.class);
        tn1 tn1Var = new tn1(ne2.class, new Class[]{r34.class, s34.class});
        tn1Var.a(ji2.b(Context.class));
        tn1Var.a(ji2.b(FirebaseApp.class));
        tn1Var.a(new ji2(2, 0, q34.class));
        tn1Var.a(new ji2(1, 1, fg2.class));
        tn1Var.a(new ji2(nc6Var, 1, 0));
        tn1Var.f = new lb(nc6Var);
        arrayList.add(tn1Var.b());
        arrayList.add(vm4.h("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(vm4.h("fire-core", "22.0.1"));
        arrayList.add(vm4.h("device-name", a(Build.PRODUCT)));
        arrayList.add(vm4.h("device-model", a(Build.DEVICE)));
        arrayList.add(vm4.h("device-brand", a(Build.BRAND)));
        arrayList.add(vm4.j("android-target-sdk", new x5()));
        arrayList.add(vm4.j("android-min-sdk", new g84()));
        arrayList.add(vm4.j("android-platform", new y5(6)));
        arrayList.add(vm4.j("android-installer", new z5(9)));
        try {
            ep4.b.getClass();
            str = "2.3.0";
        } catch (NoClassDefFoundError unused) {
            str = null;
        }
        if (str != null) {
            arrayList.add(vm4.h("kotlin", str));
        }
        return arrayList;
    }
}
