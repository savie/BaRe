package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.a;
import com.l4digital.fastscroll.FastScroller;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k53 extends sg6 {
    public final /* synthetic */ FastScroller a;

    public k53(FastScroller fastScroller) {
        this.a = fastScroller;
    }

    @Override // defpackage.sg6
    public final void a(RecyclerView recyclerView, int i) {
        FastScroller fastScroller = this.a;
        Runnable runnable = fastScroller.O;
        if (fastScroller.isEnabled()) {
            if (i == 0) {
                if (!fastScroller.f || fastScroller.t.isSelected()) {
                    return;
                }
                fastScroller.getHandler().postDelayed(runnable, 1000L);
                return;
            }
            if (i != 1) {
                return;
            }
            fastScroller.getHandler().removeCallbacks(runnable);
            ViewPropertyAnimator viewPropertyAnimator = fastScroller.K;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
            }
            View view = fastScroller.J;
            if (view == null || view.getVisibility() != 0) {
                fastScroller.k();
            }
            if (!fastScroller.n || fastScroller.N == null) {
                return;
            }
            fastScroller.j();
        }
    }

    @Override // defpackage.sg6
    public final void b(RecyclerView recyclerView, int i) {
        FastScroller fastScroller = this.a;
        if (!fastScroller.t.isSelected() && fastScroller.isEnabled()) {
            float fG = fastScroller.g(recyclerView);
            fastScroller.setViewPositions(fG);
            if (fastScroller.n) {
                fastScroller.I.setText(fastScroller.N.a(fastScroller.f(fG)));
            }
        }
        if (fastScroller.H == null || recyclerView.getLayoutManager() == null) {
            return;
        }
        a layoutManager = recyclerView.getLayoutManager();
        int iR = -1;
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            View viewB1 = linearLayoutManager.b1(0, linearLayoutManager.G(), false);
            if (viewB1 != null) {
                iR = a.R(viewB1);
            }
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.H];
            for (int i2 = 0; i2 < staggeredGridLayoutManager.H; i2++) {
                p35 p35Var = staggeredGridLayoutManager.I[i2];
                boolean z = ((StaggeredGridLayoutManager) p35Var.g).O;
                ArrayList arrayList = (ArrayList) p35Var.f;
                iArr[i2] = z ? p35Var.g(arrayList.size() - 1, -1, true, false) : p35Var.g(0, arrayList.size(), true, false);
            }
            iR = iArr[0];
        } else {
            iR = 0;
        }
        fastScroller.H.setEnabled(iR == 0 && (recyclerView.getChildCount() == 0 ? 0 : recyclerView.getChildAt(0).getTop()) >= 0);
    }
}
