package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yl6 {
    public static yl6 g;
    public WeakHashMap a;
    public final WeakHashMap b = new WeakHashMap(0);
    public TypedValue c;
    public boolean d;
    public io e;
    public static final PorterDuff.Mode f = PorterDuff.Mode.SRC_IN;
    public static final xl6 h = new xl6(6);

    public static synchronized yl6 c() {
        try {
            if (g == null) {
                g = new yl6();
            }
        } catch (Throwable th) {
            throw th;
        }
        return g;
    }

    public static synchronized PorterDuffColorFilter f(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        xl6 xl6Var = h;
        xl6Var.getClass();
        int i2 = (31 + i) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) xl6Var.h(Integer.valueOf(mode.hashCode() + i2));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
        }
        return porterDuffColorFilter;
    }

    public final void a(Context context, int i, ColorStateList colorStateList) {
        if (this.a == null) {
            this.a = new WeakHashMap();
        }
        yj7 yj7Var = (yj7) this.a.get(context);
        if (yj7Var == null) {
            yj7Var = new yj7();
            this.a.put(context, yj7Var);
        }
        int i2 = yj7Var.c;
        if (i2 != 0 && i <= yj7Var.a[i2 - 1]) {
            yj7Var.b(i, colorStateList);
            return;
        }
        if (i2 >= yj7Var.a.length) {
            int i3 = (i2 + 1) * 4;
            for (int i4 = 4; i4 < 32; i4++) {
                int i5 = (1 << i4) - 12;
                if (i3 <= i5) {
                    i3 = i5;
                    break;
                }
            }
            int i6 = i3 / 4;
            yj7Var.a = Arrays.copyOf(yj7Var.a, i6);
            yj7Var.b = Arrays.copyOf(yj7Var.b, i6);
        }
        yj7Var.a[i2] = i;
        yj7Var.b[i2] = colorStateList;
        yj7Var.c = i2 + 1;
    }

    public final Drawable b(Context context, int i) {
        LayerDrawable layerDrawableC;
        WeakReference weakReference;
        Drawable drawableNewDrawable;
        if (this.c == null) {
            this.c = new TypedValue();
        }
        TypedValue typedValue = this.c;
        context.getResources().getValue(i, typedValue, true);
        long j = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        synchronized (this) {
            v15 v15Var = (v15) this.b.get(context);
            layerDrawableC = null;
            if (v15Var != null && (weakReference = (WeakReference) v15Var.b(j)) != null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                if (constantState != null) {
                    drawableNewDrawable = constantState.newDrawable(context.getResources());
                } else {
                    int iF = g67.f(v15Var.d, j, v15Var.b);
                    if (iF >= 0) {
                        Object[] objArr = v15Var.c;
                        Object obj = objArr[iF];
                        Object obj2 = z85.c;
                        if (obj != obj2) {
                            objArr[iF] = obj2;
                            v15Var.a = true;
                        }
                    }
                }
            }
            drawableNewDrawable = null;
        }
        if (drawableNewDrawable != null) {
            return drawableNewDrawable;
        }
        if (this.e != null) {
            if (i == R.drawable.abc_cab_background_top_material) {
                layerDrawableC = new LayerDrawable(new Drawable[]{d(context, R.drawable.abc_cab_background_internal_bg), d(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i == R.drawable.abc_ratingbar_material) {
                layerDrawableC = io.c(this, context, R.dimen.abc_star_big);
            } else if (i == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableC = io.c(this, context, R.dimen.abc_star_medium);
            } else if (i == R.drawable.abc_ratingbar_small_material) {
                layerDrawableC = io.c(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableC == null) {
            return layerDrawableC;
        }
        layerDrawableC.setChangingConfigurations(typedValue.changingConfigurations);
        synchronized (this) {
            try {
                Drawable.ConstantState constantState2 = layerDrawableC.getConstantState();
                if (constantState2 == null) {
                    return layerDrawableC;
                }
                v15 v15Var2 = (v15) this.b.get(context);
                if (v15Var2 == null) {
                    v15Var2 = new v15();
                    this.b.put(context, v15Var2);
                }
                v15Var2.e(new WeakReference(constantState2), j);
                return layerDrawableC;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized Drawable d(Context context, int i) {
        return e(context, i, false);
    }

    public final synchronized Drawable e(Context context, int i, boolean z) {
        Drawable drawableB;
        try {
            if (!this.d) {
                this.d = true;
                Drawable drawableD = d(context, R.drawable.abc_vector_test);
                if (drawableD == null || (!(drawableD instanceof rj8) && !"android.graphics.drawable.VectorDrawable".equals(drawableD.getClass().getName()))) {
                    this.d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableB = b(context, i);
            if (drawableB == null) {
                drawableB = context.getDrawable(i);
            }
            if (drawableB != null) {
                drawableB = h(context, i, z, drawableB);
            }
            if (drawableB != null) {
                fp2.a(drawableB);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableB;
    }

    public final synchronized ColorStateList g(Context context, int i) {
        ColorStateList colorStateList;
        yj7 yj7Var;
        WeakHashMap weakHashMap = this.a;
        ColorStateList colorStateListD = null;
        colorStateList = (weakHashMap == null || (yj7Var = (yj7) weakHashMap.get(context)) == null) ? null : (ColorStateList) yj7Var.a(i);
        if (colorStateList == null) {
            io ioVar = this.e;
            if (ioVar != null) {
                colorStateListD = ioVar.d(context, i);
            }
            if (colorStateListD != null) {
                a(context, i, colorStateListD);
            }
            colorStateList = colorStateListD;
        }
        return colorStateList;
    }

    public final Drawable h(Context context, int i, boolean z, Drawable drawable) {
        boolean z2;
        int iRound;
        ColorStateList colorStateListG = g(context, i);
        PorterDuff.Mode mode = null;
        if (colorStateListG != null) {
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setTintList(colorStateListG);
            if (this.e != null && i == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode != null) {
                drawableMutate.setTintMode(mode);
            }
            return drawableMutate;
        }
        io ioVar = this.e;
        int i2 = R.attr.colorControlNormal;
        if (ioVar != null) {
            if (i == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int iC = i28.c(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode2 = jo.b;
                io.e(drawableFindDrawableByLayerId, iC, mode2);
                io.e(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), i28.c(context, R.attr.colorControlNormal), mode2);
                io.e(layerDrawable.findDrawableByLayerId(android.R.id.progress), i28.c(context, R.attr.colorControlActivated), mode2);
                return drawable;
            }
            if (i == R.drawable.abc_ratingbar_material || i == R.drawable.abc_ratingbar_indicator_material || i == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                int iB = i28.b(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode3 = jo.b;
                io.e(drawableFindDrawableByLayerId2, iB, mode3);
                io.e(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), i28.c(context, R.attr.colorControlActivated), mode3);
                io.e(layerDrawable2.findDrawableByLayerId(android.R.id.progress), i28.c(context, R.attr.colorControlActivated), mode3);
                return drawable;
            }
        }
        io ioVar2 = this.e;
        boolean z3 = false;
        if (ioVar2 != null) {
            PorterDuff.Mode mode4 = jo.b;
            if (io.a(ioVar2.a, i)) {
                z2 = true;
                iRound = -1;
            } else {
                if (io.a(ioVar2.c, i)) {
                    i2 = R.attr.colorControlActivated;
                } else {
                    boolean zA = io.a(ioVar2.d, i);
                    i2 = android.R.attr.colorBackground;
                    if (zA) {
                        mode4 = PorterDuff.Mode.MULTIPLY;
                    } else if (i == R.drawable.abc_list_divider_mtrl_alpha) {
                        iRound = Math.round(40.8f);
                        i2 = android.R.attr.colorForeground;
                        z2 = true;
                    } else {
                        if (i != R.drawable.abc_dialog_material_background) {
                            z2 = false;
                            i2 = 0;
                        }
                        iRound = -1;
                    }
                }
                z2 = true;
                iRound = -1;
            }
            if (z2) {
                Drawable drawableMutate2 = drawable.mutate();
                drawableMutate2.setColorFilter(jo.c(i28.c(context, i2), mode4));
                if (iRound != -1) {
                    drawableMutate2.setAlpha(iRound);
                }
                z3 = true;
            }
        }
        if (z3 || !z) {
            return drawable;
        }
        return null;
    }
}
