package com.google.firebase.concurrent;

import com.google.firebase.components.ComponentRegistrar;
import defpackage.ak0;
import defpackage.bb9;
import defpackage.g84;
import defpackage.ht0;
import defpackage.ku4;
import defpackage.ld8;
import defpackage.m0;
import defpackage.nc6;
import defpackage.oo1;
import defpackage.ps4;
import defpackage.q;
import defpackage.sz2;
import defpackage.tn1;
import defpackage.tz2;
import defpackage.un1;
import defpackage.uz2;
import defpackage.x5;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {
    public static final ps4 a = new ps4(new sz2());
    public static final ps4 b = new ps4(new tz2());
    public static final ps4 c = new ps4(new oo1(1));
    public static final ps4 d = new ps4(new uz2());

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        nc6 nc6Var = new nc6(ak0.class, ScheduledExecutorService.class);
        nc6[] nc6VarArr = {new nc6(ak0.class, ExecutorService.class), new nc6(ak0.class, Executor.class)};
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(nc6Var);
        for (nc6 nc6Var2 : nc6VarArr) {
            bb9.m(nc6Var2, "Null interface");
        }
        Collections.addAll(hashSet, nc6VarArr);
        un1 un1Var = new un1(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new m0(), hashSet3);
        nc6 nc6Var3 = new nc6(ht0.class, ScheduledExecutorService.class);
        nc6[] nc6VarArr2 = {new nc6(ht0.class, ExecutorService.class), new nc6(ht0.class, Executor.class)};
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        HashSet hashSet6 = new HashSet();
        hashSet4.add(nc6Var3);
        for (nc6 nc6Var4 : nc6VarArr2) {
            bb9.m(nc6Var4, "Null interface");
        }
        Collections.addAll(hashSet4, nc6VarArr2);
        un1 un1Var2 = new un1(null, new HashSet(hashSet4), new HashSet(hashSet5), 0, 0, new q(9), hashSet6);
        nc6 nc6Var5 = new nc6(ku4.class, ScheduledExecutorService.class);
        nc6[] nc6VarArr3 = {new nc6(ku4.class, ExecutorService.class), new nc6(ku4.class, Executor.class)};
        HashSet hashSet7 = new HashSet();
        HashSet hashSet8 = new HashSet();
        HashSet hashSet9 = new HashSet();
        hashSet7.add(nc6Var5);
        for (nc6 nc6Var6 : nc6VarArr3) {
            bb9.m(nc6Var6, "Null interface");
        }
        Collections.addAll(hashSet7, nc6VarArr3);
        un1 un1Var3 = new un1(null, new HashSet(hashSet7), new HashSet(hashSet8), 0, 0, new x5(), hashSet9);
        tn1 tn1VarA = un1.a(new nc6(ld8.class, Executor.class));
        tn1VarA.f = new g84();
        return Arrays.asList(un1Var, un1Var2, un1Var3, tn1VarA.b());
    }
}
