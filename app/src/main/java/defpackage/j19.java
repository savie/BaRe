package defpackage;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j19 extends BroadcastReceiver {
    public Context a;
    public final c00 b;

    public j19(c00 c00Var) {
        this.b = c00Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            c00 c00Var = this.b;
            a19 a19Var = (a19) ((j29) c00Var.c).c;
            a19Var.b.set(null);
            n29 n29Var = a19Var.f.n;
            n29Var.sendMessage(n29Var.obtainMessage(3));
            AlertDialog alertDialog = (AlertDialog) c00Var.b;
            if (alertDialog.isShowing()) {
                alertDialog.dismiss();
            }
            synchronized (this) {
                try {
                    Context context2 = this.a;
                    if (context2 != null) {
                        context2.unregisterReceiver(this);
                    }
                    this.a = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
