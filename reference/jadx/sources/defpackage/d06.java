package defpackage;

import android.content.Context;
import android.widget.OverScroller;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d06 implements Runnable {
    public final OverScroller a;
    public int b;
    public int c;
    public final /* synthetic */ e06 d;

    public d06(e06 e06Var, Context context) {
        this.d = e06Var;
        this.a = new OverScroller(context);
    }

    @Override // java.lang.Runnable
    public final void run() {
        OverScroller overScroller = this.a;
        if (!overScroller.isFinished() && overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            e06 e06Var = this.d;
            e06Var.x.postTranslate(this.b - currX, this.c - currY);
            e06Var.a();
            this.b = currX;
            this.c = currY;
            e06Var.n.postOnAnimation(this);
        }
    }
}
