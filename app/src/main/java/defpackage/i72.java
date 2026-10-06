package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i72 {
    public final r74 a;
    public final ComponentName b;

    public i72(r74 r74Var, ComponentName componentName) {
        this.a = r74Var;
        this.b = componentName;
    }

    public static boolean a(Context context, String str, j72 j72Var) {
        j72Var.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, j72Var, 33);
    }

    public final ka b() {
        r74 r74Var = this.a;
        d72 d72Var = new d72();
        d72Var.attachInterface(d72Var, o74.j);
        new Handler(Looper.getMainLooper());
        try {
            if (((p74) r74Var).f(d72Var)) {
                return new ka(r74Var, d72Var, this.b);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }
}
