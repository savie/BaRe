package defpackage;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ou8 extends nc8 implements y7 {
    public static final AccelerateInterpolator C = new AccelerateInterpolator();
    public static final DecelerateInterpolator D = new DecelerateInterpolator();
    public final pn A;
    public final ty3 B;
    public Context e;
    public Context f;
    public ActionBarOverlayLayout g;
    public ActionBarContainer h;
    public wd2 i;
    public ActionBarContextView j;
    public final View k;
    public boolean l;
    public nu8 m;
    public nu8 n;
    public h80 o;
    public boolean p;
    public final ArrayList q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public nm8 w;
    public boolean x;
    public boolean y;
    public final mu8 z;

    public ou8(Activity activity, boolean z) {
        new ArrayList();
        this.q = new ArrayList();
        this.r = 0;
        this.s = true;
        this.v = true;
        this.z = new mu8(this);
        this.A = new pn(this, 1);
        this.B = new ty3(this);
        View decorView = activity.getWindow().getDecorView();
        y0(decorView);
        if (z) {
            return;
        }
        this.k = decorView.findViewById(R.id.content);
    }

    public final void A0(boolean z) {
        if (z) {
            this.h.setTabContainer(null);
            ((r88) this.i).getClass();
        } else {
            ((r88) this.i).getClass();
            this.h.setTabContainer(null);
        }
        this.i.getClass();
        ((r88) this.i).a.setCollapsible(false);
        this.g.setHasNonEmbeddedTabs(false);
    }

    @Override // defpackage.nc8
    public final int B() {
        return ((r88) this.i).b;
    }

    public final void B0(boolean z) {
        boolean z2 = this.u || !this.t;
        boolean z3 = this.v;
        ty3 ty3Var = this.B;
        View view = this.k;
        if (!z2) {
            if (z3) {
                this.v = false;
                nm8 nm8Var = this.w;
                if (nm8Var != null) {
                    nm8Var.a();
                }
                int i = this.r;
                mu8 mu8Var = this.z;
                if (i != 0 || (!this.x && !z)) {
                    mu8Var.d();
                    return;
                }
                this.h.setAlpha(1.0f);
                this.h.setTransitioning(true);
                nm8 nm8Var2 = new nm8();
                float f = -this.h.getHeight();
                if (z) {
                    int[] iArr = {0, 0};
                    this.h.getLocationInWindow(iArr);
                    f -= iArr[1];
                }
                lm8 lm8VarA = dl8.a(this.h);
                lm8VarA.e(f);
                View view2 = (View) lm8VarA.a.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(ty3Var != null ? new p91(ty3Var, view2) : null);
                }
                boolean z4 = nm8Var2.e;
                ArrayList arrayList = nm8Var2.a;
                if (!z4) {
                    arrayList.add(lm8VarA);
                }
                if (this.s && view != null) {
                    lm8 lm8VarA2 = dl8.a(view);
                    lm8VarA2.e(f);
                    if (!nm8Var2.e) {
                        arrayList.add(lm8VarA2);
                    }
                }
                boolean z5 = nm8Var2.e;
                if (!z5) {
                    nm8Var2.c = C;
                }
                if (!z5) {
                    nm8Var2.b = 250L;
                }
                if (!z5) {
                    nm8Var2.d = mu8Var;
                }
                this.w = nm8Var2;
                nm8Var2.b();
                return;
            }
            return;
        }
        if (z3) {
            return;
        }
        this.v = true;
        nm8 nm8Var3 = this.w;
        if (nm8Var3 != null) {
            nm8Var3.a();
        }
        this.h.setVisibility(0);
        int i2 = this.r;
        pn pnVar = this.A;
        if (i2 == 0 && (this.x || z)) {
            this.h.setTranslationY(0.0f);
            float f2 = -this.h.getHeight();
            if (z) {
                int[] iArr2 = {0, 0};
                this.h.getLocationInWindow(iArr2);
                f2 -= iArr2[1];
            }
            this.h.setTranslationY(f2);
            nm8 nm8Var4 = new nm8();
            lm8 lm8VarA3 = dl8.a(this.h);
            lm8VarA3.e(0.0f);
            View view3 = (View) lm8VarA3.a.get();
            if (view3 != null) {
                view3.animate().setUpdateListener(ty3Var != null ? new p91(ty3Var, view3) : null);
            }
            boolean z6 = nm8Var4.e;
            ArrayList arrayList2 = nm8Var4.a;
            if (!z6) {
                arrayList2.add(lm8VarA3);
            }
            if (this.s && view != null) {
                view.setTranslationY(f2);
                lm8 lm8VarA4 = dl8.a(view);
                lm8VarA4.e(0.0f);
                if (!nm8Var4.e) {
                    arrayList2.add(lm8VarA4);
                }
            }
            boolean z7 = nm8Var4.e;
            if (!z7) {
                nm8Var4.c = D;
            }
            if (!z7) {
                nm8Var4.b = 250L;
            }
            if (!z7) {
                nm8Var4.d = pnVar;
            }
            this.w = nm8Var4;
            nm8Var4.b();
        } else {
            this.h.setAlpha(1.0f);
            this.h.setTranslationY(0.0f);
            if (this.s && view != null) {
                view.setTranslationY(0.0f);
            }
            pnVar.d();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.g;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = dl8.a;
            actionBarOverlayLayout.requestApplyInsets();
        }
    }

    @Override // defpackage.nc8
    public final Context C() {
        if (this.f == null) {
            TypedValue typedValue = new TypedValue();
            this.e.getTheme().resolveAttribute(org.swiftapps.swiftbackup.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f = new ContextThemeWrapper(this.e, i);
            } else {
                this.f = this.e;
            }
        }
        return this.f;
    }

    @Override // defpackage.nc8
    public final void N() {
        A0(this.e.getResources().getBoolean(org.swiftapps.swiftbackup.R.bool.abc_action_bar_embed_tabs));
    }

    @Override // defpackage.nc8
    public final boolean Q(int i, KeyEvent keyEvent) {
        fc5 fc5Var;
        nu8 nu8Var = this.m;
        if (nu8Var == null || (fc5Var = nu8Var.d) == null) {
            return false;
        }
        fc5Var.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
        return fc5Var.performShortcut(i, keyEvent, 0);
    }

    @Override // defpackage.nc8
    public final void Y(boolean z) {
        if (this.l) {
            return;
        }
        Z(z);
    }

    @Override // defpackage.nc8
    public final void Z(boolean z) {
        z0(z ? 4 : 0, 4);
    }

    @Override // defpackage.nc8
    public final void a0() {
        z0(2, 2);
    }

    @Override // defpackage.nc8
    public final void b0(boolean z) {
        z0(z ? 8 : 0, 8);
    }

    @Override // defpackage.nc8
    public final void c0(boolean z) {
        nm8 nm8Var;
        this.x = z;
        if (z || (nm8Var = this.w) == null) {
            return;
        }
        nm8Var.a();
    }

    @Override // defpackage.nc8
    public final void d0(CharSequence charSequence) {
        ((r88) this.i).b(charSequence);
    }

    @Override // defpackage.nc8
    public final void e0(int i) {
        f0(this.e.getString(i));
    }

    @Override // defpackage.nc8
    public final void f0(CharSequence charSequence) {
        r88 r88Var = (r88) this.i;
        r88Var.g = true;
        Toolbar toolbar = r88Var.a;
        r88Var.h = charSequence;
        if ((r88Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (r88Var.g) {
                dl8.o(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // defpackage.nc8
    public final void g0(CharSequence charSequence) {
        r88 r88Var = (r88) this.i;
        if (r88Var.g) {
            return;
        }
        Toolbar toolbar = r88Var.a;
        r88Var.h = charSequence;
        if ((r88Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (r88Var.g) {
                dl8.o(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // defpackage.nc8
    public final s8 j0(h80 h80Var) {
        nu8 nu8Var = this.m;
        if (nu8Var != null) {
            nu8Var.a();
        }
        this.g.setHideOnContentScrollEnabled(false);
        this.j.e();
        nu8 nu8Var2 = new nu8(this, this.j.getContext(), h80Var);
        fc5 fc5Var = nu8Var2.d;
        fc5Var.w();
        try {
            boolean zH = ((x91) nu8Var2.e.b).h(nu8Var2, fc5Var);
            fc5Var.v();
            if (!zH) {
                return null;
            }
            this.m = nu8Var2;
            nu8Var2.h();
            this.j.c(nu8Var2);
            x0(true);
            return nu8Var2;
        } catch (Throwable th) {
            fc5Var.v();
            throw th;
        }
    }

    @Override // defpackage.nc8
    public final boolean l() {
        k88 k88Var;
        wd2 wd2Var = this.i;
        if (wd2Var == null || (k88Var = ((r88) wd2Var).a.h0) == null || k88Var.b == null) {
            return false;
        }
        k88 k88Var2 = ((r88) wd2Var).a.h0;
        ic5 ic5Var = k88Var2 == null ? null : k88Var2.b;
        if (ic5Var == null) {
            return true;
        }
        ic5Var.collapseActionView();
        return true;
    }

    @Override // defpackage.nc8
    public final void v(boolean z) {
        if (z == this.p) {
            return;
        }
        this.p = z;
        ArrayList arrayList = this.q;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        e6.d();
    }

    public final void x0(boolean z) {
        lm8 lm8VarI;
        lm8 lm8VarI2;
        boolean z2 = this.u;
        if (z) {
            if (!z2) {
                this.u = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.g;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                B0(false);
            }
        } else if (z2) {
            this.u = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.g;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            B0(false);
        }
        boolean zIsLaidOut = this.h.isLaidOut();
        wd2 wd2Var = this.i;
        if (!zIsLaidOut) {
            if (z) {
                ((r88) wd2Var).a.setVisibility(4);
                this.j.setVisibility(0);
                return;
            } else {
                ((r88) wd2Var).a.setVisibility(0);
                this.j.setVisibility(8);
                return;
            }
        }
        if (z) {
            r88 r88Var = (r88) wd2Var;
            lm8VarI = dl8.a(r88Var.a);
            lm8VarI.a(0.0f);
            lm8VarI.c(100L);
            lm8VarI.d(new q88(r88Var, 4));
            lm8VarI2 = this.j.i(0, 200L);
        } else {
            r88 r88Var2 = (r88) wd2Var;
            lm8 lm8VarA = dl8.a(r88Var2.a);
            lm8VarA.a(1.0f);
            lm8VarA.c(200L);
            lm8VarA.d(new q88(r88Var2, 0));
            lm8VarI = this.j.i(8, 100L);
            lm8VarI2 = lm8VarA;
        }
        nm8 nm8Var = new nm8();
        ArrayList arrayList = nm8Var.a;
        arrayList.add(lm8VarI);
        View view = (View) lm8VarI.a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) lm8VarI2.a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(lm8VarI2);
        nm8Var.b();
    }

    public final void y0(View view) {
        wd2 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(org.swiftapps.swiftbackup.R.id.decor_content_parent);
        this.g = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(org.swiftapps.swiftbackup.R.id.action_bar);
        if (callbackFindViewById instanceof wd2) {
            wrapper = (wd2) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.i = wrapper;
        this.j = (ActionBarContextView) view.findViewById(org.swiftapps.swiftbackup.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(org.swiftapps.swiftbackup.R.id.action_bar_container);
        this.h = actionBarContainer;
        wd2 wd2Var = this.i;
        if (wd2Var == null || this.j == null || actionBarContainer == null) {
            l0.e(ou8.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
            return;
        }
        Context context = ((r88) wd2Var).a.getContext();
        this.e = context;
        if ((((r88) this.i).b & 4) != 0) {
            this.l = true;
        }
        int i = context.getApplicationInfo().targetSdkVersion;
        this.i.getClass();
        A0(context.getResources().getBoolean(org.swiftapps.swiftbackup.R.bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.e.obtainStyledAttributes(null, ge6.a, org.swiftapps.swiftbackup.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.g;
            if (!actionBarOverlayLayout2.k) {
                l0.e("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
                return;
            } else {
                this.y = true;
                actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
            }
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.h;
            WeakHashMap weakHashMap = dl8.a;
            actionBarContainer2.setElevation(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void z0(int i, int i2) {
        r88 r88Var = (r88) this.i;
        int i3 = r88Var.b;
        if ((i2 & 4) != 0) {
            this.l = true;
        }
        r88Var.a((i & i2) | ((~i2) & i3));
    }

    public ou8(Dialog dialog) {
        new ArrayList();
        this.q = new ArrayList();
        this.r = 0;
        this.s = true;
        this.v = true;
        this.z = new mu8(this);
        this.A = new pn(this, 1);
        this.B = new ty3(this);
        y0(dialog.getWindow().getDecorView());
    }
}
