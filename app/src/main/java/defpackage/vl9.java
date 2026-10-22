package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vl9 extends rm9 {
    public final ib9 a;
    public final int b;

    public vl9(id9 id9Var) throws rl9 {
        id9Var.getClass();
        this.a = id9Var;
        int i = 0;
        int i2 = 0;
        while (true) {
            ib9 ib9Var = this.a;
            if (i >= ib9Var.size()) {
                break;
            }
            int iA = ((rm9) ib9Var.get(i)).a();
            if (i2 < iA) {
                i2 = iA;
            }
            i++;
        }
        int i3 = i2 + 1;
        this.b = i3;
        if (i3 > 8) {
            throw new rl9("Exceeded cutoff limit for max depth of cbor value");
        }
    }

    @Override // defpackage.rm9
    public final int a() {
        return this.b;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        rm9 rm9Var = (rm9) obj;
        int iZza = rm9Var.zza();
        int iC = rm9.c((byte) -128);
        if (iC != iZza) {
            return iC - rm9Var.zza();
        }
        ib9 ib9Var = ((vl9) rm9Var).a;
        ib9 ib9Var2 = this.a;
        if (ib9Var2.size() != ib9Var.size()) {
            return ib9Var2.size() - ib9Var.size();
        }
        for (int i = 0; i < ib9Var2.size(); i++) {
            int iCompareTo = ((rm9) ib9Var2.get(i)).compareTo((rm9) ib9Var.get(i));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && vl9.class == obj.getClass()) {
            return this.a.equals(((vl9) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(rm9.c((byte) -128)), this.a});
    }

    public final String toString() {
        ib9 ib9Var = this.a;
        if (ib9Var.isEmpty()) {
            return "[]";
        }
        ArrayList arrayList = new ArrayList();
        int size = ib9Var.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((rm9) ib9Var.get(i)).toString().replace("\n", "\n  "));
        }
        StringBuilder sb = new StringBuilder("[\n  ");
        Iterator it = arrayList.iterator();
        try {
            if (it.hasNext()) {
                sb.append(lk.z(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) ",\n  ");
                    sb.append(lk.z(it.next()));
                }
            }
            sb.append("\n]");
            return sb.toString();
        } catch (IOException e) {
            e6.e(e);
            return null;
        }
    }

    @Override // defpackage.rm9
    public final int zza() {
        return rm9.c((byte) -128);
    }
}
