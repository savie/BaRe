package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.e09;
import defpackage.zz8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class at {
    private final e09 a;
    private final e09 b;

    public at(e09 e09Var, e09 e09Var2) {
        this.a = e09Var;
        this.b = e09Var2;
    }

    public final as a(Activity activity, TaskCompletionSource taskCompletionSource, zz8 zz8Var) {
        Object objA = this.a.a();
        objA.getClass();
        k kVar = (k) this.b.a();
        kVar.getClass();
        activity.getClass();
        zz8Var.getClass();
        return new as((Context) objA, kVar, activity, taskCompletionSource, zz8Var);
    }
}
