package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i66 {
    public int a;
    public Object b;

    public void a(int i, c70 c70Var) {
        while (true) {
            int i2 = i >> 1;
            if (i2 == 0) {
                break;
            }
            c70 c70Var2 = ((c70[]) this.b)[i2];
            c70Var2.getClass();
            if (pe4.g(0L, c70Var.c - c70Var2.c) <= 0) {
                break;
            }
            c70Var2.f = i;
            ((c70[]) this.b)[i] = c70Var2;
            i = i2;
        }
        ((c70[]) this.b)[i] = c70Var;
        c70Var.f = i;
    }

    public void b(c70 c70Var) {
        c70 c70Var2;
        int i = c70Var.f;
        if (i == -1) {
            c6.f("Failed requirement.");
            return;
        }
        int i2 = this.a;
        c70 c70Var3 = ((c70[]) this.b)[i2];
        c70Var3.getClass();
        c70Var.f = -1;
        ((c70[]) this.b)[i2] = null;
        this.a = i2 - 1;
        if (c70Var == c70Var3) {
            return;
        }
        int iG = pe4.g(0L, c70Var3.c - c70Var.c);
        if (iG == 0) {
            ((c70[]) this.b)[i] = c70Var3;
            c70Var3.f = i;
            return;
        }
        if (iG >= 0) {
            a(i, c70Var3);
            return;
        }
        while (true) {
            int i3 = i << 1;
            int i4 = i3 + 1;
            int i5 = this.a;
            if (i4 > i5) {
                if (i3 > i5) {
                    break;
                }
                c70Var2 = ((c70[]) this.b)[i3];
                c70Var2.getClass();
            } else {
                c70Var2 = ((c70[]) this.b)[i3];
                c70Var2.getClass();
                c70 c70Var4 = ((c70[]) this.b)[i4];
                c70Var4.getClass();
                if (pe4.g(0L, c70Var4.c - c70Var2.c) >= 0) {
                    c70Var2 = c70Var4;
                }
            }
            if (pe4.g(0L, c70Var2.c - c70Var3.c) <= 0) {
                break;
            }
            int i6 = c70Var2.f;
            c70Var2.f = i;
            ((c70[]) this.b)[i] = c70Var2;
            i = i6;
        }
        ((c70[]) this.b)[i] = c70Var3;
        c70Var3.f = i;
    }
}
