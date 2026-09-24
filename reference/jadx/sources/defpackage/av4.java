package defpackage;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class av4 {
    public int a = -1;
    public RecyclerView b;
    public a c;
    public boolean d;
    public boolean e;
    public View f;
    public final zg6 g;
    public boolean h;
    public final LinearInterpolator i;
    public final DecelerateInterpolator j;
    public PointF k;
    public final DisplayMetrics l;
    public boolean m;
    public float n;
    public int o;
    public int p;

    public av4(Context context) {
        zg6 zg6Var = new zg6();
        zg6Var.d = -1;
        zg6Var.f = false;
        zg6Var.g = 0;
        zg6Var.a = 0;
        zg6Var.b = 0;
        zg6Var.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        zg6Var.e = null;
        this.g = zg6Var;
        this.i = new LinearInterpolator();
        this.j = new DecelerateInterpolator();
        this.m = false;
        this.o = 0;
        this.p = 0;
        this.l = context.getResources().getDisplayMetrics();
    }

    public static int a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                return i4 - i2;
            }
            c6.f("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
            return 0;
        }
        int i6 = i3 - i;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i4 - i2;
        if (i7 < 0) {
            return i7;
        }
        return 0;
    }

    public int b(View view, int i) {
        a aVar = this.c;
        if (aVar == null || !aVar.o()) {
            return 0;
        }
        qg6 qg6Var = (qg6) view.getLayoutParams();
        return a(a.L(view) - ((ViewGroup.MarginLayoutParams) qg6Var).leftMargin, a.O(view) + ((ViewGroup.MarginLayoutParams) qg6Var).rightMargin, aVar.getPaddingLeft(), aVar.y - aVar.getPaddingRight(), i);
    }

    public int c(View view, int i) {
        a aVar = this.c;
        if (aVar == null || !aVar.p()) {
            return 0;
        }
        qg6 qg6Var = (qg6) view.getLayoutParams();
        return a(a.P(view) - ((ViewGroup.MarginLayoutParams) qg6Var).topMargin, a.J(view) + ((ViewGroup.MarginLayoutParams) qg6Var).bottomMargin, aVar.getPaddingTop(), aVar.G - aVar.getPaddingBottom(), i);
    }

    public float d(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public final int e(int i) {
        float fAbs = Math.abs(i);
        if (!this.m) {
            this.n = d(this.l);
            this.m = true;
        }
        return (int) Math.ceil(fAbs * this.n);
    }

    public PointF f(int i) {
        Object obj = this.c;
        if (obj instanceof ah6) {
            return ((ah6) obj).a(i);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + ah6.class.getCanonicalName());
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0071  */
    /* JADX WARN: Code duplicated, block: B:43:0x0085  */
    /* JADX WARN: Code duplicated, block: B:71:0x014c  */
    public final void g(int i, int i2) {
        int i3;
        PointF pointFF;
        RecyclerView recyclerView = this.b;
        int i4 = -1;
        if (this.a == -1 || recyclerView == null) {
            h();
        }
        if (this.d && this.f == null && this.c != null && (pointFF = f(this.a)) != null) {
            float f = pointFF.x;
            if (f != 0.0f || pointFF.y != 0.0f) {
                recyclerView.e0((int) Math.signum(f), (int) Math.signum(pointFF.y), null);
            }
        }
        this.d = false;
        View view = this.f;
        zg6 zg6Var = this.g;
        if (view != null) {
            this.b.getClass();
            fh6 fh6VarL = RecyclerView.L(view);
            if ((fh6VarL != null ? fh6VarL.c() : -1) == this.a) {
                View view2 = this.f;
                bh6 bh6Var = recyclerView.x0;
                PointF pointF = this.k;
                if (pointF != null) {
                    float f2 = pointF.x;
                    if (f2 == 0.0f) {
                        i3 = 0;
                    } else {
                        i3 = f2 > 0.0f ? 1 : -1;
                    }
                } else {
                    i3 = 0;
                }
                int iB = b(view2, i3);
                PointF pointF2 = this.k;
                if (pointF2 != null) {
                    float f3 = pointF2.y;
                    if (f3 == 0.0f) {
                        i4 = 0;
                    } else if (f3 > 0.0f) {
                        i4 = 1;
                    }
                } else {
                    i4 = 0;
                }
                int iC = c(view2, i4);
                int iCeil = (int) Math.ceil(((double) e((int) Math.sqrt((iC * iC) + (iB * iB)))) / 0.3356d);
                if (iCeil > 0) {
                    zg6Var.a = -iB;
                    zg6Var.b = -iC;
                    zg6Var.c = iCeil;
                    zg6Var.e = this.j;
                    zg6Var.f = true;
                }
                zg6Var.a(recyclerView);
                h();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f = null;
            }
        }
        if (this.e) {
            bh6 bh6Var2 = recyclerView.x0;
            if (this.b.y.G() == 0) {
                h();
            } else {
                int i5 = this.o;
                int i6 = i5 - i;
                if (i5 * i6 <= 0) {
                    i6 = 0;
                }
                this.o = i6;
                int i7 = this.p;
                int i8 = i7 - i2;
                if (i7 * i8 <= 0) {
                    i8 = 0;
                }
                this.p = i8;
                if (i6 == 0 && i8 == 0) {
                    PointF pointFF2 = f(this.a);
                    if (pointFF2 != null) {
                        float f4 = pointFF2.x;
                        if (f4 == 0.0f && pointFF2.y == 0.0f) {
                            zg6Var.d = this.a;
                            h();
                        } else {
                            float f5 = pointFF2.y;
                            float fSqrt = (float) Math.sqrt((f5 * f5) + (f4 * f4));
                            float f6 = pointFF2.x / fSqrt;
                            pointFF2.x = f6;
                            float f7 = pointFF2.y / fSqrt;
                            pointFF2.y = f7;
                            this.k = pointFF2;
                            this.o = (int) (f6 * 10000.0f);
                            this.p = (int) (f7 * 10000.0f);
                            int iE = e(yr5.p);
                            int i9 = (int) (this.o * 1.2f);
                            int i10 = (int) (this.p * 1.2f);
                            zg6Var.a = i9;
                            zg6Var.b = i10;
                            zg6Var.c = (int) (iE * 1.2f);
                            zg6Var.e = this.i;
                            zg6Var.f = true;
                        }
                    } else {
                        zg6Var.d = this.a;
                        h();
                    }
                }
            }
            boolean z = zg6Var.d >= 0;
            zg6Var.a(recyclerView);
            if (z && this.e) {
                this.d = true;
                recyclerView.u0.b();
            }
        }
    }

    public final void h() {
        if (this.e) {
            this.e = false;
            this.p = 0;
            this.o = 0;
            this.k = null;
            this.b.x0.a = -1;
            this.f = null;
            this.a = -1;
            this.d = false;
            a aVar = this.c;
            if (aVar.e == this) {
                aVar.e = null;
            }
            this.c = null;
            this.b = null;
        }
    }
}
