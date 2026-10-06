package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import defpackage.cg8;
import defpackage.fg8;
import defpackage.gh;
import defpackage.h66;
import defpackage.ma;
import defpackage.oe0;
import defpackage.ya8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    public static final /* synthetic */ int a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        ya8.b(context);
        gh ghVarA = oe0.a();
        ghVarA.n(queryParameter);
        ghVarA.c = h66.b(iIntValue);
        if (queryParameter2 != null) {
            ghVarA.b = Base64.decode(queryParameter2, 0);
        }
        fg8 fg8Var = ya8.a().d;
        fg8Var.e.execute(new cg8(fg8Var, ghVarA.e(), i, new ma()));
    }
}
