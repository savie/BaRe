package defpackage;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import java.util.Objects;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class su8 implements View.OnApplyWindowInsetsListener {
    public final ol1 a;
    public tv8 b;

    public su8(View view, ol1 ol1Var) {
        tv8 tv8VarB;
        this.a = ol1Var;
        WeakHashMap weakHashMap = dl8.a;
        tv8 tv8VarA = vk8.a(view);
        if (tv8VarA != null) {
            int i = Build.VERSION.SDK_INT;
            tv8VarB = (i >= 36 ? new gv8(tv8VarA) : i >= 35 ? new fv8(tv8VarA) : i >= 34 ? new ev8(tv8VarA) : i >= 31 ? new dv8(tv8VarA) : i >= 30 ? new cv8(tv8VarA) : i >= 29 ? new bv8(tv8VarA) : new zu8(tv8VarA)).b();
        } else {
            tv8VarB = null;
        }
        this.b = tv8VarB;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        Interpolator interpolator;
        if (!view.isLaidOut()) {
            this.b = tv8.h(windowInsets, view);
            return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }
        tv8 tv8VarH = tv8.h(windowInsets, view);
        qv8 qv8Var = tv8VarH.a;
        if (this.b == null) {
            WeakHashMap weakHashMap = dl8.a;
            this.b = vk8.a(view);
        }
        if (this.b == null) {
            this.b = tv8VarH;
            if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                return view.onApplyWindowInsets(windowInsets);
            }
        } else {
            ol1 ol1VarJ = tu8.j(view);
            if (ol1VarJ == null || !Objects.equals((tv8) ol1VarJ.b, tv8VarH)) {
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                tv8 tv8Var = this.b;
                int i = 1;
                while (i <= 512) {
                    vc4 vc4VarH = qv8Var.h(i);
                    vc4 vc4VarH2 = tv8Var.a.h(i);
                    int i2 = vc4VarH.a;
                    int i3 = vc4VarH.d;
                    int i4 = vc4VarH.c;
                    int i5 = vc4VarH.b;
                    int i6 = vc4VarH2.a;
                    int i7 = vc4VarH2.d;
                    int[] iArr3 = iArr;
                    int i8 = vc4VarH2.c;
                    int i9 = vc4VarH2.b;
                    boolean z = i2 > i6 || i5 > i9 || i4 > i8 || i3 > i7;
                    if (z != (i2 < i6 || i5 < i9 || i4 < i8 || i3 < i7)) {
                        if (z) {
                            iArr3[0] = iArr3[0] | i;
                        } else {
                            iArr2[0] = iArr2[0] | i;
                        }
                    }
                    i <<= 1;
                    iArr = iArr3;
                    iArr2 = iArr2;
                }
                int i10 = iArr[0];
                int i11 = iArr2[0];
                int i12 = i10 | i11;
                if (i12 == 0) {
                    this.b = tv8VarH;
                    if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                        return view.onApplyWindowInsets(windowInsets);
                    }
                } else {
                    tv8 tv8Var2 = this.b;
                    if ((i10 & 8) != 0) {
                        interpolator = tu8.e;
                    } else if ((i11 & 8) != 0) {
                        interpolator = tu8.f;
                    } else if ((i10 & 519) != 0) {
                        interpolator = tu8.g;
                    } else {
                        interpolator = (i11 & 519) != 0 ? tu8.h : null;
                    }
                    yu8 yu8Var = new yu8(i12, interpolator, (i12 & 8) != 0 ? 160L : 250L);
                    yu8Var.a.e(0.0f);
                    ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(yu8Var.a.b());
                    vc4 vc4VarH3 = qv8Var.h(i12);
                    vc4 vc4VarH4 = tv8Var2.a.h(i12);
                    int iMin = Math.min(vc4VarH3.a, vc4VarH4.a);
                    int i13 = vc4VarH3.b;
                    int i14 = vc4VarH4.b;
                    int iMin2 = Math.min(i13, i14);
                    int i15 = vc4VarH3.c;
                    int i16 = vc4VarH4.c;
                    int iMin3 = Math.min(i15, i16);
                    int i17 = vc4VarH3.d;
                    int i18 = vc4VarH4.d;
                    l39 l39Var = new l39(9, vc4.c(iMin, iMin2, iMin3, Math.min(i17, i18)), vc4.c(Math.max(vc4VarH3.a, vc4VarH4.a), Math.max(i13, i14), Math.max(i15, i16), Math.max(i17, i18)));
                    tu8.g(view, yu8Var, tv8VarH, false);
                    duration.addUpdateListener(new pu8(yu8Var, tv8VarH, tv8Var2, i12, view));
                    duration.addListener(new qu8(yu8Var, view));
                    yt5.a(view, new ru8(view, yu8Var, l39Var, duration));
                    this.b = tv8VarH;
                    if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                        return view.onApplyWindowInsets(windowInsets);
                    }
                }
            } else if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                return view.onApplyWindowInsets(windowInsets);
            }
        }
        return windowInsets;
    }
}
