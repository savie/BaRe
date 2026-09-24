package com.google.android.material.imageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.jcraft.jsch.SftpATTRS;
import defpackage.c95;
import defpackage.k55;
import defpackage.tb7;
import defpackage.tc7;
import defpackage.td6;
import defpackage.ub7;
import defpackage.uc7;
import defpackage.vb7;
import defpackage.zh8;
import defpackage.zm5;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ShapeableImageView extends AppCompatImageView implements tc7 {
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public boolean M;
    public final vb7 d;
    public final RectF e;
    public final RectF f;
    public final Paint k;
    public final Paint n;
    public final Path p;
    public ColorStateList q;
    public c95 r;
    public tb7 t;
    public float x;
    public final Path y;

    public ShapeableImageView(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_MaterialComponents_ShapeableImageView), attributeSet, i);
        this.d = ub7.a;
        this.p = new Path();
        this.M = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.n = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.e = new RectF();
        this.f = new RectF();
        this.y = new Path();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, td6.Q, i, R.style.Widget_MaterialComponents_ShapeableImageView);
        setLayerType(2, null);
        this.q = k55.m(context2, typedArrayObtainStyledAttributes, 9);
        this.x = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.G = dimensionPixelSize;
        this.H = dimensionPixelSize;
        this.I = dimensionPixelSize;
        this.J = dimensionPixelSize;
        this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, dimensionPixelSize);
        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, dimensionPixelSize);
        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, dimensionPixelSize);
        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, dimensionPixelSize);
        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.k = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.t = tb7.h(context2, attributeSet, i, R.style.Widget_MaterialComponents_ShapeableImageView).a();
        setOutlineProvider(new uc7(this));
    }

    public final boolean a() {
        return getLayoutDirection() == 1;
    }

    public final void d(int i, int i2) {
        float paddingLeft = getPaddingLeft();
        float paddingTop = getPaddingTop();
        float paddingRight = i - getPaddingRight();
        float paddingBottom = i2 - getPaddingBottom();
        RectF rectF = this.e;
        rectF.set(paddingLeft, paddingTop, paddingRight, paddingBottom);
        tb7 tb7Var = this.t;
        vb7 vb7Var = this.d;
        Path path = this.p;
        vb7Var.a(tb7Var, null, 1.0f, rectF, null, path);
        Path path2 = this.y;
        path2.rewind();
        path2.addPath(path);
        RectF rectF2 = this.f;
        rectF2.set(0.0f, 0.0f, i, i2);
        path2.addRect(rectF2, Path.Direction.CCW);
    }

    public int getContentPaddingBottom() {
        return this.J;
    }

    public final int getContentPaddingEnd() {
        int i = this.L;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return a() ? this.G : this.I;
    }

    public int getContentPaddingLeft() {
        int i = this.L;
        int i2 = this.K;
        if (i2 != Integer.MIN_VALUE || i != Integer.MIN_VALUE) {
            if (a() && i != Integer.MIN_VALUE) {
                return i;
            }
            if (!a() && i2 != Integer.MIN_VALUE) {
                return i2;
            }
        }
        return this.G;
    }

    public int getContentPaddingRight() {
        int i = this.L;
        int i2 = this.K;
        if (i2 != Integer.MIN_VALUE || i != Integer.MIN_VALUE) {
            if (a() && i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (!a() && i != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.I;
    }

    public final int getContentPaddingStart() {
        int i = this.K;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return a() ? this.I : this.G;
    }

    public int getContentPaddingTop() {
        return this.H;
    }

    @Override // android.view.View
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    public tb7 getShapeAppearanceModel() {
        return this.t;
    }

    public ColorStateList getStrokeColor() {
        return this.q;
    }

    public float getStrokeWidth() {
        return this.x;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.y, this.n);
        if (this.q == null) {
            return;
        }
        float f = this.x;
        Paint paint = this.k;
        paint.setStrokeWidth(f);
        int colorForState = this.q.getColorForState(getDrawableState(), this.q.getDefaultColor());
        if (this.x <= 0.0f || colorForState == 0) {
            return;
        }
        paint.setColor(colorForState);
        canvas.drawPath(this.p, paint);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.M && isLayoutDirectionResolved()) {
            this.M = true;
            if (!isPaddingRelative() && this.K == Integer.MIN_VALUE && this.L == Integer.MIN_VALUE) {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            } else {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        d(i, i2);
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(getContentPaddingLeft() + i, getContentPaddingTop() + i2, getContentPaddingRight() + i3, getContentPaddingBottom() + i4);
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(getContentPaddingStart() + i, getContentPaddingTop() + i2, getContentPaddingEnd() + i3, getContentPaddingBottom() + i4);
    }

    @Override // defpackage.tc7
    public void setShapeAppearanceModel(tb7 tb7Var) {
        this.t = tb7Var;
        c95 c95Var = this.r;
        if (c95Var != null) {
            c95Var.setShapeAppearanceModel(tb7Var);
        }
        d(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.q = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(int i) {
        setStrokeColor(zh8.q(getContext(), i));
    }

    public void setStrokeWidth(float f) {
        if (this.x != f) {
            this.x = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public ShapeableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }
}
