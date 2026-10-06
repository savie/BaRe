package defpackage;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import com.github.chrisbanes.photoview.PhotoView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e06 implements View.OnTouchListener, View.OnLayoutChangeListener {
    public View.OnClickListener H;
    public View.OnLongClickListener I;
    public d06 J;
    public final rb O;
    public final PhotoView n;
    public final GestureDetector p;
    public final x62 q;
    public final AccelerateDecelerateInterpolator a = new AccelerateDecelerateInterpolator();
    public int b = 200;
    public float c = 1.0f;
    public float d = 1.75f;
    public float e = 3.0f;
    public boolean f = true;
    public boolean k = false;
    public final Matrix r = new Matrix();
    public final Matrix t = new Matrix();
    public final Matrix x = new Matrix();
    public final RectF y = new RectF();
    public final float[] G = new float[9];
    public int K = 2;
    public int L = 2;
    public boolean M = true;
    public ImageView.ScaleType N = ImageView.ScaleType.FIT_CENTER;

    public e06(PhotoView photoView) {
        rb rbVar = new rb(this, 19);
        this.O = rbVar;
        this.n = photoView;
        photoView.setOnTouchListener(this);
        photoView.addOnLayoutChangeListener(this);
        if (photoView.isInEditMode()) {
            return;
        }
        this.q = new x62(photoView.getContext(), rbVar);
        GestureDetector gestureDetector = new GestureDetector(photoView.getContext(), new zz5(this));
        this.p = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new a06(this));
    }

    public final void a() {
        if (b()) {
            this.n.setImageMatrix(c());
        }
    }

    public final boolean b() {
        RectF rectF;
        float f;
        Matrix matrixC = c();
        PhotoView photoView = this.n;
        Drawable drawable = photoView.getDrawable();
        float f2 = 0.0f;
        if (drawable != null) {
            float intrinsicWidth = drawable.getIntrinsicWidth();
            float intrinsicHeight = drawable.getIntrinsicHeight();
            rectF = this.y;
            rectF.set(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
            matrixC.mapRect(rectF);
        } else {
            rectF = null;
        }
        if (rectF == null) {
            return false;
        }
        float fHeight = rectF.height();
        float fWidth = rectF.width();
        float height = (photoView.getHeight() - photoView.getPaddingTop()) - photoView.getPaddingBottom();
        if (fHeight <= height) {
            int i = b06.a[this.N.ordinal()];
            float f3 = rectF.top;
            if (i != 2) {
                f = (i != 3 ? (height - fHeight) / 2.0f : height - fHeight) - f3;
            } else {
                f = -f3;
            }
            this.L = 2;
        } else {
            float f4 = rectF.top;
            if (f4 > 0.0f) {
                this.L = 0;
                f = -f4;
            } else {
                float f5 = rectF.bottom;
                if (f5 < height) {
                    this.L = 1;
                    f = height - f5;
                } else {
                    this.L = -1;
                    f = 0.0f;
                }
            }
        }
        float width = (photoView.getWidth() - photoView.getPaddingLeft()) - photoView.getPaddingRight();
        if (fWidth <= width) {
            int i2 = b06.a[this.N.ordinal()];
            float f6 = rectF.left;
            if (i2 != 2) {
                f2 = (i2 != 3 ? (width - fWidth) / 2.0f : width - fWidth) - f6;
            } else {
                f2 = -f6;
            }
            this.K = 2;
        } else {
            float f7 = rectF.left;
            if (f7 > 0.0f) {
                this.K = 0;
                f2 = -f7;
            } else {
                float f8 = rectF.right;
                if (f8 < width) {
                    f2 = width - f8;
                    this.K = 1;
                } else {
                    this.K = -1;
                }
            }
        }
        this.x.postTranslate(f2, f);
        return true;
    }

    public final Matrix c() {
        Matrix matrix = this.r;
        Matrix matrix2 = this.t;
        matrix2.set(matrix);
        matrix2.postConcat(this.x);
        return matrix2;
    }

    public final float d() {
        Matrix matrix = this.x;
        float[] fArr = this.G;
        matrix.getValues(fArr);
        float fPow = (float) Math.pow(fArr[0], 2.0d);
        matrix.getValues(fArr);
        return (float) Math.sqrt(fPow + ((float) Math.pow(fArr[3], 2.0d)));
    }

    public final void e(float f, float f2, float f3, boolean z) {
        if (f < this.c || f > this.e) {
            c6.f("Scale must be within the range of minScale and maxScale");
        } else if (z) {
            this.n.post(new c06(this, d(), f, f2, f3));
        } else {
            this.x.setScale(f, f, f2, f3);
            a();
        }
    }

    public final void f() {
        boolean z = this.M;
        PhotoView photoView = this.n;
        if (z) {
            g(photoView.getDrawable());
            return;
        }
        Matrix matrix = this.x;
        matrix.reset();
        matrix.postRotate(0.0f);
        a();
        photoView.setImageMatrix(c());
        b();
    }

    public final void g(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        PhotoView photoView = this.n;
        float width = (photoView.getWidth() - photoView.getPaddingLeft()) - photoView.getPaddingRight();
        float height = (photoView.getHeight() - photoView.getPaddingTop()) - photoView.getPaddingBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Matrix matrix = this.r;
        matrix.reset();
        float f = intrinsicWidth;
        float f2 = width / f;
        float f3 = intrinsicHeight;
        float f4 = height / f3;
        ImageView.ScaleType scaleType = this.N;
        if (scaleType == ImageView.ScaleType.CENTER) {
            matrix.postTranslate((width - f) / 2.0f, (height - f3) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float fMax = Math.max(f2, f4);
            matrix.postScale(fMax, fMax);
            matrix.postTranslate((width - (f * fMax)) / 2.0f, (height - (f3 * fMax)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float fMin = Math.min(1.0f, Math.min(f2, f4));
            matrix.postScale(fMin, fMin);
            matrix.postTranslate((width - (f * fMin)) / 2.0f, (height - (f3 * fMin)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f, f3);
            RectF rectF2 = new RectF(0.0f, 0.0f, width, height);
            int i = b06.a[this.N.ordinal()];
            if (i == 1) {
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i == 2) {
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i == 3) {
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i == 4) {
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        Matrix matrix2 = this.x;
        matrix2.reset();
        matrix2.postRotate(0.0f);
        a();
        photoView.setImageMatrix(c());
        b();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            return;
        }
        g(this.n.getDrawable());
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        x62 x62Var;
        GestureDetector gestureDetector;
        ScaleGestureDetector scaleGestureDetector;
        boolean zIsInProgress;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = false;
        if (!this.M || ((ImageView) view).getDrawable() == null) {
            return false;
        }
        int action = motionEvent.getAction();
        RectF rectF = null;
        if (action != 0) {
            if (action == 1 || action == 3) {
                float fD = d();
                float f = this.c;
                PhotoView photoView = this.n;
                RectF rectF2 = this.y;
                if (fD < f) {
                    b();
                    Matrix matrixC = c();
                    Drawable drawable = photoView.getDrawable();
                    if (drawable != null) {
                        rectF2.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                        matrixC.mapRect(rectF2);
                        rectF = rectF2;
                    }
                    if (rectF != null) {
                        RectF rectF3 = rectF;
                        view.post(new c06(this, d(), this.c, rectF3.centerX(), rectF3.centerY()));
                        z = true;
                    }
                } else if (d() > this.e) {
                    b();
                    Matrix matrixC2 = c();
                    Drawable drawable2 = photoView.getDrawable();
                    if (drawable2 != null) {
                        rectF2.set(0.0f, 0.0f, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
                        matrixC2.mapRect(rectF2);
                        rectF = rectF2;
                    }
                    if (rectF != null) {
                        RectF rectF4 = rectF;
                        view.post(new c06(this, d(), this.e, rectF4.centerX(), rectF4.centerY()));
                        z = true;
                    }
                }
            }
            x62Var = this.q;
            if (x62Var != null) {
                scaleGestureDetector = x62Var.c;
                zIsInProgress = scaleGestureDetector.isInProgress();
                z2 = x62Var.e;
                try {
                    scaleGestureDetector.onTouchEvent(motionEvent);
                    x62Var.a(motionEvent);
                } catch (IllegalArgumentException unused) {
                }
                if (!zIsInProgress || scaleGestureDetector.isInProgress()) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (!z2 || x62Var.e) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (z3 && z4) {
                    z5 = true;
                }
                this.k = z5;
                z = true;
            }
            gestureDetector = this.p;
            if (gestureDetector == null && gestureDetector.onTouchEvent(motionEvent)) {
                return true;
            }
            return z;
        }
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        d06 d06Var = this.J;
        if (d06Var != null) {
            d06Var.a.forceFinished(true);
            this.J = null;
        }
        z = false;
        x62Var = this.q;
        if (x62Var != null) {
            scaleGestureDetector = x62Var.c;
            zIsInProgress = scaleGestureDetector.isInProgress();
            z2 = x62Var.e;
            scaleGestureDetector.onTouchEvent(motionEvent);
            x62Var.a(motionEvent);
            if (zIsInProgress) {
                z3 = false;
            } else {
                z3 = false;
            }
            if (z2) {
                z4 = false;
            } else {
                z4 = false;
            }
            if (z3) {
                z5 = true;
            }
            this.k = z5;
            z = true;
        }
        gestureDetector = this.p;
        if (gestureDetector == null) {
        }
        return z;
    }
}
