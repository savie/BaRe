package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class a95 extends Drawable.ConstantState {
    public rb7 a;
    public xt2 b;
    public ColorStateList c;
    public ColorStateList d;
    public ColorStateList e;
    public ColorStateList f;
    public PorterDuff.Mode g;
    public Rect h;
    public final float i;
    public float j;
    public float k;
    public int l;
    public float m;
    public float n;
    public int o;
    public int p;
    public int q;
    public final Paint.Style r;

    public a95(a95 a95Var) {
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = PorterDuff.Mode.SRC_IN;
        this.h = null;
        this.i = 1.0f;
        this.j = 1.0f;
        this.l = 255;
        this.m = 0.0f;
        this.n = 0.0f;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.r = Paint.Style.FILL_AND_STROKE;
        this.a = a95Var.a;
        this.b = a95Var.b;
        this.k = a95Var.k;
        this.c = a95Var.c;
        this.d = a95Var.d;
        this.g = a95Var.g;
        this.f = a95Var.f;
        this.l = a95Var.l;
        this.i = a95Var.i;
        this.q = a95Var.q;
        this.o = a95Var.o;
        this.j = a95Var.j;
        this.m = a95Var.m;
        this.n = a95Var.n;
        this.p = a95Var.p;
        this.e = a95Var.e;
        this.r = a95Var.r;
        if (a95Var.h != null) {
            this.h = new Rect(a95Var.h);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        c95 c95Var = new c95(this);
        c95Var.f = true;
        c95Var.k = true;
        return c95Var;
    }

    public a95(rb7 rb7Var) {
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = PorterDuff.Mode.SRC_IN;
        this.h = null;
        this.i = 1.0f;
        this.j = 1.0f;
        this.l = 255;
        this.m = 0.0f;
        this.n = 0.0f;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.r = Paint.Style.FILL_AND_STROKE;
        this.a = rb7Var;
        this.b = null;
    }
}
