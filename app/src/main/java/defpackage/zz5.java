package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zz5 extends GestureDetector.SimpleOnGestureListener {
    public final /* synthetic */ e06 a;

    public zz5(e06 e06Var) {
        this.a = e06Var;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
        e06 e06Var = this.a;
        View.OnLongClickListener onLongClickListener = e06Var.I;
        if (onLongClickListener != null) {
            onLongClickListener.onLongClick(e06Var.n);
        }
    }
}
