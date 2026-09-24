package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o8 implements wc5 {
    public int G;
    public int H;
    public int I;
    public boolean J;
    public l8 L;
    public g8 M;
    public i8 N;
    public h8 O;
    public int Q;
    public final Context a;
    public Context b;
    public fc5 c;
    public final LayoutInflater d;
    public vc5 e;
    public zc5 n;
    public int p;
    public k8 q;
    public Drawable r;
    public boolean t;
    public boolean x;
    public boolean y;
    public final int f = R.layout.abc_action_menu_layout;
    public final int k = R.layout.abc_action_menu_item_layout;
    public final SparseBooleanArray K = new SparseBooleanArray();
    public final km8 P = new km8(this);

    public o8(Context context) {
        this.a = context;
        this.d = LayoutInflater.from(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a(ic5 ic5Var, View view, ViewGroup viewGroup) {
        View actionView = ic5Var.getActionView();
        if (actionView == null || ic5Var.e()) {
            yc5 yc5Var = view instanceof yc5 ? (yc5) view : (yc5) this.d.inflate(this.k, viewGroup, false);
            yc5Var.a(ic5Var);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) yc5Var;
            actionMenuItemView.setItemInvoker((ActionMenuView) this.n);
            if (this.O == null) {
                this.O = new h8(this);
            }
            actionMenuItemView.setPopupCallback(this.O);
            actionView = (View) yc5Var;
        }
        actionView.setVisibility(ic5Var.U ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof q8)) {
            actionView.setLayoutParams(ActionMenuView.j(layoutParams));
        }
        return actionView;
    }

    public final boolean b() {
        Object obj;
        i8 i8Var = this.N;
        if (i8Var != null && (obj = this.n) != null) {
            ((View) obj).removeCallbacks(i8Var);
            this.N = null;
            return true;
        }
        l8 l8Var = this.L;
        if (l8Var == null) {
            return false;
        }
        if (l8Var.b()) {
            l8Var.j.dismiss();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.wc5
    public final void c(boolean z) {
        int i;
        ViewGroup viewGroup = (ViewGroup) this.n;
        ArrayList arrayList = null;
        boolean z2 = false;
        if (viewGroup != null) {
            fc5 fc5Var = this.c;
            if (fc5Var != null) {
                fc5Var.i();
                ArrayList arrayListL = this.c.l();
                int size = arrayListL.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    ic5 ic5Var = (ic5) arrayListL.get(i2);
                    if ((ic5Var.P & 32) == 32) {
                        View childAt = viewGroup.getChildAt(i);
                        ic5 itemData = childAt instanceof yc5 ? ((yc5) childAt).getItemData() : null;
                        View viewA = a(ic5Var, childAt, viewGroup);
                        if (ic5Var != itemData) {
                            viewA.setPressed(false);
                            viewA.jumpDrawablesToCurrentState();
                        }
                        if (viewA != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewA.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewA);
                            }
                            ((ViewGroup) this.n).addView(viewA, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.q) {
                    i++;
                } else {
                    viewGroup.removeViewAt(i);
                }
            }
        }
        ((View) this.n).requestLayout();
        fc5 fc5Var2 = this.c;
        if (fc5Var2 != null) {
            fc5Var2.i();
            ArrayList arrayList2 = fc5Var2.p;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                jc5 jc5Var = ((ic5) arrayList2.get(i3)).S;
            }
        }
        fc5 fc5Var3 = this.c;
        if (fc5Var3 != null) {
            fc5Var3.i();
            arrayList = fc5Var3.q;
        }
        if (this.x && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z2 = !((ic5) arrayList.get(0)).U;
            } else if (size3 > 0) {
                z2 = true;
            }
        }
        k8 k8Var = this.q;
        if (z2) {
            if (k8Var == null) {
                this.q = new k8(this, this.a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.q.getParent();
            if (viewGroup3 != this.n) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.q);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.n;
                k8 k8Var2 = this.q;
                actionMenuView.getClass();
                q8 q8VarI = ActionMenuView.i();
                q8VarI.a = true;
                actionMenuView.addView(k8Var2, q8VarI);
            }
        } else if (k8Var != null) {
            Object parent = k8Var.getParent();
            Object obj = this.n;
            if (parent == obj) {
                ((ViewGroup) obj).removeView(this.q);
            }
        }
        ((ActionMenuView) this.n).setOverflowReserved(this.x);
    }

    @Override // defpackage.wc5
    public final void d(fc5 fc5Var, boolean z) {
        b();
        g8 g8Var = this.M;
        if (g8Var != null && g8Var.b()) {
            g8Var.j.dismiss();
        }
        vc5 vc5Var = this.e;
        if (vc5Var != null) {
            vc5Var.d(fc5Var, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.wc5
    public final boolean e(lr7 lr7Var) {
        boolean z;
        if (lr7Var.hasVisibleItems()) {
            lr7 lr7Var2 = lr7Var;
            while (true) {
                fc5 fc5Var = lr7Var2.S;
                if (fc5Var == this.c) {
                    break;
                }
                lr7Var2 = (lr7) fc5Var;
            }
            ic5 ic5Var = lr7Var2.T;
            ViewGroup viewGroup = (ViewGroup) this.n;
            View view = null;
            view = null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if ((childAt instanceof yc5) && ((yc5) childAt).getItemData() == ic5Var) {
                        view = childAt;
                        break;
                    }
                }
            }
            if (view != null) {
                this.Q = lr7Var.T.a;
                int size = lr7Var.f.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z = false;
                        break;
                    }
                    MenuItem item = lr7Var.getItem(i2);
                    if (item.isVisible() && item.getIcon() != null) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                g8 g8Var = new g8(this, this.b, lr7Var, view);
                this.M = g8Var;
                g8Var.h = z;
                oc5 oc5Var = g8Var.j;
                if (oc5Var != null) {
                    oc5Var.q(z);
                }
                g8 g8Var2 = this.M;
                if (!g8Var2.b()) {
                    if (g8Var2.f == null) {
                        l0.e("MenuPopupHelper cannot be used without an anchor");
                        return false;
                    }
                    g8Var2.d(0, 0, false, false);
                }
                vc5 vc5Var = this.e;
                if (vc5Var != null) {
                    vc5Var.r(lr7Var);
                }
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.wc5
    public final boolean f() {
        int size;
        ArrayList arrayListL;
        int i;
        boolean z;
        o8 o8Var = this;
        fc5 fc5Var = o8Var.c;
        if (fc5Var != null) {
            arrayListL = fc5Var.l();
            size = arrayListL.size();
        } else {
            size = 0;
            arrayListL = null;
        }
        int i2 = o8Var.I;
        int i3 = o8Var.H;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) o8Var.n;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i = 2;
            z = true;
            if (i4 >= size) {
                break;
            }
            ic5 ic5Var = (ic5) arrayListL.get(i4);
            int i7 = ic5Var.Q;
            if ((i7 & 2) == 2) {
                i5++;
            } else if ((i7 & 1) == 1) {
                i6++;
            } else {
                z2 = true;
            }
            if (o8Var.J && ic5Var.U) {
                i2 = 0;
            }
            i4++;
        }
        if (o8Var.x && (z2 || i6 + i5 > i2)) {
            i2--;
        }
        int i8 = i2 - i5;
        SparseBooleanArray sparseBooleanArray = o8Var.K;
        sparseBooleanArray.clear();
        int i9 = 0;
        int i10 = 0;
        while (i9 < size) {
            ic5 ic5Var2 = (ic5) arrayListL.get(i9);
            int i11 = ic5Var2.Q;
            boolean z3 = (i11 & 2) == i ? z : false;
            int i12 = ic5Var2.b;
            if (z3) {
                View viewA = o8Var.a(ic5Var2, null, viewGroup);
                viewA.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewA.getMeasuredWidth();
                i3 -= measuredWidth;
                if (i10 == 0) {
                    i10 = measuredWidth;
                }
                if (i12 != 0) {
                    sparseBooleanArray.put(i12, z);
                }
                ic5Var2.f(z);
            } else {
                if ((i11 & 1) == z) {
                    boolean z4 = sparseBooleanArray.get(i12);
                    boolean z5 = ((i8 > 0 || z4) && i3 > 0) ? z : false;
                    if (z5) {
                        View viewA2 = o8Var.a(ic5Var2, null, viewGroup);
                        viewA2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        int measuredWidth2 = viewA2.getMeasuredWidth();
                        i3 -= measuredWidth2;
                        if (i10 == 0) {
                            i10 = measuredWidth2;
                        }
                        z5 &= i3 + i10 > 0;
                    }
                    if (z5 && i12 != 0) {
                        sparseBooleanArray.put(i12, true);
                    } else if (z4) {
                        sparseBooleanArray.put(i12, false);
                        for (int i13 = 0; i13 < i9; i13++) {
                            ic5 ic5Var3 = (ic5) arrayListL.get(i13);
                            if (ic5Var3.b == i12) {
                                if ((ic5Var3.P & 32) == 32) {
                                    i8++;
                                }
                                ic5Var3.f(false);
                            }
                        }
                    }
                    if (z5) {
                        i8--;
                    }
                    ic5Var2.f(z5);
                } else {
                    ic5Var2.f(false);
                }
                i9++;
                i = 2;
                o8Var = this;
                z = true;
            }
            i9++;
            i = 2;
            o8Var = this;
            z = true;
        }
        return z;
    }

    @Override // defpackage.wc5
    public final boolean g(ic5 ic5Var) {
        return false;
    }

    @Override // defpackage.wc5
    public final int getId() {
        return this.p;
    }

    @Override // defpackage.wc5
    public final void h(Parcelable parcelable) {
        int i;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof n8) && (i = ((n8) parcelable).a) > 0 && (menuItemFindItem = this.c.findItem(i)) != null) {
            e((lr7) menuItemFindItem.getSubMenu());
        }
    }

    @Override // defpackage.wc5
    public final void i(vc5 vc5Var) {
        throw null;
    }

    @Override // defpackage.wc5
    public final boolean j(ic5 ic5Var) {
        return false;
    }

    public final boolean k() {
        l8 l8Var = this.L;
        return l8Var != null && l8Var.b();
    }

    @Override // defpackage.wc5
    public final void l(Context context, fc5 fc5Var) {
        this.b = context;
        LayoutInflater.from(context);
        this.c = fc5Var;
        Resources resources = context.getResources();
        if (!this.y) {
            this.x = true;
        }
        int i = 2;
        this.G = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.I = i;
        int measuredWidth = this.G;
        if (this.x) {
            if (this.q == null) {
                k8 k8Var = new k8(this, this.a);
                this.q = k8Var;
                if (this.t) {
                    k8Var.setImageDrawable(this.r);
                    this.r = null;
                    this.t = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.q.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.q.getMeasuredWidth();
        } else {
            this.q = null;
        }
        this.H = measuredWidth;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // defpackage.wc5
    public final Parcelable m() {
        n8 n8Var = new n8();
        n8Var.a = this.Q;
        return n8Var;
    }

    public final boolean n() {
        fc5 fc5Var;
        int i = 0;
        if (this.x && !k() && (fc5Var = this.c) != null && this.n != null && this.N == null) {
            fc5Var.i();
            if (!fc5Var.q.isEmpty()) {
                i8 i8Var = new i8(i, this, new l8(this, this.b, this.c, this.q));
                this.N = i8Var;
                ((View) this.n).post(i8Var);
                return true;
            }
        }
        return false;
    }
}
