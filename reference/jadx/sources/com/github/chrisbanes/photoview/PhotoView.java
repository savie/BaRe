package com.github.chrisbanes.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import defpackage.dt5;
import defpackage.e06;
import defpackage.et5;
import defpackage.ft5;
import defpackage.ht5;
import defpackage.jt5;
import defpackage.kt5;
import defpackage.l0;
import defpackage.lt5;
import defpackage.ph8;
import defpackage.zm5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class PhotoView extends AppCompatImageView {
    public final e06 d;
    public ImageView.ScaleType e;

    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new e06(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.e;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.e = null;
        }
    }

    public e06 getAttacher() {
        return this.d;
    }

    public RectF getDisplayRect() {
        e06 e06Var = this.d;
        e06Var.b();
        Matrix matrixC = e06Var.c();
        RectF rectF = e06Var.y;
        Drawable drawable = e06Var.n.getDrawable();
        if (drawable == null) {
            return null;
        }
        rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        matrixC.mapRect(rectF);
        return rectF;
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.d.t;
    }

    public float getMaximumScale() {
        return this.d.e;
    }

    public float getMediumScale() {
        return this.d.d;
    }

    public float getMinimumScale() {
        return this.d.c;
    }

    public float getScale() {
        return this.d.d();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.d.N;
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.d.f = z;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (frame) {
            this.d.f();
        }
        return frame;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        e06 e06Var = this.d;
        if (e06Var != null) {
            e06Var.f();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        e06 e06Var = this.d;
        if (e06Var != null) {
            e06Var.f();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        e06 e06Var = this.d;
        if (e06Var != null) {
            e06Var.f();
        }
    }

    public void setMaximumScale(float f) {
        e06 e06Var = this.d;
        zm5.h(e06Var.c, e06Var.d, f);
        e06Var.e = f;
    }

    public void setMediumScale(float f) {
        e06 e06Var = this.d;
        zm5.h(e06Var.c, f, e06Var.e);
        e06Var.d = f;
    }

    public void setMinimumScale(float f) {
        e06 e06Var = this.d;
        zm5.h(f, e06Var.d, e06Var.e);
        e06Var.c = f;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.d.H = onClickListener;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.d.p.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.d.I = onLongClickListener;
    }

    public void setOnMatrixChangeListener(dt5 dt5Var) {
        this.d.getClass();
    }

    public void setOnOutsidePhotoTapListener(et5 et5Var) {
        this.d.getClass();
    }

    public void setOnPhotoTapListener(ft5 ft5Var) {
        this.d.getClass();
    }

    public void setOnScaleChangeListener(ht5 ht5Var) {
        this.d.getClass();
    }

    public void setOnSingleFlingListener(jt5 jt5Var) {
        this.d.getClass();
    }

    public void setOnViewDragListener(kt5 kt5Var) {
        this.d.getClass();
    }

    public void setOnViewTapListener(lt5 lt5Var) {
        this.d.getClass();
    }

    public void setRotationBy(float f) {
        e06 e06Var = this.d;
        e06Var.x.postRotate(f % 360.0f);
        e06Var.a();
    }

    public void setRotationTo(float f) {
        e06 e06Var = this.d;
        e06Var.x.setRotate(f % 360.0f);
        e06Var.a();
    }

    public void setScale(float f) {
        e06 e06Var = this.d;
        PhotoView photoView = e06Var.n;
        e06Var.e(f, photoView.getRight() / 2, photoView.getBottom() / 2, false);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        e06 e06Var = this.d;
        if (e06Var == null) {
            this.e = scaleType;
            return;
        }
        e06Var.getClass();
        if (scaleType == null) {
            return;
        }
        if (ph8.a[scaleType.ordinal()] == 1) {
            l0.e("Matrix scale type is not supported");
        } else if (scaleType != e06Var.N) {
            e06Var.N = scaleType;
            e06Var.f();
        }
    }

    public void setZoomTransitionDuration(int i) {
        this.d.b = i;
    }

    public void setZoomable(boolean z) {
        e06 e06Var = this.d;
        e06Var.M = z;
        e06Var.f();
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context) {
        this(context, null);
    }
}
