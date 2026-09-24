package defpackage;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t60 implements Drawable.Callback {
    public final TextView a;
    public final u60 b;
    public Rect c;

    public t60(TextView textView, u60 u60Var, Rect rect) {
        this.a = textView;
        this.b = u60Var;
        this.c = new Rect(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Looper looperMyLooper = Looper.myLooper();
        Looper mainLooper = Looper.getMainLooper();
        TextView textView = this.a;
        if (looperMyLooper != mainLooper) {
            textView.post(new s60(this, drawable));
            return;
        }
        Rect bounds = drawable.getBounds();
        if (this.c.equals(bounds)) {
            textView.postInvalidate();
            return;
        }
        u60 u60Var = this.b;
        TextView textView2 = (TextView) u60Var.b;
        textView2.removeCallbacks(u60Var);
        textView2.post(u60Var);
        this.c = new Rect(bounds);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        this.a.postDelayed(runnable, j - SystemClock.uptimeMillis());
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        this.a.removeCallbacks(runnable);
    }
}
