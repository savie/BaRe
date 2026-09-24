package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ip3 implements Runnable {
    public final /* synthetic */ kp3 a;
    public final /* synthetic */ int b;

    public ip3(kp3 kp3Var, int i) {
        this.a = kp3Var;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        fh6 fh6VarG = this.a.k().G(this.b);
        bp3 bp3Var = fh6VarG instanceof bp3 ? (bp3) fh6VarG : null;
        if (bp3Var != null) {
            bp3Var.v.startAnimation(Const.j(7));
        }
    }
}
