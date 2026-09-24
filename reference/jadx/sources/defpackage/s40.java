package defpackage;

import java.util.ArrayList;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s40 {
    public ArrayList a;

    public s40(int i) {
        switch (i) {
            case 1:
                this.a = new ArrayList();
                break;
            case 2:
            default:
                this.a = new ArrayList();
                break;
            case 3:
                this.a = new ArrayList();
                break;
        }
    }

    public r40 a() {
        ArrayList arrayList = this.a;
        if (arrayList.size() == 2 && arrayList.get(0) != null) {
            return new r40(arrayList.toArray());
        }
        Object[] array = arrayList.toArray();
        Comparator comparator = r40.b;
        for (int i = 0; i < array.length; i += 2) {
            zd4 zd4Var = (zd4) array[i];
            if (zd4Var != null && zd4Var.b.isEmpty()) {
                array[i] = null;
            }
        }
        return new r40(array, r40.b);
    }

    public synchronized ArrayList b(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (h98 h98Var : this.a) {
            if ((h98Var.a.isAssignableFrom(cls) && cls2.isAssignableFrom(h98Var.b)) && !arrayList.contains(h98Var.b)) {
                arrayList.add(h98Var.b);
            }
        }
        return arrayList;
    }

    public void c(String str, String str2) {
        zd4 zd4Var = new zd4(1, str);
        ArrayList arrayList = this.a;
        if (str.isEmpty() || str2 == null) {
            return;
        }
        arrayList.add(zd4Var);
        arrayList.add(str2);
    }

    public void d(ut6 ut6Var, zu6 zu6Var) throws iw0 {
        String strQ;
        ArrayList arrayList = this.a;
        long j = ut6Var.j;
        if (j == 3221225507L) {
            xs6 xs6Var = new xs6();
            zu6Var.b.e(zu6Var);
            arrayList.add(xs6Var);
            return;
        }
        if (j == 2147483693L) {
            zs6 zs6Var = new zs6();
            int iS = zu6Var.c + zu6Var.s();
            zu6Var.t(4);
            zu6Var.t(4);
            zu6Var.t(2);
            vw2 vw2Var = zu6Var.b;
            zs6Var.b = vw2Var.d(zu6Var);
            int iD = vw2Var.d(zu6Var);
            int iD2 = vw2Var.d(zu6Var);
            int iD3 = vw2Var.d(zu6Var);
            int iD4 = vw2Var.d(zu6Var);
            zs6Var.a = vw2Var.e(zu6Var) == 0;
            int i = zu6Var.c;
            if (iD2 > 0) {
                zu6Var.c = iD + i;
                strQ = zu6Var.q(h51.d, iD2 / 2);
            } else {
                strQ = null;
            }
            zu6Var.c = i;
            zs6Var.c = strQ;
            if (iD4 > 0) {
                zu6Var.c = i + iD3;
                zu6Var.q(h51.d, iD4 / 2);
            }
            zu6Var.c = iS;
            arrayList.add(zs6Var);
        }
    }
}
