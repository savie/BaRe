package defpackage;

import android.os.Looper;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lo6 extends jg4 {
    public final /* synthetic */ jo6 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lo6(String[] strArr, jo6 jo6Var) {
        super(strArr);
        this.b = jo6Var;
    }

    @Override // defpackage.jg4
    public final void a(Set set) {
        set.getClass();
        f40 f40VarW = f40.W();
        is isVar = new is(this.b, 8);
        f40VarW.d.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            isVar.run();
        } else {
            f40VarW.X(isVar);
        }
    }
}
