package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eq2 implements f77, iq2 {
    public final /* synthetic */ int a;
    public final f77 b;
    public final int c;

    public eq2(f77 f77Var, int i, int i2) {
        this.a = i2;
        switch (i2) {
            case 1:
                this.b = f77Var;
                this.c = i;
                if (i >= 0) {
                    return;
                }
                f6.f(i, "count must be non-negative, but was ");
                throw null;
            default:
                f77Var.getClass();
                this.b = f77Var;
                this.c = i;
                if (i >= 0) {
                    return;
                }
                f6.f(i, "count must be non-negative, but was ");
                throw null;
        }
    }

    @Override // defpackage.iq2
    public final f77 a(int i) {
        int i2 = this.a;
        f77 f77Var = this.b;
        int i3 = this.c;
        switch (i2) {
            case 0:
                int i4 = i3 + i;
                return i4 < 0 ? new eq2(this, i, 1) : new pr7(f77Var, i3, i4);
            default:
                return i >= i3 ? this : new eq2(f77Var, i, 1);
        }
    }

    @Override // defpackage.iq2
    public final f77 b(int i) {
        int i2 = this.a;
        f77 f77Var = this.b;
        int i3 = this.c;
        switch (i2) {
            case 0:
                int i4 = i3 + i;
                return i4 < 0 ? new eq2(this, i, 0) : new eq2(f77Var, i4, 0);
            default:
                return i >= i3 ? rv2.a : new pr7(f77Var, i, i3);
        }
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        switch (this.a) {
            case 0:
                return new dq2(this);
            default:
                return new dq2(this, (byte) 0);
        }
    }
}
