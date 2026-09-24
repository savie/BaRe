package defpackage;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m76 extends jv2 {
    final /* synthetic */ n76 this$0;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends jv2 {
        final /* synthetic */ n76 this$0;

        public a(n76 n76Var) {
            this.this$0 = n76Var;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            activity.getClass();
            this.this$0.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            activity.getClass();
            n76 n76Var = this.this$0;
            int i = n76Var.a + 1;
            n76Var.a = i;
            if (i == 1 && n76Var.d) {
                n76Var.f.d(rt4.ON_START);
                n76Var.d = false;
            }
        }
    }

    public m76(n76 n76Var) {
        this.this$0 = n76Var;
    }

    @Override // defpackage.jv2, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        if (Build.VERSION.SDK_INT < 29) {
            int i = bk6.b;
            Fragment fragmentFindFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            fragmentFindFragmentByTag.getClass();
            ((bk6) fragmentFindFragmentByTag).a = this.this$0.n;
        }
    }

    @Override // defpackage.jv2, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        activity.getClass();
        n76 n76Var = this.this$0;
        int i = n76Var.b - 1;
        n76Var.b = i;
        if (i == 0) {
            Handler handler = n76Var.e;
            handler.getClass();
            handler.postDelayed(n76Var.k, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        du.i(activity, new a(this.this$0));
    }

    @Override // defpackage.jv2, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        activity.getClass();
        n76 n76Var = this.this$0;
        int i = n76Var.a - 1;
        n76Var.a = i;
        if (i == 0 && n76Var.c) {
            n76Var.f.d(rt4.ON_STOP);
            n76Var.d = true;
        }
    }
}
