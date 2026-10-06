package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a39 extends az3 {
    public final b39 y;

    public a39(Context context, Looper looper, z91 z91Var, b39 b39Var, g19 g19Var, g19 g19Var2) {
        super(context, looper, 68, z91Var, g19Var, g19Var2, 0);
        b39Var = b39Var == null ? b39.c : b39Var;
        ib ibVar = new ib(15);
        ibVar.b = Boolean.FALSE;
        ibVar.b = Boolean.valueOf(b39Var.a);
        ibVar.c = b39Var.b;
        ibVar.c = w29.a();
        this.y = new b39(ibVar);
    }

    @Override // defpackage.az3, defpackage.ne
    public final int f() {
        return 12800000;
    }

    @Override // defpackage.az3
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return iInterfaceQueryLocalInterface instanceof d39 ? (d39) iInterfaceQueryLocalInterface : new d39(iBinder, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService", 2);
    }

    @Override // defpackage.az3
    public final Bundle o() {
        b39 b39Var = this.y;
        b39Var.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", null);
        bundle.putBoolean("force_save_dialog", b39Var.a);
        bundle.putString("log_session_id", b39Var.b);
        return bundle;
    }

    @Override // defpackage.az3
    public final String q() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // defpackage.az3
    public final String r() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }
}
