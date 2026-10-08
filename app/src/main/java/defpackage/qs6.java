package defpackage;

import java.util.EnumSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qs6 extends rt6 {
    public final Set e;
    public final Set f;
    public final int g;
    public final Set h;
    public final fi7 i;
    public final Set j;
    public final int k;

    public qs6(us6 us6Var, long j, long j2, Set set, Set set2, Set set3, int i, Set set4, fi7 fi7Var) {
        super(57, us6Var, it6.SMB2_CREATE, j, j2);
        this.k = 2;
        this.j = set;
        this.e = set2 == null ? EnumSet.noneOf(w63.class) : set2;
        this.f = set3 == null ? EnumSet.noneOf(ju6.class) : set3;
        this.g = i != 0 ? i : 4;
        this.h = set4 == null ? EnumSet.noneOf(ps6.class) : set4;
        this.i = fi7Var;
    }

    @Override // defpackage.rt6
    public final void h(zu6 zu6Var) {
        long j;
        long j2;
        byte[] bytes;
        int i = this.c;
        zu6Var.k(i);
        zu6Var.f((byte) 0);
        zu6Var.f((byte) 0);
        int i2 = this.k;
        if (i2 == 1) {
            j = 0;
        } else if (i2 == 2) {
            j = 1;
        } else if (i2 == 3) {
            j = 2;
        } else {
            if (i2 != 4) {
                throw null;
            }
            j = 3;
        }
        zu6Var.l(j);
        zu6Var.u(8);
        zu6Var.u(8);
        zu6Var.l(sz8.j0(this.j));
        zu6Var.l(sz8.j0(this.e));
        zu6Var.l(sz8.j0(this.f));
        switch (this.g) {
            case 1:
                j2 = 0;
                break;
            case 2:
                j2 = 1;
                break;
            case 3:
                j2 = 2;
                break;
            case 4:
                j2 = 3;
                break;
            case 5:
                j2 = 4;
                break;
            case 6:
                j2 = 5;
                break;
            default:
                throw null;
        }
        zu6Var.l(j2);
        zu6Var.l(sz8.j0(this.h));
        int i3 = i + 63;
        String str = this.i.c;
        if (str == null || str.trim().length() == 0) {
            zu6Var.k(i3);
            zu6Var.k(0);
            bytes = new byte[1];
        } else {
            bytes = str.getBytes(h51.c);
            zu6Var.k(i3);
            zu6Var.k(bytes.length);
        }
        zu6Var.l(0L);
        zu6Var.l(0L);
        zu6Var.i(bytes, bytes.length);
    }
}
