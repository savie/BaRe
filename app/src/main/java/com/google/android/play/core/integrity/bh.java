package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.g09;
import defpackage.i09;
import defpackage.k09;
import defpackage.zz8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class bh extends bm {
    final /* synthetic */ Bundle a;
    final /* synthetic */ Activity b;
    final /* synthetic */ TaskCompletionSource c;
    final /* synthetic */ int d;
    final /* synthetic */ bn e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bh(bn bnVar, TaskCompletionSource taskCompletionSource, Bundle bundle, Activity activity, TaskCompletionSource taskCompletionSource2, int i) {
        super(bnVar, taskCompletionSource);
        this.e = bnVar;
        this.a = bundle;
        this.b = activity;
        this.c = taskCompletionSource2;
        this.d = i;
    }

    @Override // defpackage.s09
    public final void b() {
        if (bn.k(this.e)) {
            a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            bn bnVar = this.e;
            zz8 zz8Var = bnVar.a;
            k09 k09Var = (k09) zz8Var.n;
            Bundle bundle = this.a;
            as asVarA = bnVar.e.a(this.b, this.c, zz8Var);
            i09 i09Var = (i09) k09Var;
            i09Var.getClass();
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(i09Var.c);
            int i = g09.a;
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            parcelObtain.writeStrongBinder(asVarA);
            i09Var.a(parcelObtain, 6);
        } catch (RemoteException e) {
            this.e.b.a(e, "requestAndShowDialog(%s)", Integer.valueOf(this.d));
            this.c.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
