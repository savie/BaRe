package defpackage;

import android.os.Process;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u8 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public u8(vj6 vj6Var, eb2 eb2Var) {
        this.a = 1;
        this.b = vj6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                Process.setThreadPriority(10);
                ((Runnable) obj).run();
                break;
            case 1:
                ((vj6) obj).b.a(null, true);
                break;
            case 2:
                yk6 yk6Var = (yk6) obj;
                yk6Var.c.k(yk6Var);
                break;
            default:
                ne neVar = ((g19) ((om5) obj).a).b;
                neVar.b(neVar.getClass().getName().concat(" disconnecting because it was signed out."));
                break;
        }
    }

    public /* synthetic */ u8(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
