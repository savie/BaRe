package defpackage;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zj6 {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, rt4 rt4Var) {
        hu4 lifecycle;
        rt4Var.getClass();
        if (!(activity instanceof fu4) || (lifecycle = ((fu4) activity).getLifecycle()) == null) {
            return;
        }
        lifecycle.d(rt4Var);
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            bk6.a.Companion.getClass();
            ak6.a(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new bk6(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }
}
