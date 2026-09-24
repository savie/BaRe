package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.g09;
import defpackage.i09;
import defpackage.k09;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class bg extends bm {
    final /* synthetic */ String a;
    final /* synthetic */ long b;
    final /* synthetic */ long c;
    final /* synthetic */ TaskCompletionSource d;
    final /* synthetic */ bn e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg(bn bnVar, TaskCompletionSource taskCompletionSource, int i, String str, long j, long j2, TaskCompletionSource taskCompletionSource2) {
        super(bnVar, taskCompletionSource);
        this.e = bnVar;
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = taskCompletionSource2;
    }

    @Override // defpackage.s09
    public final void b() {
        if (bn.k(this.e)) {
            a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            bn bnVar = this.e;
            k09 k09Var = (k09) bnVar.a.n;
            Bundle bundleA = bn.a(bnVar, this.a, this.b, this.c, 0);
            bk bkVar = new bk(this.e, this.d, this.b);
            i09 i09Var = (i09) k09Var;
            i09Var.getClass();
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(i09Var.c);
            int i = g09.a;
            parcelObtain.writeInt(1);
            bundleA.writeToParcel(parcelObtain, 0);
            parcelObtain.writeStrongBinder(bkVar);
            i09Var.a(parcelObtain, 3);
        } catch (RemoteException e) {
            this.e.b.a(e, "requestExpressIntegrityToken(%s, %s)", this.a, Long.valueOf(this.b));
            this.d.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
