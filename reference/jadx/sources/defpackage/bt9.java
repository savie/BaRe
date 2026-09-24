package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bt9 extends az3 {
    @Override // defpackage.az3, defpackage.ne
    public final int f() {
        return 13000000;
    }

    @Override // defpackage.az3
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fido.fido2.internal.regular.IFido2AppService");
        return iInterfaceQueryLocalInterface instanceof vu9 ? (vu9) iInterfaceQueryLocalInterface : new vu9(iBinder, "com.google.android.gms.fido.fido2.internal.regular.IFido2AppService");
    }

    @Override // defpackage.az3
    public final y53[] n() {
        return new y53[]{bb9.d, bb9.c};
    }

    @Override // defpackage.az3
    public final Bundle o() {
        Bundle bundle = new Bundle();
        bundle.putString("FIDO2_ACTION_START_SERVICE", "com.google.android.gms.fido.fido2.regular.START");
        return bundle;
    }

    @Override // defpackage.az3
    public final String q() {
        return "com.google.android.gms.fido.fido2.internal.regular.IFido2AppService";
    }

    @Override // defpackage.az3
    public final String r() {
        return "com.google.android.gms.fido.fido2.regular.START";
    }

    @Override // defpackage.az3
    public final boolean t() {
        return true;
    }
}
