package defpackage;

import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ot6 extends rt6 {
    public EnumSet e;
    public UUID f;
    public EnumSet g;
    public List h;

    @Override // defpackage.rt6
    public final void h(zu6 zu6Var) {
        int i;
        List list = this.h;
        int i2 = this.c;
        zu6Var.k(i2);
        EnumSet enumSet = this.e;
        zu6Var.k(enumSet.size());
        zu6Var.k(1);
        zu6Var.u(2);
        if (us6.b(enumSet)) {
            zu6Var.l(sz8.j0(this.g));
        } else {
            zu6Var.w();
        }
        UUID uuid = this.f;
        long leastSignificantBits = uuid.getLeastSignificantBits();
        long mostSignificantBits = uuid.getMostSignificantBits();
        zu6Var.l(mostSignificantBits >>> 32);
        zu6Var.k((int) ((mostSignificantBits >>> 16) & 65535));
        zu6Var.k((int) (mostSignificantBits & 65535));
        vw2.c.i(zu6Var, leastSignificantBits);
        us6 us6Var = us6.SMB_3_1_1;
        if (enumSet.contains(us6Var)) {
            zu6Var.l((enumSet.size() * 2) + i2 + 64 + (8 - (((enumSet.size() * 2) + i2) % 8)));
            zu6Var.k(list.size());
            zu6Var.v();
        } else {
            zu6Var.u(8);
        }
        Iterator it = enumSet.iterator();
        while (it.hasNext()) {
            zu6Var.k(((us6) it.next()).a);
        }
        int size = ((enumSet.size() * 2) + i2) % 8;
        if (size > 0) {
            zu6Var.u(8 - size);
        }
        if (enumSet.contains(us6Var)) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                mt6 mt6Var = (mt6) list.get(i3);
                mt6Var.getClass();
                zu6 zu6Var2 = new zu6();
                int iD = mt6Var.d(zu6Var2);
                zu6Var.k((int) mt6Var.a.a);
                zu6Var.k(iD);
                zu6Var.w();
                zu6Var.e(zu6Var2);
                int i4 = iD + 8;
                if (i3 < list.size() - 1 && (i = i4 % 8) != 0) {
                    zu6Var.u(8 - i);
                }
            }
        }
    }
}
