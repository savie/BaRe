package com.google.android.play.core.integrity;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import defpackage.q09;
import defpackage.r09;
import defpackage.re;
import defpackage.zz8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class as extends q09 {
    final TaskCompletionSource a;
    final zz8 b;
    private final r09 c;
    private final String d;
    private final k e;
    private final Activity f;

    public as(Context context, k kVar, Activity activity, TaskCompletionSource taskCompletionSource, zz8 zz8Var) {
        super("com.google.android.play.core.integrity.protocol.IRequestDialogCallback");
        this.c = new r09("RequestDialogCallbackImpl");
        this.d = context.getPackageName();
        this.e = kVar;
        this.a = taskCompletionSource;
        this.f = activity;
        this.b = zz8Var;
    }

    @Override // defpackage.q09
    public final void b(Bundle bundle) {
        this.b.d(this.a);
        this.c.b("onRequestDialog(%s)", this.d);
        re reVarA = this.e.a(bundle);
        if (reVarA != null) {
            this.a.trySetException(reVarA);
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("dialog.intent");
        if (pendingIntent == null) {
            r09 r09Var = this.c;
            Object[] objArr = {this.d};
            r09Var.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", r09.c(r09Var.a, "onRequestDialog(%s): got null dialog intent", objArr));
            }
            this.a.trySetResult(0);
            return;
        }
        Intent intent = new Intent(this.f, (Class<?>) PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", pendingIntent);
        intent.setFlags(536870912);
        intent.putExtra("result_receiver", new ar(this, this.b.a()));
        r09 r09Var2 = this.c;
        Object[] objArr2 = new Object[0];
        r09Var2.getClass();
        if (Log.isLoggable("PlayCore", 3)) {
            Log.d("PlayCore", r09.c(r09Var2.a, "Starting dialog intent...", objArr2));
        }
        this.f.startActivityForResult(intent, 0);
    }
}
