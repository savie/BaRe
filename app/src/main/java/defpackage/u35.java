package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.jcraft.jsch.SftpATTRS;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class u35 extends ho implements eu4 {
    public final boolean G;
    public ka H;
    public final mu0 I;
    public final k28 J;
    public final jk8 K;
    public final boolean L;
    public final boolean M;
    public final gv7 N;
    public boolean O;
    public boolean P;
    public BottomSheetBehavior k;
    public FrameLayout n;
    public CoordinatorLayout p;
    public FrameLayout q;
    public boolean r;
    public boolean t;
    public boolean x;
    public nu0 y;

    public u35(k28 k28Var, jk8 jk8Var, boolean z, boolean z2) {
        k28Var.getClass();
        jk8Var.getClass();
        TypedValue typedValue = new TypedValue();
        super(k28Var, k28Var.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R.style.Theme_Design_Light_BottomSheetDialog);
        this.r = true;
        this.t = true;
        this.I = new mu0(this);
        d().h(1);
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge});
        this.G = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge});
        this.G = typedArrayObtainStyledAttributes2.getBoolean(0, false);
        typedArrayObtainStyledAttributes2.recycle();
        this.J = k28Var;
        this.K = jk8Var;
        this.L = z;
        this.M = z2;
        this.N = new gv7(new ej(this, 28));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        if (this.k == null) {
            f();
        }
        super.cancel();
    }

    @Override // defpackage.ho, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.P = false;
        super.dismiss();
    }

    public final void f() {
        if (this.n == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            this.n = frameLayout;
            this.p = (CoordinatorLayout) this.n.findViewById(R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.n.findViewById(R.id.design_bottom_sheet);
            this.q = frameLayout2;
            BottomSheetBehavior bottomSheetBehaviorC = BottomSheetBehavior.C(frameLayout2);
            this.k = bottomSheetBehaviorC;
            ArrayList arrayList = bottomSheetBehaviorC.a0;
            mu0 mu0Var = this.I;
            if (!arrayList.contains(mu0Var)) {
                arrayList.add(mu0Var);
            }
            this.k.J(this.r);
            this.H = new ka(this.k, this.q);
        }
    }

    public final void h() {
        super.onStart();
        BottomSheetBehavior bottomSheetBehavior = this.k;
        if (bottomSheetBehavior == null || bottomSheetBehavior.P != 5) {
            return;
        }
        bottomSheetBehavior.L(4);
    }

    public final FrameLayout i(View view, int i, ViewGroup.LayoutParams layoutParams) {
        f();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.n.findViewById(R.id.coordinator);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        if (this.G) {
            FrameLayout frameLayout = this.n;
            tr9 tr9Var = new tr9(this, 4);
            WeakHashMap weakHashMap = dl8.a;
            uk8.c(frameLayout, tr9Var);
        }
        this.q.removeAllViews();
        FrameLayout frameLayout2 = this.q;
        if (layoutParams == null) {
            frameLayout2.addView(view);
        } else {
            frameLayout2.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new ju0(this, 0));
        dl8.n(this.q, new ku0(this));
        this.q.setOnTouchListener(new lu0());
        return this.n;
    }

    @Override // android.app.Dialog
    public final boolean isShowing() {
        return super.isShowing() && this.P;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        boolean z;
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            if (this.G) {
                if (Color.alpha(Build.VERSION.SDK_INT < 35 ? window.getNavigationBarColor() : 0) < 255) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            FrameLayout frameLayout = this.n;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z);
            }
            CoordinatorLayout coordinatorLayout = this.p;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z);
            }
            w13.r(window, !z);
            nu0 nu0Var = this.y;
            if (nu0Var != null) {
                nu0Var.e(window);
            }
        }
        ka kaVar = this.H;
        if (kaVar == null) {
            return;
        }
        View view = (View) kaVar.c;
        boolean z2 = this.r;
        c85 c85Var = (c85) kaVar.a;
        if (z2) {
            if (c85Var != null) {
                c85Var.b((a85) kaVar.b, view, false);
            }
        } else if (c85Var != null) {
            c85Var.c(view);
        }
    }

    @Override // defpackage.ho, defpackage.ko1, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT < 35) {
                window.setStatusBarColor(0);
            }
            window.addFlags(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        c85 c85Var;
        nu0 nu0Var = this.y;
        if (nu0Var != null) {
            nu0Var.e(null);
        }
        ka kaVar = this.H;
        if (kaVar == null || (c85Var = (c85) kaVar.a) == null) {
            return;
        }
        c85Var.c((View) kaVar.c);
    }

    @ct5(rt4.ON_DESTROY)
    public final void onLifecycleDestroy() {
        dismiss();
    }

    @Override // defpackage.ko1, android.app.Dialog
    public final void onStart() {
        h();
        Context context = getContext();
        context.getClass();
        if (context.getResources().getConfiguration().orientation == 2) {
            try {
                Field fieldM = tu0.m(getClass(), "behavior");
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) (fieldM != null ? fieldM.get(this) : null);
                Context context2 = getContext();
                context2.getClass();
                int i = context2.getResources().getDisplayMetrics().heightPixels;
                if (bottomSheetBehavior != null) {
                    bottomSheetBehavior.K((int) (i * 0.7f));
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z) {
        ka kaVar;
        super.setCancelable(z);
        if (this.r != z) {
            this.r = z;
            BottomSheetBehavior bottomSheetBehavior = this.k;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.J(z);
            }
            if (getWindow() == null || (kaVar = this.H) == null) {
                return;
            }
            View view = (View) kaVar.c;
            boolean z2 = this.r;
            c85 c85Var = (c85) kaVar.a;
            if (z2) {
                if (c85Var != null) {
                    c85Var.b((a85) kaVar.b, view, false);
                }
            } else if (c85Var != null) {
                c85Var.c(view);
            }
        }
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.r) {
            this.r = true;
        }
        this.t = z;
        this.x = true;
    }

    @Override // defpackage.ho, defpackage.ko1, android.app.Dialog
    public final void setContentView(View view) {
        super.setContentView(i(view, 0, null));
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0048  */
    @Override // android.app.Dialog
    public void show() {
        int iA;
        this.P = true;
        k28 k28Var = this.J;
        if (k28Var.isDestroyed()) {
            return;
        }
        k28Var.getLifecycle().a(this);
        if (!this.O) {
            this.O = true;
            setContentView(this.K.getRoot());
        }
        Window window = getWindow();
        if (window == null) {
            return;
        }
        if (k28Var.v()) {
            h28.Companion.getClass();
            if (f28.e()) {
                iA = k28Var.getColor(sz8.y(k28Var, R.attr.bottomBarExpandedBackgroundColor));
            } else {
                iA = vs7.SURFACE_1.a(window.getContext());
            }
        } else {
            iA = vs7.SURFACE_1.a(window.getContext());
        }
        window.setNavigationBarColor(iA);
        super.show();
        if (this.L) {
            if (this.k == null) {
                f();
            }
            this.k.L(3);
            if (this.k == null) {
                f();
            }
            this.k.K = true;
        }
        if (this.M) {
            gv7 gv7Var = this.N;
            FrameLayout frameLayout = (FrameLayout) gv7Var.getValue();
            ViewGroup.LayoutParams layoutParams = frameLayout != null ? frameLayout.getLayoutParams() : null;
            if (layoutParams != null) {
                layoutParams.height = Resources.getSystem().getDisplayMetrics().heightPixels;
            }
            FrameLayout frameLayout2 = (FrameLayout) gv7Var.getValue();
            if (frameLayout2 != null) {
                frameLayout2.setLayoutParams(layoutParams);
            }
        }
    }

    @Override // defpackage.ho, defpackage.ko1, android.app.Dialog
    public final void setContentView(int i) {
        super.setContentView(i(null, i, null));
    }

    @Override // defpackage.ho, defpackage.ko1, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(i(view, 0, layoutParams));
    }

    public /* synthetic */ u35(k28 k28Var, jk8 jk8Var, int i) {
        this(k28Var, jk8Var, (i & 4) == 0, false);
    }
}
