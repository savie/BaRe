package defpackage;

import android.R;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uc4 implements View.OnTouchListener {
    public final wa a;
    public final int b;
    public final int c;
    public final int d;

    public uc4(wa waVar, Rect rect) {
        this.a = waVar;
        this.b = rect.left;
        this.c = rect.top;
        this.d = ViewConfiguration.get(waVar.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = viewFindViewById.getLeft() + this.b;
        int width = viewFindViewById.getWidth() + left;
        int top = viewFindViewById.getTop() + this.c;
        if (new RectF(left, top, width, viewFindViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            float f = (-this.d) - 1;
            motionEventObtain.setLocation(f, f);
        }
        view.performClick();
        return this.a.onTouchEvent(motionEventObtain);
    }
}
