package androidx.fragment.app;

import android.os.Handler;
import android.view.View;
import android.view.Window;
import defpackage.fu4;
import defpackage.hu4;
import defpackage.ms8;
import defpackage.ot9;
import defpackage.ur3;
import defpackage.wx6;
import defpackage.xr3;
import defpackage.yl8;
import defpackage.zl8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends ms8 implements zl8, fu4, wx6, xr3 {
    public final u d;
    public final u e;
    public final Handler f;
    public final ur3 k;
    public final /* synthetic */ u n;

    public t(u uVar) {
        this.n = uVar;
        Handler handler = new Handler();
        this.d = uVar;
        this.e = uVar;
        this.f = handler;
        this.k = new ur3();
    }

    @Override // defpackage.ms8
    public final View C(int i) {
        return this.n.findViewById(i);
    }

    @Override // defpackage.ms8
    public final boolean D() {
        Window window = this.n.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // defpackage.fu4
    public final hu4 getLifecycle() {
        return this.n.mFragmentLifecycleRegistry;
    }

    @Override // defpackage.wx6
    public final ot9 getSavedStateRegistry() {
        return this.n.getSavedStateRegistry();
    }

    @Override // defpackage.zl8
    public final yl8 getViewModelStore() {
        return this.n.getViewModelStore();
    }

    @Override // defpackage.xr3
    public final void a() {
    }
}
