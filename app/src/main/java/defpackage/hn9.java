package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hn9 extends az3 {
    @Override // defpackage.az3, defpackage.ne
    public final void b(String str) {
        Log.w("GoogleAuthSvcClientImpl", "GoogleAuthServiceClientImpl disconnected with reason: ".concat(str));
        super.b(str);
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
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.account.data.IGoogleAuthService");
        return iInterfaceQueryLocalInterface instanceof at9 ? (at9) iInterfaceQueryLocalInterface : new at9(iBinder, "com.google.android.gms.auth.account.data.IGoogleAuthService", 3);
    }

    @Override // defpackage.az3
    public final y53[] n() {
        return new y53[]{zv1.i, zv1.h, zv1.g};
    }

    @Override // defpackage.az3
    public final String q() {
        return "com.google.android.gms.auth.account.data.IGoogleAuthService";
    }

    @Override // defpackage.az3
    public final String r() {
        return "com.google.android.gms.auth.account.authapi.START";
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
