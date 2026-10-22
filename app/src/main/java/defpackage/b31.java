package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b31 extends oc5 implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public View G;
    public View H;
    public int I;
    public boolean J;
    public boolean K;
    public int L;
    public int M;
    public boolean O;
    public vc5 P;
    public ViewTreeObserver Q;
    public PopupWindow.OnDismissListener R;
    public boolean S;
    public final Context b;
    public final int c;
    public final int d;
    public final int e;
    public final boolean f;
    public final Handler k;
    public final ArrayList n = new ArrayList();
    public final ArrayList p = new ArrayList();
    public final x21 q = new x21(this);
    public final y21 r = new y21(this);
    public final zq8 t = new zq8(this, 6);
    public int x = 0;
    public int y = 0;
    public boolean N = false;

    public b31(Context context, View view, int i, int i2, boolean z) {
        this.b = context;
        this.G = view;
        this.d = i;
        this.e = i2;
        this.f = z;
        this.I = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.k = new Handler();
    }

    @Override // defpackage.af7
    public final boolean a() {
        ArrayList arrayList = this.p;
        return arrayList.size() > 0 && ((a31) arrayList.get(0)).a.R.isShowing();
    }

    @Override // defpackage.af7
    public final void b() {
        if (a()) {
            return;
        }
        ArrayList arrayList = this.n;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            w((fc5) it.next());
        }
        arrayList.clear();
        View view = this.G;
        this.H = view;
        if (view != null) {
            boolean z = this.Q == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.Q = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.q);
            }
            this.H.addOnAttachStateChangeListener(this.r);
        }
    }

    @Override // defpackage.wc5
    public final void c(boolean z) {
        Iterator it = this.p.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((a31) it.next()).a.c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((cc5) adapter).notifyDataSetChanged();
        }
    }

    @Override // defpackage.wc5
    public final void d(fc5 fc5Var, boolean z) {
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (fc5Var == ((a31) arrayList.get(i)).b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < arrayList.size()) {
            ((a31) arrayList.get(i2)).b.c(false);
        }
        a31 a31Var = (a31) arrayList.remove(i);
        fc5 fc5Var2 = a31Var.b;
        uc5 uc5Var = a31Var.a;
        qo qoVar = uc5Var.R;
        fc5Var2.r(this);
        if (this.S) {
            rc5.b(qoVar, null);
            qoVar.setAnimationStyle(0);
        }
        uc5Var.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.I = ((a31) arrayList.get(size2 - 1)).c;
        } else {
            this.I = this.G.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((a31) arrayList.get(0)).b.c(false);
                return;
            }
            return;
        }
        dismiss();
        vc5 vc5Var = this.P;
        if (vc5Var != null) {
            vc5Var.d(fc5Var, true);
        }
        ViewTreeObserver viewTreeObserver = this.Q;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.Q.removeGlobalOnLayoutListener(this.q);
            }
            this.Q = null;
        }
        this.H.removeOnAttachStateChangeListener(this.r);
        this.R.onDismiss();
    }

    @Override // defpackage.af7
    public final void dismiss() {
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        if (size > 0) {
            a31[] a31VarArr = (a31[]) arrayList.toArray(new a31[size]);
            for (int i = size - 1; i >= 0; i--) {
                a31 a31Var = a31VarArr[i];
                if (a31Var.a.R.isShowing()) {
                    a31Var.a.dismiss();
                }
            }
        }
    }

    @Override // defpackage.wc5
    public final boolean e(lr7 lr7Var) {
        for (a31 a31Var : this.p) {
            if (lr7Var == a31Var.b) {
                a31Var.a.c.requestFocus();
                return true;
            }
        }
        if (!lr7Var.hasVisibleItems()) {
            return false;
        }
        n(lr7Var);
        vc5 vc5Var = this.P;
        if (vc5Var != null) {
            vc5Var.r(lr7Var);
        }
        return true;
    }

    @Override // defpackage.wc5
    public final boolean f() {
        return false;
    }

    @Override // defpackage.wc5
    public final void i(vc5 vc5Var) {
        this.P = vc5Var;
    }

    @Override // defpackage.af7
    public final bq2 k() {
        ArrayList arrayList = this.p;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((a31) dj7.e(arrayList, 1)).a.c;
    }

    @Override // defpackage.wc5
    public final Parcelable m() {
        return null;
    }

    @Override // defpackage.oc5
    public final void n(fc5 fc5Var) {
        fc5Var.b(this, this.b);
        if (a()) {
            w(fc5Var);
        } else {
            this.n.add(fc5Var);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        a31 a31Var;
        ArrayList arrayList = this.p;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                a31Var = null;
                break;
            }
            a31Var = (a31) arrayList.get(i);
            if (!a31Var.a.R.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (a31Var != null) {
            a31Var.b.c(false);
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
        if (this.G != view) {
            this.G = view;
            this.y = Gravity.getAbsoluteGravity(this.x, view.getLayoutDirection());
        }
    }

    @Override // defpackage.oc5
    public final void q(boolean z) {
        this.N = z;
    }

    @Override // defpackage.oc5
    public final void r(int i) {
        if (this.x != i) {
            this.x = i;
            this.y = Gravity.getAbsoluteGravity(i, this.G.getLayoutDirection());
        }
    }

    @Override // defpackage.oc5
    public final void s(int i) {
        this.J = true;
        this.L = i;
    }

    @Override // defpackage.oc5
    public final void t(PopupWindow.OnDismissListener onDismissListener) {
        this.R = onDismissListener;
    }

    @Override // defpackage.oc5
    public final void u(boolean z) {
        this.O = z;
    }

    @Override // defpackage.oc5
    public final void v(int i) {
        this.K = true;
        this.M = i;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0164  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void w(fc5 fc5Var) {
        boolean z;
        char c;
        View childAt;
        a31 a31Var;
        int i;
        int i2;
        MenuItem item;
        cc5 cc5Var;
        int headersCount;
        int firstVisiblePosition;
        Context context = this.b;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        cc5 cc5Var2 = new cc5(fc5Var, layoutInflaterFrom, this.f, R.layout.abc_cascading_menu_item_layout);
        if (!a() && this.N) {
            cc5Var2.c = true;
        } else if (a()) {
            int size = fc5Var.f.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    z = false;
                    break;
                }
                MenuItem item2 = fc5Var.getItem(i3);
                if (item2.isVisible() && item2.getIcon() != null) {
                    z = true;
                    break;
                }
                i3++;
            }
            cc5Var2.c = z;
        }
        int iO = oc5.o(cc5Var2, context, this.c);
        uc5 uc5Var = new uc5(context, null, this.d, this.e);
        uc5Var.U = this.t;
        uc5Var.H = this;
        qo qoVar = uc5Var.R;
        qoVar.setOnDismissListener(this);
        uc5Var.G = this.G;
        uc5Var.t = this.y;
        uc5Var.Q = true;
        qoVar.setFocusable(true);
        qoVar.setInputMethodMode(2);
        uc5Var.p(cc5Var2);
        uc5Var.r(iO);
        uc5Var.t = this.y;
        ArrayList arrayList = this.p;
        if (arrayList.size() > 0) {
            a31Var = (a31) dj7.e(arrayList, 1);
            fc5 fc5Var2 = a31Var.b;
            int size2 = fc5Var2.f.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size2) {
                    item = null;
                    break;
                }
                item = fc5Var2.getItem(i4);
                if (item.hasSubMenu() && fc5Var == item.getSubMenu()) {
                    break;
                } else {
                    i4++;
                }
            }
            if (item == null) {
                childAt = null;
                c = 0;
            } else {
                bq2 bq2Var = a31Var.a.c;
                ListAdapter adapter = bq2Var.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    cc5Var = (cc5) headerViewListAdapter.getWrappedAdapter();
                } else {
                    cc5Var = (cc5) adapter;
                    headersCount = 0;
                }
                int count = cc5Var.getCount();
                int i5 = 0;
                c = 0;
                while (true) {
                    if (i5 >= count) {
                        i5 = -1;
                        break;
                    } else if (item == cc5Var.getItem(i5)) {
                        break;
                    } else {
                        i5++;
                    }
                }
                childAt = (i5 != -1 && (firstVisiblePosition = (i5 + headersCount) - bq2Var.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < bq2Var.getChildCount()) ? bq2Var.getChildAt(firstVisiblePosition) : null;
            }
        } else {
            c = 0;
            childAt = null;
            a31Var = null;
        }
        if (childAt != null) {
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = uc5.V;
                if (method != null) {
                    try {
                        Object[] objArr = new Object[1];
                        objArr[c] = Boolean.FALSE;
                        method.invoke(qoVar, objArr);
                    } catch (Exception unused) {
                        Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                    }
                }
            } else {
                sc5.a(qoVar, c);
            }
            rc5.a(qoVar, null);
            bq2 bq2Var2 = ((a31) arrayList.get(arrayList.size() - 1)).a.c;
            int[] iArr = new int[2];
            bq2Var2.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            this.H.getWindowVisibleDisplayFrame(rect);
            if (this.I == 1) {
                if (bq2Var2.getWidth() + iArr[0] + iO > rect.right) {
                    i = 0;
                } else {
                    i = 1;
                }
            } else if (iArr[0] - iO < 0) {
                i = 1;
            } else {
                i = 0;
            }
            boolean z2 = i == 1;
            this.I = i;
            uc5Var.G = childAt;
            if ((this.y & 5) != 5) {
                i2 = 0;
                iO = z2 ? childAt.getWidth() : 0 - iO;
            } else if (z2) {
                i2 = 0;
            } else {
                i2 = 0;
                iO = 0 - childAt.getWidth();
            }
            uc5Var.f = iO;
            uc5Var.r = true;
            uc5Var.q = true;
            uc5Var.l(i2);
        } else {
            if (this.J) {
                uc5Var.f = this.L;
            }
            if (this.K) {
                uc5Var.l(this.M);
            }
            Rect rect2 = this.a;
            uc5Var.P = rect2 != null ? new Rect(rect2) : null;
        }
        arrayList.add(new a31(uc5Var, fc5Var, this.I));
        uc5Var.b();
        bq2 bq2Var3 = uc5Var.c;
        bq2Var3.setOnKeyListener(this);
        if (a31Var == null && this.O && fc5Var.x != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) bq2Var3, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(fc5Var.x);
            bq2Var3.addHeaderView(frameLayout, null, false);
            uc5Var.b();
        }
    }

    @Override // defpackage.wc5
    public final void h(Parcelable parcelable) {
    }
}
