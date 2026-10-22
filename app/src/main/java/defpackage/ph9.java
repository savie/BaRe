package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ph9 extends t39 {
    public final IBinder g;
    public final /* synthetic */ az3 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ph9(az3 az3Var, int i, IBinder iBinder, Bundle bundle) {
        super(az3Var, i, bundle);
        this.h = az3Var;
        this.g = iBinder;
    }

    @Override // defpackage.t39
    public final boolean a() {
        IBinder iBinder = this.g;
        try {
            ly8.h(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            az3 az3Var = this.h;
            if (!az3Var.q().equals(interfaceDescriptor)) {
                String strQ = az3Var.q();
                Log.w("GmsClient", eq3.o(new StringBuilder(strQ.length() + 34 + String.valueOf(interfaceDescriptor).length()), "service descriptor mismatch: ", strQ, " vs. ", interfaceDescriptor));
                return false;
            }
            IInterface iInterfaceL = az3Var.l(iBinder);
            if (iInterfaceL == null || !(az3Var.u(2, 4, iInterfaceL) || az3Var.u(3, 4, iInterfaceL))) {
                return false;
            }
            az3Var.s = null;
            ke keVar = az3Var.n;
            if (keVar == null) {
                return true;
            }
            ((nz3) keVar.b).g();
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }

    @Override // defpackage.t39
    public final void b(hs1 hs1Var) {
        jq6 jq6Var = this.h.o;
        if (jq6Var != null) {
            ((oz3) jq6Var.b).a(hs1Var);
        }
        System.currentTimeMillis();
    }
}
