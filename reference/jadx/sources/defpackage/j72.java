package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j72 implements ServiceConnection {
    private Context mApplicationContext;

    public abstract void onCustomTabsServiceConnected(i72 i72Var);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        r74 r74Var;
        if (this.mApplicationContext == null) {
            l0.e("Custom Tabs Service connected before an applicationcontext has been provided.");
            return;
        }
        int i = q74.a;
        if (iBinder == null) {
            r74Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(r74.l);
            if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof r74)) {
                p74 p74Var = new p74();
                p74Var.a = iBinder;
                r74Var = p74Var;
            } else {
                r74Var = (r74) iInterfaceQueryLocalInterface;
            }
        }
        onCustomTabsServiceConnected(new i72(r74Var, componentName));
    }

    public final void setApplicationContext(Context context) {
        this.mApplicationContext = context;
    }
}
