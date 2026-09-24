package com.google.android.play.core.integrity;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.b09;
import defpackage.r09;
import defpackage.s09;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class be extends s09 {
    final /* synthetic */ Context a;
    final /* synthetic */ bn b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be(bn bnVar, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.b = bnVar;
        this.a = context;
    }

    @Override // defpackage.s09
    public final void b() {
        int i;
        Context context = this.a;
        TaskCompletionSource taskCompletionSource = this.b.d;
        r09 r09Var = b09.a;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.android.vending", 64);
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            i = (applicationInfo != null && applicationInfo.enabled && b09.a(packageInfo.signatures)) ? packageInfo.versionCode : 0;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        taskCompletionSource.trySetResult(Integer.valueOf(i));
    }
}
