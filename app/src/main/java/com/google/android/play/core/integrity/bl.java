package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.r09;
import defpackage.re;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class bl extends bi {
    final /* synthetic */ bn c;
    private final r09 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bl(bn bnVar, TaskCompletionSource taskCompletionSource) {
        super(bnVar, taskCompletionSource);
        this.c = bnVar;
        this.d = new r09("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.bi, defpackage.l09
    public final void e(Bundle bundle) throws RemoteException {
        super.e(bundle);
        this.d.b("onWarmUpExpressIntegrityToken", new Object[0]);
        re reVarA = this.c.f.a(bundle);
        TaskCompletionSource taskCompletionSource = this.a;
        if (reVarA != null) {
            taskCompletionSource.trySetException(reVarA);
        } else {
            taskCompletionSource.trySetResult(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
