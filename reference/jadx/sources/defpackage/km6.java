package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class km6 extends az3 {
    @Override // defpackage.az3, defpackage.ne
    public final int f() {
        return 17895000;
    }

    @Override // defpackage.az3
    public final IInterface l(IBinder iBinder) {
        iBinder.getClass();
        int i = v84.b;
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService");
        return iInterfaceQueryLocalInterface instanceof w84 ? (w84) iInterfaceQueryLocalInterface : new u84(iBinder);
    }

    @Override // defpackage.az3
    public final y53[] n() {
        return jb9.L;
    }

    @Override // defpackage.az3
    public final String q() {
        return "com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService";
    }

    @Override // defpackage.az3
    public final String r() {
        return "com.google.android.gms.auth.blockstore.restorecredential.service.START_RESTORE_CRED";
    }

    @Override // defpackage.az3
    public final boolean s() {
        return true;
    }
}
