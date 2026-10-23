package defpackage;

import java.text.Collator;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hn3 {
    public final zn7 a;
    public final List b;
    public final q63 c;
    public final bn3 d;
    public final boolean e;
    public final List f;
    public final List g;
    public final List h;
    public final String i;

    public hn3(zn7 zn7Var, List list, q63 q63Var) {
        ArrayList arrayList;
        List listJ1;
        int i;
        ArrayList arrayList2;
        bn3 bn3VarN = ho6.n(zn7Var, q63Var);
        boolean z = bn3VarN.b;
        ArrayList arrayListB = q63Var.B();
        final s93 s93Var = new s93();
        boolean z2 = true;
        int i2 = 0;
        List listN1 = arrayListB;
        if (arrayListB != null && !arrayListB.isEmpty()) {
            if (!s93Var.e) {
                listN1 = arrayListB;
                arrayList2 = arrayListB;
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : arrayListB) {
                    q63 q63Var2 = (q63) obj;
                    String strP = q63Var2.p();
                    if (!q63Var2.n().getFile().isHidden() && !uq7.V(strP, ".", false)) {
                        arrayList3.add(obj);
                    }
                }
                arrayList2 = arrayList3;
            }
            listN1 = arrayListB;
            arrayList2 = arrayListB;
            final Collator collator = Collator.getInstance(s93Var.f);
            collator.setStrength(1);
            Comparator comparatorReversed = new Comparator() { // from class: q93
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    boolean zX;
                    q63 q63Var3 = (q63) obj2;
                    q63 q63Var4 = (q63) obj3;
                    s93 s93Var2 = s93Var;
                    if (!s93Var2.c || (zX = q63Var3.x()) == q63Var4.x()) {
                        if (s93Var2.d) {
                            q63Var3.getClass();
                            boolean z3 = q63Var3.n().getFile().isHidden() || uq7.V(q63Var3.p(), ".", false);
                            q63Var4.getClass();
                            if (z3 != (q63Var4.n().getFile().isHidden() || uq7.V(q63Var4.p(), ".", false))) {
                                if (!z3) {
                                    return -1;
                                }
                            }
                        }
                        int i3 = t93.a[s93Var2.a.ordinal()];
                        Collator collator2 = collator;
                        if (i3 == 1) {
                            int iCompare = collator2.compare(q63Var3.p(), q63Var4.p());
                            if (iCompare != 0) {
                                return iCompare;
                            }
                        } else if (i3 == 2) {
                            int iG = pe4.g(q63Var3.y() ? q63Var3.A() : 0L, q63Var4.y() ? q63Var4.A() : 0L);
                            if (iG != 0) {
                                return iG;
                            }
                            int iCompare2 = collator2.compare(q63Var3.p(), q63Var4.p());
                            if (iCompare2 != 0) {
                                return iCompare2;
                            }
                        } else if (i3 == 3) {
                            int iG2 = pe4.g(q63Var3.z(), q63Var4.z());
                            if (iG2 != 0) {
                                return iG2;
                            }
                            int iCompare3 = collator2.compare(q63Var3.p(), q63Var4.p());
                            if (iCompare3 != 0) {
                                return iCompare3;
                            }
                        } else {
                            if (i3 != 4) {
                                q.j();
                                return 0;
                            }
                            q63Var3.getClass();
                            String strF = od2.f(q63Var3);
                            q63Var4.getClass();
                            int iCompare4 = collator2.compare(strF, od2.f(q63Var4));
                            if (iCompare4 != 0) {
                                return iCompare4;
                            }
                            int iCompare5 = collator2.compare(q63Var3.p(), q63Var4.p());
                            if (iCompare5 != 0) {
                                return iCompare5;
                            }
                        }
                        return collator2.compare(q63Var3.v(), q63Var4.v());
                    }
                    if (zX) {
                        return -1;
                    }
                    return 1;
                }
            };
            if (!s93Var.b) {
                comparatorReversed = comparatorReversed.reversed();
                comparatorReversed.getClass();
            }
            listN1 = el1.n1(arrayList2, comparatorReversed);
        }
        listN1 = arrayListB;
        if (listN1 != null) {
            arrayList = new ArrayList(hl1.G0(listN1, 10));
            Iterator it = listN1.iterator();
            while (it.hasNext()) {
                arrayList.add(ho6.n(zn7Var, (q63) it.next()));
            }
        } else {
            arrayList = null;
        }
        List list2 = ov2.a;
        List list3 = arrayList == null ? list2 : arrayList;
        zn7Var.getClass();
        q63Var.getClass();
        if (q63Var.equals(zn7Var.n())) {
            listJ1 = nc8.I(new fn3(q63Var, z2, z2, zn7Var.u()));
        } else {
            ArrayList arrayList4 = new ArrayList();
            q63 q63VarT = q63Var;
            do {
                boolean zEquals = q63VarT.equals(zn7Var.n());
                arrayList4.add(new fn3(q63VarT, q63VarT.equals(q63Var), zEquals, zEquals ? zn7Var.u() : null));
                if (q63VarT.v().equals(zn7Var.n().v())) {
                    break;
                } else {
                    q63VarT = q63VarT.t();
                }
            } while (q63VarT != null);
            listJ1 = el1.j1(arrayList4);
        }
        list2 = listN1 != null ? listN1 : list2;
        if (list2.isEmpty()) {
            i = 0;
        } else {
            Iterator it2 = list2.iterator();
            i = 0;
            while (it2.hasNext()) {
                if (((q63) it2.next()).y() && (i = i + 1) < 0) {
                    fl1.E0();
                    throw null;
                }
            }
        }
        if (!list2.isEmpty()) {
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                if (((q63) it3.next()).x() && (i2 = i2 + 1) < 0) {
                    fl1.E0();
                    throw null;
                }
            }
        }
        p93 p93Var = p93.a;
        String strD = p93.d(i, i2);
        zn7Var.getClass();
        list.getClass();
        q63Var.getClass();
        this.a = zn7Var;
        this.b = list;
        this.c = q63Var;
        this.d = bn3VarN;
        this.e = z;
        this.f = listN1;
        this.g = list3;
        this.h = listJ1;
        this.i = strD;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hn3)) {
            return false;
        }
        hn3 hn3Var = (hn3) obj;
        return pe4.d(this.a, hn3Var.a) && pe4.d(this.b, hn3Var.b) && pe4.d(this.c, hn3Var.c) && pe4.d(this.d, hn3Var.d) && this.e == hn3Var.e && pe4.d(this.f, hn3Var.f) && pe4.d(this.g, hn3Var.g) && pe4.d(this.h, hn3Var.h) && pe4.d(this.i, hn3Var.i);
    }

    public final int hashCode() {
        int iH = fz5.h((this.d.hashCode() + ((this.c.a.hashCode() + fz5.i(this.b, this.a.hashCode() * 31, 31)) * 31)) * 31, 31, this.e);
        List list = this.f;
        return this.i.hashCode() + fz5.i(this.h, fz5.i(this.g, (iH + (list == null ? 0 : list.hashCode())) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("State(storage=");
        sb.append(this.a);
        sb.append(", allStorages=");
        sb.append(this.b);
        sb.append(", folder=");
        sb.append(this.c);
        sb.append(", currentPickerItem=");
        sb.append(this.d);
        sb.append(", isFolderSelectable=");
        sb.append(this.e);
        sb.append(", allFiles=");
        sb.append(this.f);
        sb.append(", items=");
        sb.append(this.g);
        sb.append(", navItems=");
        sb.append(this.h);
        sb.append(", folderAndFilesCountString=");
        return dj7.n(sb, this.i, ")");
    }
}
