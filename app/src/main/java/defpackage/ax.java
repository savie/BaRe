package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.compress.Packer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ax extends gx {
    public final q63 a;
    public final i40 b;
    public final boolean c;
    public final boolean d;
    public final Map e;
    public final List f;
    public final CopyOnWriteArrayList g;
    public final long h;
    public final long i;

    /* JADX WARN: Code duplicated, block: B:13:0x003e A[EDGE_INSN: B:13:0x003e->B:14:0x003f BREAK  A[LOOP:0: B:8:0x0022->B:58:?]] */
    public ax(q63 q63Var) {
        boolean z;
        List listP0;
        ArrayList arrayList;
        String str;
        q63Var.getClass();
        this.a = q63Var;
        i40 i40VarC = Packer.c(q63Var);
        this.b = i40VarC;
        boolean z2 = true;
        if (i40VarC == null) {
            z = false;
            break;
        }
        ArrayList arrayList2 = i40VarC.b;
        arrayList2.getClass();
        if (!arrayList2.isEmpty()) {
            Iterator it = arrayList2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (nq7.B0((String) it.next(), '.').equals("compressed")) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        this.c = z;
        this.d = i40VarC != null && i40VarC.a == 6;
        if (i40VarC != null && (arrayList = i40VarC.b) != null && !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            do {
                if (!it2.hasNext()) {
                    z2 = false;
                    break;
                } else {
                    str = (String) it2.next();
                    if (nq7.Z(str, "_user_de", false)) {
                        break;
                    }
                }
            } while (!pe4.d(nq7.I0(str, '/'), "data_de"));
        } else {
            z2 = false;
            break;
        }
        this.e = vm4.b(this.a, this.d);
        if (this.d) {
            listP0 = x50.p0(new ex[]{ex.UNTAR_DATA, z2 ? ex.UNTAR_DEDATA : null});
        } else {
            listP0 = x50.p0(new ex[]{ex.UNPACK, this.c ? ex.DECOMPRESS : null, ex.UNTAR_DATA, z2 ? ex.UNTAR_DEDATA : null});
        }
        this.f = listP0;
        this.g = new CopyOnWriteArrayList();
        this.h = this.a.A();
        Iterator it3 = listP0.iterator();
        long jC = 0;
        while (it3.hasNext()) {
            jC += c((ex) it3.next());
        }
        this.i = jC;
    }

    @Override // defpackage.gx
    public final long a() {
        return this.i;
    }

    public final long b() {
        long jC = 0;
        for (ex exVar : this.g) {
            exVar.getClass();
            jC += c(exVar);
        }
        return jC;
    }

    public final long c(ex exVar) {
        String str;
        exVar.getClass();
        boolean z = this.d;
        long j = this.h;
        if (!z) {
            return tu0.w(exVar.getTaskProgressRatio() * j);
        }
        int i = zw.a[exVar.ordinal()];
        if (i != 1) {
            str = i != 2 ? null : "data_de";
        } else {
            str = "data";
        }
        Long l = str != null ? (Long) this.e.get(str) : null;
        return (l == null || l.longValue() <= 0) ? vm4.a(this.f, exVar, j) : l.longValue();
    }

    public final void d(ex exVar) {
        exVar.getClass();
        if (this.f.contains(exVar)) {
            this.g.add(exVar);
        }
    }
}
