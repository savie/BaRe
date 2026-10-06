package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bn {
    public final View a;
    public n48 d;
    public n48 e;
    public n48 f;
    public int c = -1;
    public final jo b = jo.a();

    public bn(View view) {
        this.a = view;
    }

    public final void a() {
        View view = this.a;
        Drawable background = view.getBackground();
        if (background != null) {
            if (this.d != null) {
                if (this.f == null) {
                    this.f = new n48();
                }
                n48 n48Var = this.f;
                n48Var.a = null;
                n48Var.d = false;
                n48Var.b = null;
                n48Var.c = false;
                WeakHashMap weakHashMap = dl8.a;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    n48Var.d = true;
                    n48Var.a = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = view.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    n48Var.c = true;
                    n48Var.b = backgroundTintMode;
                }
                if (n48Var.d || n48Var.c) {
                    jo.e(background, n48Var, view.getDrawableState());
                    return;
                }
            }
            n48 n48Var2 = this.e;
            if (n48Var2 != null) {
                jo.e(background, n48Var2, view.getDrawableState());
                return;
            }
            n48 n48Var3 = this.d;
            if (n48Var3 != null) {
                jo.e(background, n48Var3, view.getDrawableState());
            }
        }
    }

    public final ColorStateList b() {
        n48 n48Var = this.e;
        if (n48Var != null) {
            return n48Var.a;
        }
        return null;
    }

    public final PorterDuff.Mode c() {
        n48 n48Var = this.e;
        if (n48Var != null) {
            return n48Var.b;
        }
        return null;
    }

    public final void d(AttributeSet attributeSet, int i) {
        ColorStateList colorStateListG;
        View view = this.a;
        Context context = view.getContext();
        int[] iArr = ge6.z;
        u94 u94VarE = u94.e(i, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) u94VarE.b;
        View view2 = this.a;
        dl8.m(view2, view2.getContext(), iArr, attributeSet, (TypedArray) u94VarE.b, i);
        try {
            if (typedArray.hasValue(0)) {
                this.c = typedArray.getResourceId(0, -1);
                jo joVar = this.b;
                Context context2 = view.getContext();
                int i2 = this.c;
                synchronized (joVar) {
                    colorStateListG = joVar.a.g(context2, i2);
                }
                if (colorStateListG != null) {
                    g(colorStateListG);
                }
            }
            if (typedArray.hasValue(1)) {
                view.setBackgroundTintList(u94VarE.a(1));
            }
            if (typedArray.hasValue(2)) {
                view.setBackgroundTintMode(fp2.c(typedArray.getInt(2, -1), null));
            }
            u94VarE.f();
        } catch (Throwable th) {
            u94VarE.f();
            throw th;
        }
    }

    public final void e() {
        this.c = -1;
        g(null);
        a();
    }

    public final void f(int i) {
        ColorStateList colorStateListG;
        this.c = i;
        jo joVar = this.b;
        if (joVar != null) {
            Context context = this.a.getContext();
            synchronized (joVar) {
                colorStateListG = joVar.a.g(context, i);
            }
        } else {
            colorStateListG = null;
        }
        g(colorStateListG);
        a();
    }

    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new n48();
            }
            n48 n48Var = this.d;
            n48Var.a = colorStateList;
            n48Var.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    public final void h(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new n48();
        }
        n48 n48Var = this.e;
        n48Var.a = colorStateList;
        n48Var.d = true;
        a();
    }

    public final void i(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new n48();
        }
        n48 n48Var = this.e;
        n48Var.b = mode;
        n48Var.c = true;
        a();
    }
}
