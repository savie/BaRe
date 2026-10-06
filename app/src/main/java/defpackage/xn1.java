package defpackage;

import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xn1 implements au4 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ xn1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        Window window;
        View viewPeekDecorView;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                io1 io1Var = (io1) obj;
                if (rt4Var == rt4.ON_STOP && (window = io1Var.getWindow()) != null && (viewPeekDecorView = window.peekDecorView()) != null) {
                    viewPeekDecorView.cancelPendingInputEvents();
                    break;
                }
                break;
            default:
                vx6 vx6Var = (vx6) obj;
                if (rt4Var == rt4.ON_START) {
                    vx6Var.h = true;
                } else if (rt4Var == rt4.ON_STOP) {
                    vx6Var.h = false;
                }
                break;
        }
    }
}
