package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class if7 extends az3 {
    public final Bundle A;
    public final Integer B;
    public final boolean y;
    public final z91 z;

    public if7(Context context, Looper looper, z91 z91Var, Bundle bundle, nz3 nz3Var, oz3 oz3Var) {
        super(context, looper, 44, z91Var, nz3Var, oz3Var, 0);
        this.y = true;
        this.z = z91Var;
        this.A = bundle;
        this.B = z91Var.f;
    }

    @Override // defpackage.az3, defpackage.ne
    public final int f() {
        return 12451000;
    }

    @Override // defpackage.az3, defpackage.ne
    public final boolean j() {
        return this.y;
    }

    @Override // defpackage.az3
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof w19 ? (w19) iInterfaceQueryLocalInterface : new w19(iBinder, "com.google.android.gms.signin.internal.ISignInService", 1);
    }

    @Override // defpackage.az3
    public final Bundle o() {
        z91 z91Var = this.z;
        boolean zEquals = this.c.getPackageName().equals(z91Var.c);
        Bundle bundle = this.A;
        if (!zEquals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", z91Var.c);
        }
        return bundle;
    }

    @Override // defpackage.az3
    public final String q() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // defpackage.az3
    public final String r() {
        return "com.google.android.gms.signin.service.START";
    }
}
