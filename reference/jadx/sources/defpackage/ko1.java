package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ko1 extends Dialog implements fu4, wx6 {
    public hu4 a;
    public final w00 b;
    public final gv7 c;
    public final gv7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ko1(Context context, int i) {
        super(context, i);
        context.getClass();
        this.b = new w00(new vx6(this, new as4(this, 10)));
        this.c = new gv7(new kf(this, 19));
        this.d = new gv7(new lf(this, 13));
    }

    public static void a(ko1 ko1Var) {
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        view.getClass();
        c();
        super.addContentView(view, layoutParams);
    }

    public final zs5 b() {
        return (zs5) this.d.getValue();
    }

    public final void c() {
        Window window = getWindow();
        window.getClass();
        View decorView = window.getDecorView();
        decorView.getClass();
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        Window window2 = getWindow();
        window2.getClass();
        View decorView2 = window2.getDecorView();
        decorView2.getClass();
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        Window window3 = getWindow();
        window3.getClass();
        View decorView3 = window3.getDecorView();
        decorView3.getClass();
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        Window window4 = getWindow();
        window4.getClass();
        View decorView4 = window4.getDecorView();
        decorView4.getClass();
        decorView4.setTag(R.id.view_tree_navigation_event_dispatcher_owner, this);
    }

    @Override // defpackage.fu4
    public final hu4 getLifecycle() {
        hu4 hu4Var = this.a;
        if (hu4Var != null) {
            return hu4Var;
        }
        hu4 hu4Var2 = new hu4(this);
        this.a = hu4Var2;
        return hu4Var2;
    }

    @Override // defpackage.wx6
    public final ot9 getSavedStateRegistry() {
        return (ot9) this.b.c;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        ((tl2) this.c.getValue()).a();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            zs5 zs5VarB = b();
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.getClass();
            zs5VarB.c(onBackInvokedDispatcher);
        }
        this.b.u(bundle);
        hu4 hu4Var = this.a;
        if (hu4Var == null) {
            hu4Var = new hu4(this);
            this.a = hu4Var;
        }
        hu4Var.d(rt4.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.getClass();
        this.b.v(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        hu4 hu4Var = this.a;
        if (hu4Var == null) {
            hu4Var = new hu4(this);
            this.a = hu4Var;
        }
        hu4Var.d(rt4.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        hu4 hu4Var = this.a;
        if (hu4Var == null) {
            hu4Var = new hu4(this);
            this.a = hu4Var;
        }
        hu4Var.d(rt4.ON_DESTROY);
        this.a = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        view.getClass();
        c();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        c();
        super.setContentView(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        view.getClass();
        c();
        super.setContentView(view, layoutParams);
    }
}
