package defpackage;

import java.io.EOFException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ax2 implements Runnable {
    public final /* synthetic */ int a;
    public final Object b;
    public final /* synthetic */ Object c;

    public ax2(bf3 bf3Var, wc2 wc2Var, eb2 eb2Var) {
        this.a = 2;
        this.b = bf3Var;
        this.c = wc2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                fh7 fh7Var = (fh7) this.b;
                fh7Var.b.a();
                synchronized (fh7Var.c) {
                    synchronized (((dx2) this.c)) {
                        if (((dx2) this.c).a.a.contains(new bx2((fh7) this.b, xh8.f))) {
                            dx2 dx2Var = (dx2) this.c;
                            fh7 fh7Var2 = (fh7) this.b;
                            dx2Var.getClass();
                            try {
                                fh7Var2.g(dx2Var.I, 5);
                            } catch (Throwable th) {
                                throw new wz0(th);
                            }
                        }
                        ((dx2) this.c).c();
                        break;
                    }
                }
                return;
            case 1:
                c00 c00Var = (c00) this.c;
                for (hy2 hy2Var : (ArrayList) this.b) {
                    if (((u00) c00Var.c).e()) {
                        ((u00) c00Var.c).c("Raising ".concat(hy2Var.toString()), null, new Object[0]);
                    }
                    hy2Var.a();
                }
                return;
            case 2:
                ((bf3) this.b).a((wc2) this.c, false);
                return;
            default:
                nr8 nr8Var = (nr8) ((c00) this.c).c;
                br8 br8Var = (br8) this.b;
                if (br8Var.getCause() == null || !(br8Var.getCause() instanceof EOFException)) {
                    nr8Var.j.c("WebSocket error.", br8Var, new Object[0]);
                } else {
                    nr8Var.j.c("WebSocket reached EOF.", null, new Object[0]);
                }
                nr8.a(nr8Var);
                return;
        }
    }

    public /* synthetic */ ax2(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }
}
