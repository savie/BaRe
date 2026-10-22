package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yy4 {
    public final es5 a;
    public boolean b;
    public int c = -1;
    public final /* synthetic */ zy4 d;

    public yy4(zy4 zy4Var, es5 es5Var) {
        this.d = zy4Var;
        this.a = es5Var;
    }

    public final void a(boolean z) {
        if (z == this.b) {
            return;
        }
        this.b = z;
        int i = z ? 1 : -1;
        zy4 zy4Var = this.d;
        int i2 = zy4Var.c;
        zy4Var.c = i + i2;
        if (!zy4Var.d) {
            zy4Var.d = true;
            while (true) {
                try {
                    int i3 = zy4Var.c;
                    if (i2 == i3) {
                        break;
                    }
                    boolean z2 = i2 == 0 && i3 > 0;
                    boolean z3 = i2 > 0 && i3 == 0;
                    if (z2) {
                        zy4Var.g();
                    } else if (z3) {
                        zy4Var.h();
                    }
                    i2 = i3;
                } catch (Throwable th) {
                    zy4Var.d = false;
                    throw th;
                }
            }
            zy4Var.d = false;
        }
        if (this.b) {
            zy4Var.c(this);
        }
    }

    public boolean c(fu4 fu4Var) {
        return false;
    }

    public abstract boolean d();

    public void b() {
    }
}
