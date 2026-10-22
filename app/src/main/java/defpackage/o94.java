package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o94 extends az3 {
    @Override // defpackage.az3, defpackage.ne
    public final int f() {
        return 17895000;
    }

    @Override // defpackage.az3
    public final IInterface l(IBinder iBinder) {
        iBinder.getClass();
        int i = u74.b;
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
        return iInterfaceQueryLocalInterface instanceof v74 ? (v74) iInterfaceQueryLocalInterface : new t74(iBinder);
    }

    @Override // defpackage.az3
    public final y53[] n() {
        return cy0.i;
    }

    @Override // defpackage.az3
    public final String q() {
        return "com.google.android.gms.identitycredentials.internal.IIdentityCredentialService";
    }

    @Override // defpackage.az3
    public final String r() {
        return "com.google.android.gms.identitycredentials.service.START";
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
