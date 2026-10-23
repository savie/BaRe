package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wo extends ro {
    public final vo e;
    public Drawable f;
    public ColorStateList k;
    public PorterDuff.Mode n;
    public boolean p;
    public boolean q;

    public wo(vo voVar) {
        super(voVar);
        this.k = null;
        this.n = null;
        this.p = false;
        this.q = false;
        this.e = voVar;
    }

    @Override // defpackage.ro
    public final void o(AttributeSet attributeSet, int i) {
        super.o(attributeSet, R.attr.seekBarStyle);
        vo voVar = this.e;
        Context context = voVar.getContext();
        int[] iArr = ge6.g;
        u94 u94VarE = u94.e(R.attr.seekBarStyle, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) u94VarE.b;
        dl8.m(voVar, voVar.getContext(), iArr, attributeSet, (TypedArray) u94VarE.b, R.attr.seekBarStyle);
        Drawable drawableC = u94VarE.c(0);
        if (drawableC != null) {
            voVar.setThumb(drawableC);
        }
        Drawable drawableB = u94VarE.b(1);
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f = drawableB;
        if (drawableB != null) {
            drawableB.setCallback(voVar);
            drawableB.setLayoutDirection(voVar.getLayoutDirection());
            if (drawableB.isStateful()) {
                drawableB.setState(voVar.getDrawableState());
            }
            x();
        }
        voVar.invalidate();
        if (typedArray.hasValue(3)) {
            this.n = fp2.c(typedArray.getInt(3, -1), this.n);
            this.q = true;
        }
        if (typedArray.hasValue(2)) {
            this.k = u94VarE.a(2);
            this.p = true;
        }
        u94VarE.f();
        x();
    }

    public final void x() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.p || this.q) {
                Drawable drawableMutate = drawable.mutate();
                this.f = drawableMutate;
                if (this.p) {
                    drawableMutate.setTintList(this.k);
                }
                if (this.q) {
                    this.f.setTintMode(this.n);
                }
                if (this.f.isStateful()) {
                    this.f.setState(this.e.getDrawableState());
                }
            }
        }
    }

    public final void y(Canvas canvas) {
        if (this.f != null) {
            vo voVar = this.e;
            int max = voVar.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f.getIntrinsicWidth();
                int intrinsicHeight = this.f.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f.setBounds(-i, -i2, i, i2);
                float width = ((voVar.getWidth() - voVar.getPaddingLeft()) - voVar.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(voVar.getPaddingLeft(), voVar.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
