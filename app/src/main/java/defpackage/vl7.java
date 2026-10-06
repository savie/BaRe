package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vl7 extends oc5 implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public vc5 G;
    public ViewTreeObserver H;
    public boolean I;
    public boolean J;
    public int K;
    public boolean M;
    public final Context b;
    public final fc5 c;
    public final cc5 d;
    public final boolean e;
    public final int f;
    public final int k;
    public final int n;
    public final uc5 p;
    public PopupWindow.OnDismissListener t;
    public View x;
    public View y;
    public final tl7 q = new tl7(this);
    public final ul7 r = new ul7(this);
    public int L = 0;

    public vl7(int i, int i2, fc5 fc5Var, Context context, View view, boolean z) {
        this.b = context;
        this.c = fc5Var;
        this.e = z;
        this.d = new cc5(fc5Var, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.k = i;
        this.n = i2;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.x = view;
        this.p = new uc5(context, null, i, i2);
        fc5Var.b(this, context);
    }

    @Override // defpackage.af7
    public final boolean a() {
        return !this.I && this.p.R.isShowing();
    }

    @Override // defpackage.af7
    public final void b() {
        View view;
        if (a()) {
            return;
        }
        if (this.I || (view = this.x) == null) {
            l0.e("StandardMenuPopup cannot be used without an anchor");
            return;
        }
        this.y = view;
        uc5 uc5Var = this.p;
        qo qoVar = uc5Var.R;
        qo qoVar2 = uc5Var.R;
        qoVar.setOnDismissListener(this);
        uc5Var.H = this;
        uc5Var.Q = true;
        qoVar2.setFocusable(true);
        View view2 = this.y;
        boolean z = this.H == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.H = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.q);
        }
        view2.addOnAttachStateChangeListener(this.r);
        uc5Var.G = view2;
        uc5Var.t = this.L;
        boolean z2 = this.J;
        Context context = this.b;
        cc5 cc5Var = this.d;
        if (!z2) {
            this.K = oc5.o(cc5Var, context, this.f);
            this.J = true;
        }
        uc5Var.r(this.K);
        qoVar2.setInputMethodMode(2);
        Rect rect = this.a;
        uc5Var.P = rect != null ? new Rect(rect) : null;
        uc5Var.b();
        bq2 bq2Var = uc5Var.c;
        bq2Var.setOnKeyListener(this);
        if (this.M) {
            fc5 fc5Var = this.c;
            if (fc5Var.x != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) bq2Var, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(fc5Var.x);
                }
                frameLayout.setEnabled(false);
                bq2Var.addHeaderView(frameLayout, null, false);
            }
        }
        uc5Var.p(cc5Var);
        uc5Var.b();
    }

    @Override // defpackage.wc5
    public final void c(boolean z) {
        this.J = false;
        cc5 cc5Var = this.d;
        if (cc5Var != null) {
            cc5Var.notifyDataSetChanged();
        }
    }

    @Override // defpackage.wc5
    public final void d(fc5 fc5Var, boolean z) {
        if (fc5Var != this.c) {
            return;
        }
        dismiss();
        vc5 vc5Var = this.G;
        if (vc5Var != null) {
            vc5Var.d(fc5Var, z);
        }
    }

    @Override // defpackage.af7
    public final void dismiss() {
        if (a()) {
            this.p.dismiss();
        }
    }

    @Override // defpackage.wc5
    public final boolean e(lr7 lr7Var) {
        boolean z;
        if (lr7Var.hasVisibleItems()) {
            qc5 qc5Var = new qc5(this.k, this.n, lr7Var, this.b, this.y, this.e);
            vc5 vc5Var = this.G;
            qc5Var.i = vc5Var;
            oc5 oc5Var = qc5Var.j;
            if (oc5Var != null) {
                oc5Var.i(vc5Var);
            }
            int size = lr7Var.f.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                }
                MenuItem item = lr7Var.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i++;
            }
            qc5Var.h = z;
            oc5 oc5Var2 = qc5Var.j;
            if (oc5Var2 != null) {
                oc5Var2.q(z);
            }
            qc5Var.k = this.t;
            this.t = null;
            this.c.c(false);
            uc5 uc5Var = this.p;
            int width = uc5Var.f;
            int iO = uc5Var.o();
            if ((Gravity.getAbsoluteGravity(this.L, this.x.getLayoutDirection()) & 7) == 5) {
                width += this.x.getWidth();
            }
            if (!qc5Var.b()) {
                if (qc5Var.f != null) {
                    qc5Var.d(width, iO, true, true);
                }
            }
            vc5 vc5Var2 = this.G;
            if (vc5Var2 != null) {
                vc5Var2.r(lr7Var);
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.wc5
    public final boolean f() {
        return false;
    }

    @Override // defpackage.wc5
    public final void i(vc5 vc5Var) {
        this.G = vc5Var;
    }

    @Override // defpackage.af7
    public final bq2 k() {
        return this.p.c;
    }

    @Override // defpackage.wc5
    public final Parcelable m() {
        return null;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.I = true;
        this.c.c(true);
        ViewTreeObserver viewTreeObserver = this.H;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.H = this.y.getViewTreeObserver();
            }
            this.H.removeGlobalOnLayoutListener(this.q);
            this.H = null;
        }
        this.y.removeOnAttachStateChangeListener(this.r);
        PopupWindow.OnDismissListener onDismissListener = this.t;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // defpackage.oc5
    public final void p(View view) {
        this.x = view;
    }

    @Override // defpackage.oc5
    public final void q(boolean z) {
        this.d.c = z;
    }

    @Override // defpackage.oc5
    public final void r(int i) {
        this.L = i;
    }

    @Override // defpackage.oc5
    public final void s(int i) {
        this.p.f = i;
    }

    @Override // defpackage.oc5
    public final void t(PopupWindow.OnDismissListener onDismissListener) {
        this.t = onDismissListener;
    }

    @Override // defpackage.oc5
    public final void u(boolean z) {
        this.M = z;
    }

    @Override // defpackage.oc5
    public final void v(int i) {
        this.p.l(i);
    }

    @Override // defpackage.wc5
    public final void h(Parcelable parcelable) {
    }

    @Override // defpackage.oc5
    public final void n(fc5 fc5Var) {
    }
}
