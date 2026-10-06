package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import com.jcraft.jsch.SftpATTRS;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ky4 implements af7 {
    public static final Method S;
    public static final Method T;
    public View G;
    public AdapterView.OnItemClickListener H;
    public AdapterView.OnItemSelectedListener I;
    public final Handler N;
    public Rect P;
    public boolean Q;
    public final qo R;
    public final Context a;
    public ListAdapter b;
    public bq2 c;
    public int f;
    public int k;
    public boolean p;
    public boolean q;
    public boolean r;
    public hy4 y;
    public final int d = -2;
    public int e = -2;
    public final int n = 1002;
    public int t = 0;
    public final int x = Integer.MAX_VALUE;
    public final aq2 J = new aq2(this, 1);
    public final jy4 K = new jy4(this);
    public final iy4 L = new iy4(this);
    public final hm0 M = new hm0(this, 2);
    public final Rect O = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                S = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                T = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    public ky4(Context context, AttributeSet attributeSet, int i, int i2) {
        int resourceId;
        this.a = context;
        this.N = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ge6.o, i, i2);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.k = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.p = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        qo qoVar = new qo(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, ge6.s, i, i2);
        if (typedArrayObtainStyledAttributes2.hasValue(2)) {
            qoVar.setOverlapAnchor(typedArrayObtainStyledAttributes2.getBoolean(2, false));
        }
        qoVar.setBackgroundDrawable((!typedArrayObtainStyledAttributes2.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes2.getDrawable(0) : iz1.m(context, resourceId));
        typedArrayObtainStyledAttributes2.recycle();
        this.R = qoVar;
        qoVar.setInputMethodMode(1);
    }

    @Override // defpackage.af7
    public final boolean a() {
        return this.R.isShowing();
    }

    @Override // defpackage.af7
    public final void b() {
        int i;
        int iMakeMeasureSpec;
        int paddingBottom;
        bq2 bq2Var;
        bq2 bq2Var2 = this.c;
        Context context = this.a;
        qo qoVar = this.R;
        if (bq2Var2 == null) {
            bq2 bq2VarQ = q(context, !this.Q);
            this.c = bq2VarQ;
            bq2VarQ.setAdapter(this.b);
            this.c.setOnItemClickListener(this.H);
            this.c.setFocusable(true);
            this.c.setFocusableInTouchMode(true);
            this.c.setOnItemSelectedListener(new ey4(this));
            this.c.setOnScrollListener(this.L);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.I;
            if (onItemSelectedListener != null) {
                this.c.setOnItemSelectedListener(onItemSelectedListener);
            }
            qoVar.setContentView(this.c);
        }
        Drawable background = qoVar.getBackground();
        Rect rect = this.O;
        if (background != null) {
            background.getPadding(rect);
            int i2 = rect.top;
            i = rect.bottom + i2;
            if (!this.p) {
                this.k = -i2;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        int iA = fy4.a(qoVar, this.G, this.k, qoVar.getInputMethodMode() == 2);
        int i3 = this.d;
        if (i3 == -1) {
            paddingBottom = iA + i;
        } else {
            int i4 = this.e;
            if (i4 != -2) {
                iMakeMeasureSpec = i4 != -1 ? View.MeasureSpec.makeMeasureSpec(i4, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
            }
            int iA2 = this.c.a(iMakeMeasureSpec, iA);
            paddingBottom = iA2 + (iA2 > 0 ? this.c.getPaddingBottom() + this.c.getPaddingTop() + i : 0);
        }
        boolean z = qoVar.getInputMethodMode() == 2;
        qoVar.setWindowLayoutType(this.n);
        if (qoVar.isShowing()) {
            if (this.G.isAttachedToWindow()) {
                int width = this.e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.G.getWidth();
                }
                if (i3 == -1) {
                    i3 = z ? paddingBottom : -1;
                    int i5 = this.e;
                    if (z) {
                        qoVar.setWidth(i5 == -1 ? -1 : 0);
                        qoVar.setHeight(0);
                    } else {
                        qoVar.setWidth(i5 == -1 ? -1 : 0);
                        qoVar.setHeight(-1);
                    }
                } else if (i3 == -2) {
                    i3 = paddingBottom;
                }
                qoVar.setOutsideTouchable(true);
                int i6 = width;
                View view = this.G;
                int i7 = this.f;
                int i8 = this.k;
                int i9 = i6 < 0 ? -1 : i6;
                if (i3 < 0) {
                    i3 = -1;
                }
                qoVar.update(view, i7, i8, i9, i3);
                return;
            }
            return;
        }
        int width2 = this.e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.G.getWidth();
        }
        if (i3 == -1) {
            i3 = -1;
        } else if (i3 == -2) {
            i3 = paddingBottom;
        }
        qoVar.setWidth(width2);
        qoVar.setHeight(i3);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = S;
            if (method != null) {
                try {
                    method.invoke(qoVar, Boolean.TRUE);
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            gy4.b(qoVar, true);
        }
        qoVar.setOutsideTouchable(true);
        qoVar.setTouchInterceptor(this.K);
        if (this.r) {
            qoVar.setOverlapAnchor(this.q);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = T;
            if (method2 != null) {
                try {
                    method2.invoke(qoVar, this.P);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            gy4.a(qoVar, this.P);
        }
        qoVar.showAsDropDown(this.G, this.f, this.k, this.t);
        this.c.setSelection(-1);
        if ((!this.Q || this.c.isInTouchMode()) && (bq2Var = this.c) != null) {
            bq2Var.setListSelectionHidden(true);
            bq2Var.requestLayout();
        }
        if (this.Q) {
            return;
        }
        this.N.post(this.M);
    }

    public final int c() {
        return this.f;
    }

    @Override // defpackage.af7
    public final void dismiss() {
        qo qoVar = this.R;
        qoVar.dismiss();
        qoVar.setContentView(null);
        this.c = null;
        this.N.removeCallbacks(this.J);
    }

    public final void e(int i) {
        this.f = i;
    }

    public final Drawable g() {
        return this.R.getBackground();
    }

    public final void i(Drawable drawable) {
        this.R.setBackgroundDrawable(drawable);
    }

    @Override // defpackage.af7
    public final bq2 k() {
        return this.c;
    }

    public final void l(int i) {
        this.k = i;
        this.p = true;
    }

    public final int o() {
        if (this.p) {
            return this.k;
        }
        return 0;
    }

    public void p(ListAdapter listAdapter) {
        hy4 hy4Var = this.y;
        if (hy4Var == null) {
            this.y = new hy4(this);
        } else {
            ListAdapter listAdapter2 = this.b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(hy4Var);
            }
        }
        this.b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.y);
        }
        bq2 bq2Var = this.c;
        if (bq2Var != null) {
            bq2Var.setAdapter(this.b);
        }
    }

    public bq2 q(Context context, boolean z) {
        return new bq2(context, z);
    }

    public final void r(int i) {
        Drawable background = this.R.getBackground();
        if (background == null) {
            this.e = i;
            return;
        }
        Rect rect = this.O;
        background.getPadding(rect);
        this.e = rect.left + rect.right + i;
    }
}
