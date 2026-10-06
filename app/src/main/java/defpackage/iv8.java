package defpackage;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class iv8 extends qv8 {
    public static boolean m = false;
    public static Method n;
    public static Class o;
    public static Field p;
    public static Field q;
    public final WindowInsets c;
    public vc4[] d;
    public vc4 e;
    public tv8 f;
    public vc4 g;
    public int h;
    public int i;
    public int j;
    public Rect[][] k;
    public Rect[][] l;

    public iv8(tv8 tv8Var, WindowInsets windowInsets) {
        super(tv8Var);
        this.e = null;
        this.k = new Rect[10][];
        this.l = new Rect[10][];
        this.c = windowInsets;
    }

    private gn2 A(View view) {
        Display display;
        if (view == null || (display = view.getDisplay()) == null) {
            return null;
        }
        Point point = new Point();
        display.getRealSize(point);
        if (this.a.a.s()) {
            return gn2.a(point.x, point.y, true, 0, 0, 0, 0);
        }
        oq6 oq6VarA = f76.a(display, 0);
        oq6 oq6VarA2 = f76.a(display, 1);
        oq6 oq6VarA3 = f76.a(display, 2);
        oq6 oq6VarA4 = f76.a(display, 3);
        return gn2.a(point.x, point.y, false, oq6VarA != null ? oq6VarA.b : 0, oq6VarA2 != null ? oq6VarA2.b : 0, oq6VarA3 != null ? oq6VarA3.b : 0, oq6VarA4 != null ? oq6VarA4.b : 0);
    }

    private static List<Rect> B(Rect[][] rectArr, int i) {
        Rect[] rectArr2;
        Rect[] rectArr3 = null;
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0 && (rectArr2 = rectArr[x13.A(i2)]) != null) {
                if (rectArr3 == null) {
                    rectArr3 = rectArr2;
                } else {
                    Rect[] rectArr4 = new Rect[rectArr3.length + rectArr2.length];
                    System.arraycopy(rectArr3, 0, rectArr4, 0, rectArr3.length);
                    System.arraycopy(rectArr2, 0, rectArr4, rectArr3.length, rectArr2.length);
                    rectArr3 = rectArr4;
                }
            }
        }
        return rectArr3 == null ? Collections.EMPTY_LIST : Arrays.asList(rectArr3);
    }

    private Rect[] C(vc4 vc4Var) {
        ArrayList arrayList = new ArrayList();
        int i = vc4Var.a;
        int i2 = vc4Var.d;
        int i3 = vc4Var.c;
        int i4 = vc4Var.b;
        if (i != 0) {
            arrayList.add(new Rect(0, 0, vc4Var.a, this.i));
        }
        if (i4 != 0) {
            arrayList.add(new Rect(0, 0, this.j, i4));
        }
        if (i3 != 0) {
            int i5 = this.j;
            arrayList.add(new Rect(i5 - i3, 0, i5, this.i));
        }
        if (i2 != 0) {
            int i6 = this.i;
            arrayList.add(new Rect(0, i6 - i2, this.j, i6));
        }
        return (Rect[]) arrayList.toArray(new Rect[arrayList.size()]);
    }

    private vc4 D(int i, boolean z) {
        vc4 vc4VarA = vc4.e;
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0) {
                vc4VarA = vc4.a(vc4VarA, E(i2, z));
            }
        }
        return vc4VarA;
    }

    private vc4 F() {
        tv8 tv8Var = this.f;
        return tv8Var != null ? tv8Var.a.k() : vc4.e;
    }

    private vc4 G(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            g84.j("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            return null;
        }
        if (!m) {
            H();
        }
        Method method = n;
        if (method != null && o != null && p != null) {
            try {
                Object objInvoke = method.invoke(view, null);
                if (objInvoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) p.get(q.get(objInvoke));
                if (rect != null) {
                    return vc4.c(rect.left, rect.top, rect.right, rect.bottom);
                }
                return null;
            } catch (ReflectiveOperationException e) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
        }
        return null;
    }

    private static void H() {
        try {
            n = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            o = cls;
            p = cls.getDeclaredField("mVisibleInsets");
            q = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            p.setAccessible(true);
            q.setAccessible(true);
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
        }
        m = true;
    }

    public static boolean J(int i, int i2) {
        return (i & 6) == (i2 & 6);
    }

    public vc4 E(int i, boolean z) {
        vc4 vc4VarK;
        int i2;
        vc4 vc4Var = vc4.e;
        if (i != 1) {
            if (i != 2) {
                if (i == 8) {
                    vc4[] vc4VarArr = this.d;
                    vc4VarK = vc4VarArr != null ? vc4VarArr[x13.A(8)] : null;
                    if (vc4VarK != null) {
                        return vc4VarK;
                    }
                    vc4 vc4VarM = m();
                    vc4 vc4VarF = F();
                    int i3 = vc4VarM.d;
                    if (i3 > vc4VarF.d) {
                        return vc4.c(0, 0, 0, i3);
                    }
                    vc4 vc4Var2 = this.g;
                    if (vc4Var2 != null && !vc4Var2.equals(vc4Var) && (i2 = this.g.d) > vc4VarF.d) {
                        return vc4.c(0, 0, 0, i2);
                    }
                } else {
                    if (i == 16) {
                        return l();
                    }
                    if (i == 32) {
                        return j();
                    }
                    if (i == 64) {
                        return n();
                    }
                    if (i == 128) {
                        tv8 tv8Var = this.f;
                        en2 en2VarG = tv8Var != null ? tv8Var.a.g() : g();
                        if (en2VarG != null) {
                            int i4 = Build.VERSION.SDK_INT;
                            return vc4.c(i4 >= 28 ? cf.i(en2VarG.a) : 0, i4 >= 28 ? cf.k(en2VarG.a) : 0, i4 >= 28 ? cf.j(en2VarG.a) : 0, i4 >= 28 ? cf.h(en2VarG.a) : 0);
                        }
                    }
                }
            } else {
                if (z) {
                    vc4 vc4VarF2 = F();
                    vc4 vc4VarK2 = k();
                    return vc4.c(Math.max(vc4VarF2.a, vc4VarK2.a), 0, Math.max(vc4VarF2.c, vc4VarK2.c), Math.max(vc4VarF2.d, vc4VarK2.d));
                }
                if ((this.h & 2) == 0) {
                    vc4 vc4VarM2 = m();
                    tv8 tv8Var2 = this.f;
                    vc4VarK = tv8Var2 != null ? tv8Var2.a.k() : null;
                    int iMin = vc4VarM2.d;
                    if (vc4VarK != null) {
                        iMin = Math.min(iMin, vc4VarK.d);
                    }
                    return vc4.c(vc4VarM2.a, 0, vc4VarM2.c, iMin);
                }
            }
        } else {
            if (z) {
                return vc4.c(0, Math.max(F().b, m().b), 0, 0);
            }
            if ((this.h & 4) == 0) {
                return vc4.c(0, m().b, 0, 0);
            }
        }
        return vc4Var;
    }

    public void I(vc4 vc4Var) {
        this.g = vc4Var;
    }

    @Override // defpackage.qv8
    public void d(View view) {
        this.j = view.getWidth();
        this.i = view.getHeight();
        vc4 vc4VarG = G(view);
        if (vc4VarG == null) {
            vc4VarG = vc4.e;
        }
        I(vc4VarG);
    }

    @Override // defpackage.qv8
    public List<Rect> e(int i) {
        return B(this.k, i);
    }

    @Override // defpackage.qv8
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        iv8 iv8Var = (iv8) obj;
        return Objects.equals(this.g, iv8Var.g) && J(this.h, iv8Var.h);
    }

    @Override // defpackage.qv8
    public List<Rect> f(int i) {
        return B(this.l, i);
    }

    @Override // defpackage.qv8
    public vc4 h(int i) {
        return D(i, false);
    }

    @Override // defpackage.qv8
    public vc4 i(int i) {
        return D(i, true);
    }

    @Override // defpackage.qv8
    public final vc4 m() {
        if (this.e == null) {
            WindowInsets windowInsets = this.c;
            this.e = vc4.c(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.e;
    }

    @Override // defpackage.qv8
    public void o(View view) {
        A(view);
    }

    @Override // defpackage.qv8
    public void p() {
        for (int i = 1; i <= 512; i <<= 1) {
            int iA = x13.A(i);
            this.k[iA] = C(h(i));
            if (i != 8) {
                this.l[iA] = C(i(i));
            }
        }
    }

    @Override // defpackage.qv8
    public tv8 q(int i, int i2, int i3, int i4) {
        hv8 bv8Var;
        tv8 tv8VarH = tv8.h(this.c, null);
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 36) {
            bv8Var = new gv8(tv8VarH);
        } else if (i5 >= 35) {
            bv8Var = new fv8(tv8VarH);
        } else if (i5 >= 34) {
            bv8Var = new ev8(tv8VarH);
        } else if (i5 >= 31) {
            bv8Var = new dv8(tv8VarH);
        } else if (i5 >= 30) {
            bv8Var = new cv8(tv8VarH);
        } else {
            bv8Var = i5 >= 29 ? new bv8(tv8VarH) : new zu8(tv8VarH);
        }
        bv8Var.h(tv8.e(m(), i, i2, i3, i4));
        bv8Var.f(tv8.e(k(), i, i2, i3, i4));
        return bv8Var.b();
    }

    @Override // defpackage.qv8
    public boolean s() {
        return this.c.isRound();
    }

    @Override // defpackage.qv8
    public void u(vc4[] vc4VarArr) {
        this.d = vc4VarArr;
    }

    @Override // defpackage.qv8
    public void v(tv8 tv8Var) {
        this.f = tv8Var;
    }

    @Override // defpackage.qv8
    public void x(int i) {
        this.h = i;
    }

    @Override // defpackage.qv8
    public void y(Rect[][] rectArr) {
        Objects.requireNonNull(rectArr);
        this.k = (Rect[][]) rectArr.clone();
    }

    @Override // defpackage.qv8
    public void z(Rect[][] rectArr) {
        Objects.requireNonNull(rectArr);
        this.l = (Rect[][]) rectArr.clone();
    }

    @Override // defpackage.qv8
    public void t(gn2 gn2Var) {
    }
}
