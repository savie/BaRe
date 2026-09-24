package defpackage;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c37 implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ List b;
    public final /* synthetic */ ScheduleFabMenuView c;
    public final /* synthetic */ bt3 d;

    public c37(LinearLayout linearLayout, boolean z, List list, ScheduleFabMenuView scheduleFabMenuView, bt3 bt3Var) {
        this.a = z;
        this.b = list;
        this.c = scheduleFabMenuView;
        this.d = bt3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List rn6Var;
        boolean z = this.a;
        List list = this.b;
        if (z) {
            list.getClass();
            rn6Var = new rn6(list);
        } else {
            rn6Var = list;
        }
        ArrayList arrayList = new ArrayList(hl1.G0(rn6Var, 10));
        Iterator it = rn6Var.iterator();
        int i = 0;
        while (true) {
            boolean zHasNext = it.hasNext();
            ScheduleFabMenuView scheduleFabMenuView = this.c;
            if (!zHasNext) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(arrayList);
                animatorSet.addListener(new d37(scheduleFabMenuView, animatorSet, list, this.d));
                scheduleFabMenuView.d.add(animatorSet);
                animatorSet.start();
                return;
            }
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            View view = (View) next;
            long j = ((long) i) * 24;
            Map map = ScheduleFabMenuView.K;
            float f = 1.0f;
            float f2 = z ? 0.0f : 1.0f;
            if (!z) {
                f = 0.0f;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f);
            valueAnimatorOfFloat.setDuration(160L);
            valueAnimatorOfFloat.setStartDelay(j);
            valueAnimatorOfFloat.setInterpolator(ed.b);
            valueAnimatorOfFloat.addUpdateListener(new t85(view, scheduleFabMenuView));
            arrayList.add(valueAnimatorOfFloat);
            i = i2;
        }
    }
}
