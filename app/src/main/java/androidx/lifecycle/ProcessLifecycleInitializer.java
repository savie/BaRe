package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import defpackage.ec4;
import defpackage.l0;
import defpackage.m76;
import defpackage.n76;
import defpackage.ov2;
import defpackage.rt4;
import defpackage.vq;
import defpackage.yt4;
import defpackage.zt4;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements ec4 {
    @Override // defpackage.ec4
    public final List a() {
        return ov2.a;
    }

    @Override // defpackage.ec4
    public final Object b(Context context) {
        context.getClass();
        vq vqVarN = vq.n(context);
        vqVarN.getClass();
        if (!((HashSet) vqVarN.c).contains(ProcessLifecycleInitializer.class)) {
            l0.e("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
            return null;
        }
        if (!zt4.a.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new yt4());
        }
        n76 n76Var = n76.p;
        n76Var.getClass();
        n76Var.e = new Handler();
        n76Var.f.d(rt4.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        applicationContext2.getClass();
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new m76(n76Var));
        return n76Var;
    }
}
