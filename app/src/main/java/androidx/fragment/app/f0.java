package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import defpackage.as4;
import defpackage.cy0;
import defpackage.ej5;
import defpackage.hu4;
import defpackage.ot9;
import defpackage.rt4;
import defpackage.vl8;
import defpackage.vx6;
import defpackage.w00;
import defpackage.w24;
import defpackage.wl8;
import defpackage.wx6;
import defpackage.xx6;
import defpackage.yl8;
import defpackage.zl8;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements w24, wx6, zl8 {
    public final o a;
    public final yl8 b;
    public final i c;
    public wl8 d;
    public hu4 e = null;
    public w00 f = null;

    public f0(o oVar, yl8 yl8Var, i iVar) {
        this.a = oVar;
        this.b = yl8Var;
        this.c = iVar;
    }

    public final void a(rt4 rt4Var) {
        this.e.d(rt4Var);
    }

    public final void b() {
        if (this.e == null) {
            this.e = new hu4(this);
            vx6 vx6Var = new vx6(this, new as4(this, 10));
            this.f = new w00(vx6Var);
            vx6Var.a();
            this.c.run();
        }
    }

    @Override // defpackage.w24
    public final ej5 getDefaultViewModelCreationExtras() {
        Application application;
        o oVar = this.a;
        Context applicationContext = oVar.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        ej5 ej5Var = new ej5(0);
        LinkedHashMap linkedHashMap = ej5Var.a;
        if (application != null) {
            linkedHashMap.put(vl8.d, application);
        }
        linkedHashMap.put(cy0.c, oVar);
        linkedHashMap.put(cy0.d, this);
        Bundle bundle = oVar.mArguments;
        if (bundle != null) {
            linkedHashMap.put(cy0.e, bundle);
        }
        return ej5Var;
    }

    @Override // defpackage.w24
    public final wl8 getDefaultViewModelProviderFactory() {
        Application application;
        o oVar = this.a;
        wl8 defaultViewModelProviderFactory = oVar.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(oVar.mDefaultFactory)) {
            this.d = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.d == null) {
            Context applicationContext = oVar.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            this.d = new xx6(application, oVar, oVar.mArguments);
        }
        return this.d;
    }

    @Override // defpackage.fu4
    public final hu4 getLifecycle() {
        b();
        return this.e;
    }

    @Override // defpackage.wx6
    public final ot9 getSavedStateRegistry() {
        b();
        return (ot9) this.f.c;
    }

    @Override // defpackage.zl8
    public final yl8 getViewModelStore() {
        b();
        return this.b;
    }
}
