package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zp6 extends BroadcastReceiver {
    public final Messenger a;
    public final /* synthetic */ bq6 b;

    public zp6(bq6 bq6Var) {
        this.b = bq6Var;
        this.a = new Messenger(new Handler(Looper.getMainLooper(), bq6Var));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        IBinder binder;
        b94 b94Var;
        bq6 bq6Var = this.b;
        ArrayList arrayList = bq6Var.d;
        Bundle bundleExtra = intent.getBundleExtra("extra.bundle");
        if (bundleExtra == null || (binder = bundleExtra.getBinder("binder")) == null) {
            return;
        }
        iq6 iq6Var = iq6.e;
        IInterface iInterfaceQueryLocalInterface = binder.queryLocalInterface("com.topjohnwu.superuser.internal.IRootServiceManager");
        if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b94)) {
            a94 a94Var = new a94();
            a94Var.a = binder;
            b94Var = a94Var;
        } else {
            b94Var = (b94) iInterfaceQueryLocalInterface;
        }
        try {
            b94Var.h(this.a.getBinder());
            vp6 vp6Var = new vp6(bq6Var, b94Var);
            if (intent.getBooleanExtra("extra.daemon", false)) {
                bq6Var.b = vp6Var;
                bq6Var.c &= -3;
            } else {
                bq6Var.a = vp6Var;
                bq6Var.c &= -2;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                rp6 rp6Var = (rp6) arrayList.get(size);
                if (rp6Var.a.b(rp6Var.b, rp6Var.c, rp6Var.d) == null) {
                    arrayList.remove(size);
                }
            }
        } catch (RemoteException e) {
            ji8.k("IPC", e);
        }
    }
}
