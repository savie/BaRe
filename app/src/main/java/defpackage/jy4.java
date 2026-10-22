package defpackage;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jy4 implements View.OnTouchListener {
    public final /* synthetic */ ky4 a;

    public jy4(ky4 ky4Var) {
        this.a = ky4Var;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ky4 ky4Var = this.a;
        aq2 aq2Var = ky4Var.J;
        Handler handler = ky4Var.N;
        qo qoVar = ky4Var.R;
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && qoVar != null && qoVar.isShowing() && x >= 0 && x < qoVar.getWidth() && y >= 0 && y < qoVar.getHeight()) {
            handler.postDelayed(aq2Var, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        handler.removeCallbacks(aq2Var);
        return false;
    }
}
