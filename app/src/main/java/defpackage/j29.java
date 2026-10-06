package defpackage;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import android.widget.ProgressBar;
import com.google.android.gms.common.api.GoogleApiActivity;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j29 implements Runnable {
    public final /* synthetic */ int a;
    public final Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ j29(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        n74 n74Var;
        switch (this.a) {
            case 0:
                if (((a19) this.c).a) {
                    hs1 hs1Var = ((g29) this.b).b;
                    Object[] objArr = 0;
                    Object[] objArr2 = (hs1Var.b == 0 || hs1Var.c == null) ? false : true;
                    a19 a19Var = (a19) this.c;
                    if (objArr2 == true) {
                        bu4 bu4Var = a19Var.mLifecycleFragment;
                        Activity activity = a19Var.getActivity();
                        PendingIntent pendingIntent = hs1Var.c;
                        ly8.h(pendingIntent);
                        int i = ((g29) this.b).a;
                        int i2 = GoogleApiActivity.b;
                        Intent intent = new Intent(activity, (Class<?>) GoogleApiActivity.class);
                        intent.putExtra("pending_intent", pendingIntent);
                        intent.putExtra("failing_client_id", i);
                        intent.putExtra("notify_manager", false);
                        bu4Var.startActivityForResult(intent, 1);
                        return;
                    }
                    if (a19Var.d.a(hs1Var.b, a19Var.getActivity(), null) != null) {
                        a19 a19Var2 = (a19) this.c;
                        a19Var2.d.h(a19Var2.getActivity(), a19Var2.mLifecycleFragment, hs1Var.b, (a19) this.c);
                        return;
                    }
                    int i3 = hs1Var.b;
                    a19 a19Var3 = (a19) this.c;
                    if (i3 != 18) {
                        int i4 = ((g29) this.b).a;
                        a19Var3.b.set(null);
                        a19Var3.f.h(hs1Var, i4);
                        return;
                    }
                    lz3 lz3Var = a19Var3.d;
                    Activity activity2 = a19Var3.getActivity();
                    lz3Var.getClass();
                    ProgressBar progressBar = new ProgressBar(activity2, null, R.attr.progressBarStyleLarge);
                    progressBar.setIndeterminate(true);
                    progressBar.setVisibility(0);
                    AlertDialog.Builder builder = new AlertDialog.Builder(activity2);
                    builder.setView(progressBar);
                    builder.setMessage(l19.b(activity2, 18));
                    builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
                    AlertDialog alertDialogCreate = builder.create();
                    lz3.f(activity2, alertDialogCreate, "GooglePlayServicesUpdatingDialog", a19Var3);
                    a19 a19Var4 = (a19) this.c;
                    Context applicationContext = a19Var4.getActivity().getApplicationContext();
                    c00 c00Var = new c00(this, alertDialogCreate, 15, objArr == true ? 1 : 0);
                    a19Var4.d.getClass();
                    IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
                    intentFilter.addDataScheme("package");
                    j19 j19Var = new j19(c00Var);
                    int i5 = Build.VERSION.SDK_INT;
                    if (i5 >= 33) {
                        applicationContext.registerReceiver(j19Var, intentFilter, i5 >= 33 ? 2 : 0);
                    } else {
                        applicationContext.registerReceiver(j19Var, intentFilter);
                    }
                    j19Var.a = applicationContext;
                    if (u04.b(applicationContext)) {
                        return;
                    }
                    a19 a19Var5 = (a19) this.c;
                    a19Var5.b.set(null);
                    n29 n29Var = a19Var5.f.n;
                    n29Var.sendMessage(n29Var.obtainMessage(3));
                    if (alertDialogCreate.isShowing()) {
                        alertDialogCreate.dismiss();
                    }
                    synchronized (j19Var) {
                        try {
                            Context context = j19Var.a;
                            if (context != null) {
                                context.unregisterReceiver(j19Var);
                            }
                            j19Var.a = null;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                }
                return;
            default:
                hs1 hs1Var2 = (hs1) this.b;
                w86 w86Var = (w86) this.c;
                ne neVar = (ne) w86Var.b;
                g19 g19Var = (g19) ((pz3) w86Var.f).j.get((df) w86Var.c);
                if (g19Var == null) {
                    return;
                }
                if (!hs1Var2.n()) {
                    g19Var.o(hs1Var2, null);
                    return;
                }
                w86Var.a = true;
                if (neVar.j()) {
                    if (!w86Var.a || (n74Var = (n74) w86Var.d) == null) {
                        return;
                    }
                    neVar.k(n74Var, (Set) w86Var.e);
                    return;
                }
                try {
                    neVar.k(null, neVar.a());
                    return;
                } catch (SecurityException e) {
                    Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
                    neVar.b("Failed to get service from broker.");
                    g19Var.o(new hs1(10, null, null), null);
                    return;
                }
        }
    }
}
