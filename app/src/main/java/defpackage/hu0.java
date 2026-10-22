package defpackage;

import android.view.animation.AlphaAnimation;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.warkiz.widget.IndicatorSeekBar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hu0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ hu0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                iu0 iu0Var = (iu0) obj;
                iu0Var.b = false;
                BottomSheetBehavior bottomSheetBehavior = iu0Var.d;
                gl8 gl8Var = bottomSheetBehavior.Q;
                if (gl8Var != null && gl8Var.g()) {
                    iu0Var.a(iu0Var.a);
                } else if (bottomSheetBehavior.P == 2) {
                    bottomSheetBehavior.M(iu0Var.a);
                }
                break;
            case 1:
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
                alphaAnimation.setDuration(180L);
                IndicatorSeekBar indicatorSeekBar = (IndicatorSeekBar) obj;
                indicatorSeekBar.o0.setAnimation(alphaAnimation);
                indicatorSeekBar.w();
                indicatorSeekBar.o0.setVisibility(0);
                break;
            case 2:
                RecyclerView recyclerView = (RecyclerView) obj;
                if (recyclerView.M && !recyclerView.isLayoutRequested()) {
                    if (!recyclerView.K) {
                        recyclerView.requestLayout();
                    } else if (!recyclerView.P) {
                        recyclerView.o();
                    } else {
                        recyclerView.O = true;
                    }
                    break;
                }
                break;
            default:
                c00 c00Var = (c00) obj;
                ((nr8) c00Var.c).h.cancel(false);
                nr8 nr8Var = (nr8) c00Var.c;
                nr8Var.b = true;
                if (nr8Var.j.e()) {
                    nr8Var.j.c("websocket opened", null, new Object[0]);
                }
                nr8Var.e();
                break;
        }
    }
}
