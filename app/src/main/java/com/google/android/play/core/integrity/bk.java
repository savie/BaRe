package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.r09;
import defpackage.re;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class bk extends bi {
    final /* synthetic */ bn c;
    private final r09 d;
    private final long e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk(bn bnVar, TaskCompletionSource taskCompletionSource, long j) {
        super(bnVar, taskCompletionSource);
        this.c = bnVar;
        this.d = new r09("OnRequestIntegrityTokenCallback");
        this.e = j;
    }

    @Override // com.google.android.play.core.integrity.bi, defpackage.l09
    public final void c(Bundle bundle) throws RemoteException {
        super.c(bundle);
        this.d.b("onRequestExpressIntegrityToken", new Object[0]);
        re reVarA = this.c.f.a(bundle);
        if (reVarA != null) {
            this.a.trySetException(reVarA);
            return;
        }
        bj bjVar = new bj(this, this.c.c, bundle.getLong("request.token.sid"));
        TaskCompletionSource taskCompletionSource = this.a;
        b bVar = new b();
        bVar.b(bundle.getString("token"));
        bVar.a(bjVar);
        taskCompletionSource.trySetResult(bVar.c());
    }
}
