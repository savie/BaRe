package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nd9 implements ServiceConnection {
    public final /* synthetic */ ud9 a;

    public /* synthetic */ nd9(ud9 ud9Var) {
        this.a = ud9Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        e99 a99Var;
        ta9.g("BillingClientTesting", "Billing Override Service connected.");
        ud9 ud9Var = this.a;
        int i = d99.b;
        if (iBinder == null) {
            a99Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService");
            a99Var = iInterfaceQueryLocalInterface instanceof e99 ? (e99) iInterfaceQueryLocalInterface : new a99(iBinder, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService", 4);
        }
        ud9Var.E = a99Var;
        ud9Var.D = 2;
        int i2 = zd9.a;
        no9 no9VarC = zd9.c(26, wo9.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(no9VarC, "ApiSuccess should not be null");
        l39 l39Var = ud9Var.h;
        l39Var.getClass();
        try {
            l39Var.x(no9VarC, (hp9) l39Var.b);
        } catch (Throwable th) {
            ta9.i("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ta9.h("BillingClientTesting", "Billing Override Service disconnected.");
        ud9 ud9Var = this.a;
        ud9Var.E = null;
        ud9Var.D = 0;
    }
}
