package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.l09;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class bi extends l09 {
    final TaskCompletionSource a;
    final /* synthetic */ bn b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bi(bn bnVar, TaskCompletionSource taskCompletionSource) {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
        this.b = bnVar;
        this.a = taskCompletionSource;
    }

    @Override // defpackage.l09
    public final void b(Bundle bundle) throws RemoteException {
        this.b.a.d(this.a);
    }

    @Override // defpackage.l09
    public void c(Bundle bundle) throws RemoteException {
        this.b.a.d(this.a);
    }

    @Override // defpackage.l09
    public final void d(Bundle bundle) throws RemoteException {
        this.b.a.d(this.a);
    }

    @Override // defpackage.l09
    public void e(Bundle bundle) throws RemoteException {
        this.b.a.d(this.a);
    }
}
