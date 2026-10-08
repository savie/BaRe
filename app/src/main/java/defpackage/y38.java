package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.google.android.material.timepicker.TimePickerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y38 extends GestureDetector.SimpleOnGestureListener {
    public final /* synthetic */ TimePickerView a;

    public y38(TimePickerView timePickerView) {
        this.a = timePickerView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        j95 j95Var = this.a.P;
        if (j95Var == null) {
            return false;
        }
        j95Var.c0 = 1;
        j95Var.l(j95Var.Z);
        j95Var.P.g();
        return true;
    }
}
