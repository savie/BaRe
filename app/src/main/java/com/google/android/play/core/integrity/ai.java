package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.p09;
import defpackage.r09;
import defpackage.re;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class ai extends p09 {
    final /* synthetic */ aj a;
    private final r09 b;
    private final TaskCompletionSource c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ai(aj ajVar, TaskCompletionSource taskCompletionSource) {
        super("com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback");
        this.a = ajVar;
        this.b = new r09("OnRequestIntegrityTokenCallback");
        this.c = taskCompletionSource;
    }

    @Override // defpackage.p09
    public final void b(Bundle bundle) {
        this.a.a.d(this.c);
        this.b.b("onRequestIntegrityToken", new Object[0]);
        re reVarA = this.a.e.a(bundle);
        if (reVarA != null) {
            this.c.trySetException(reVarA);
            return;
        }
        String string = bundle.getString("token");
        if (string == null) {
            this.c.trySetException(new IntegrityServiceException(-100, null));
            return;
        }
        ah ahVar = new ah(this, this.a.c, bundle.getLong("request.token.sid"));
        TaskCompletionSource taskCompletionSource = this.c;
        a aVar = new a();
        aVar.b(string);
        aVar.a(ahVar);
        taskCompletionSource.trySetResult(aVar.c());
    }
}
