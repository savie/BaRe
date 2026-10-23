package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v29 extends az3 {
    public final Bundle y;

    public v29(Context context, Looper looper, z91 z91Var, g19 g19Var, g19 g19Var2) {
        super(context, looper, 212, z91Var, g19Var, g19Var2, 0);
        this.y = new Bundle();
    }

    @Override // defpackage.az3, defpackage.ne
    public final int f() {
        return 17895000;
    }

    @Override // defpackage.az3
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.identity.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof n39 ? (n39) iInterfaceQueryLocalInterface : new n39(iBinder, "com.google.android.gms.auth.api.identity.internal.ISignInService", 2);
    }

    @Override // defpackage.az3
    public final y53[] n() {
        return sz8.e;
    }

    @Override // defpackage.az3
    public final Bundle o() {
        return this.y;
    }

    @Override // defpackage.az3
    public final String q() {
        return "com.google.android.gms.auth.api.identity.internal.ISignInService";
    }

    @Override // defpackage.az3
    public final String r() {
        return "com.google.android.gms.auth.api.identity.service.signin.START";
    }

    @Override // defpackage.az3
    public final boolean s() {
        return true;
    }

    @Override // defpackage.az3
    public final boolean t() {
        return true;
    }
}
