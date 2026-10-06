package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k29 extends az3 {
    public final tz7 y;

    public k29(Context context, Looper looper, z91 z91Var, tz7 tz7Var, g19 g19Var, g19 g19Var2) {
        super(context, looper, 270, z91Var, g19Var, g19Var2, 0);
        this.y = tz7Var;
    }

    @Override // defpackage.az3, defpackage.ne
    public final int f() {
        return 203400000;
    }

    @Override // defpackage.az3
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return iInterfaceQueryLocalInterface instanceof d29 ? (d29) iInterfaceQueryLocalInterface : new d29(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService", 1);
    }

    @Override // defpackage.az3
    public final y53[] n() {
        return ly8.e;
    }

    @Override // defpackage.az3
    public final Bundle o() {
        this.y.getClass();
        return new Bundle();
    }

    @Override // defpackage.az3
    public final String q() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // defpackage.az3
    public final String r() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // defpackage.az3
    public final boolean s() {
        return true;
    }
}
