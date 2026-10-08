package defpackage;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.github.chrisbanes.photoview.PhotoView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a06 implements GestureDetector.OnDoubleTapListener {
    public final /* synthetic */ e06 a;

    public a06(e06 e06Var) {
        this.a = e06Var;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        e06 e06Var = this.a;
        try {
            float fD = e06Var.d();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            float f = e06Var.d;
            if (fD < f) {
                e06Var.e(f, x, y, true);
                return true;
            }
            if (fD >= f) {
                float f2 = e06Var.e;
                if (fD < f2) {
                    e06Var.e(f2, x, y, true);
                    return true;
                }
            }
            e06Var.e(e06Var.c, x, y, true);
            return true;
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        e06 e06Var = this.a;
        PhotoView photoView = e06Var.n;
        View.OnClickListener onClickListener = e06Var.H;
        if (onClickListener != null) {
            onClickListener.onClick(photoView);
        }
        e06Var.b();
        Matrix matrixC = e06Var.c();
        RectF rectF = e06Var.y;
        Drawable drawable = photoView.getDrawable();
        if (drawable != null) {
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrixC.mapRect(rectF);
        } else {
            rectF = null;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (rectF == null || !rectF.contains(x, y)) {
            return false;
        }
        rectF.width();
        rectF.height();
        return true;
    }
}
