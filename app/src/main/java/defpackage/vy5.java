package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vy5 extends rh4 {
    public final boolean f;
    public boolean k = true;

    public vy5(boolean z) {
        this.f = z;
        this.a = qj5.c();
        this.b = null;
        this.e = false;
    }

    @Override // defpackage.rh4, defpackage.od7
    public final gn6 b() {
        gn6 gn6Var = gn6.d;
        try {
            zd7 zd7VarJ = k55.j();
            this.d = zd7VarJ;
            if (this.f && !zd7VarJ.isRoot()) {
                close();
                return gn6Var;
            }
            if (this.a instanceof qj5) {
                this.a = new ArrayList();
            }
            gn6 gn6VarB = super.b();
            if (!this.k || gn6VarB != gn6.e) {
                return gn6VarB;
            }
            this.k = false;
            return b();
        } catch (kn5 unused) {
            close();
            return gn6Var;
        }
    }
}
