package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tb7 implements rb7 {
    public static final vi6 m = new vi6(0.5f);
    public zv1 a = new pq6();
    public zv1 b = new pq6();
    public zv1 c = new pq6();
    public zv1 d = new pq6();
    public lx1 e = new f3(0.0f);
    public lx1 f = new f3(0.0f);
    public lx1 g = new f3(0.0f);
    public lx1 h = new f3(0.0f);
    public us2 i;
    public us2 j;
    public us2 k;
    public us2 l;

    public tb7() {
        int i = 0;
        this.i = new us2(i);
        this.j = new us2(i);
        this.k = new us2(i);
        this.l = new us2(i);
    }

    public static sb7 g(Context context, int i, int i2) {
        f3 f3Var = new f3(0.0f);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper.getTheme().applyStyle(i2, true);
        }
        return j(contextThemeWrapper.obtainStyledAttributes(td6.P), f3Var);
    }

    public static sb7 h(Context context, AttributeSet attributeSet, int i, int i2) {
        return i(context, attributeSet, i, i2, new f3(0.0f));
    }

    public static sb7 i(Context context, AttributeSet attributeSet, int i, int i2, lx1 lx1Var) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.D, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, resourceId);
        if (resourceId2 != 0) {
            contextThemeWrapper.getTheme().applyStyle(resourceId2, true);
        }
        return j(contextThemeWrapper.obtainStyledAttributes(td6.P), lx1Var);
    }

    public static sb7 j(TypedArray typedArray, lx1 lx1Var) {
        try {
            int i = typedArray.getInt(0, 0);
            int i2 = typedArray.getInt(3, i);
            int i3 = typedArray.getInt(4, i);
            int i4 = typedArray.getInt(2, i);
            int i5 = typedArray.getInt(1, i);
            lx1 lx1VarK = k(typedArray, 5, lx1Var);
            lx1 lx1VarK2 = k(typedArray, 8, lx1VarK);
            lx1 lx1VarK3 = k(typedArray, 9, lx1VarK);
            lx1 lx1VarK4 = k(typedArray, 7, lx1VarK);
            lx1 lx1VarK5 = k(typedArray, 6, lx1VarK);
            sb7 sb7Var = new sb7();
            sb7Var.a = xh8.e(i2);
            sb7Var.e = lx1VarK2;
            sb7Var.b = xh8.e(i3);
            sb7Var.f = lx1VarK3;
            sb7Var.c = xh8.e(i4);
            sb7Var.g = lx1VarK4;
            sb7Var.d = xh8.e(i5);
            sb7Var.h = lx1VarK5;
            return sb7Var;
        } finally {
            typedArray.recycle();
        }
    }

    public static lx1 k(TypedArray typedArray, int i, lx1 lx1Var) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue != null) {
            int i2 = typedValuePeekValue.type;
            if (i2 == 5) {
                return new f3(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new vi6(typedValuePeekValue.getFraction(1.0f, 1.0f));
            }
        }
        return lx1Var;
    }

    @Override // defpackage.rb7
    public final tb7 a(float f) {
        sb7 sb7VarM = m();
        sb7VarM.b(f);
        return sb7VarM.a();
    }

    @Override // defpackage.rb7
    public final tb7[] c() {
        return new tb7[]{this};
    }

    @Override // defpackage.rb7
    public final tb7 e(vi6 vi6Var) {
        sb7 sb7VarM = m();
        sb7VarM.e = vi6Var;
        sb7VarM.f = vi6Var;
        sb7VarM.g = vi6Var;
        sb7VarM.h = vi6Var;
        return sb7VarM.a();
    }

    @Override // defpackage.rb7
    public final boolean f() {
        return false;
    }

    public final boolean l(RectF rectF) {
        boolean z = this.l.getClass().equals(us2.class) && this.j.getClass().equals(us2.class) && this.i.getClass().equals(us2.class) && this.k.getClass().equals(us2.class);
        float fA = this.e.a(rectF);
        return z && ((this.f.a(rectF) > fA ? 1 : (this.f.a(rectF) == fA ? 0 : -1)) == 0 && (this.h.a(rectF) > fA ? 1 : (this.h.a(rectF) == fA ? 0 : -1)) == 0 && (this.g.a(rectF) > fA ? 1 : (this.g.a(rectF) == fA ? 0 : -1)) == 0) && (this.b instanceof pq6) && (this.a instanceof pq6) && (this.c instanceof pq6) && (this.d instanceof pq6);
    }

    public final sb7 m() {
        sb7 sb7Var = new sb7();
        sb7Var.a = this.a;
        sb7Var.b = this.b;
        sb7Var.c = this.c;
        sb7Var.d = this.d;
        sb7Var.e = this.e;
        sb7Var.f = this.f;
        sb7Var.g = this.g;
        sb7Var.h = this.h;
        sb7Var.i = this.i;
        sb7Var.j = this.j;
        sb7Var.k = this.k;
        sb7Var.l = this.l;
        return sb7Var;
    }

    public final String toString() {
        return "[" + this.e + ", " + this.f + ", " + this.g + ", " + this.h + "]";
    }

    @Override // defpackage.rb7
    public final tb7 d() {
        return this;
    }

    @Override // defpackage.rb7
    public final tb7 b(int[] iArr) {
        return this;
    }
}
