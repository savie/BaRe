package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.compress.Packer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cx extends gx {
    public final q63 a;
    public final i40 b;
    public final boolean c;
    public final boolean d;
    public final long e;
    public final List f;
    public final CopyOnWriteArrayList g;
    public final long h;
    public final long i;

    /* JADX WARN: Code duplicated, block: B:13:0x003e A[EDGE_INSN: B:13:0x003e->B:14:0x003f BREAK  A[LOOP:0: B:8:0x0022->B:42:?]] */
    public cx(q63 q63Var) {
        boolean z;
        List listP0;
        q63Var.getClass();
        this.a = q63Var;
        i40 i40VarC = Packer.c(q63Var);
        this.b = i40VarC;
        if (i40VarC == null) {
            z = false;
            break;
        }
        ArrayList arrayList = i40VarC.b;
        arrayList.getClass();
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
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
        boolean z2 = i40VarC != null && i40VarC.a == 6;
        this.d = z2;
        long jO1 = el1.o1(vm4.b(q63Var, z2).values());
        long jC = 0;
        Long lValueOf = jO1 <= 0 ? null : Long.valueOf(jO1);
        this.e = lValueOf != null ? lValueOf.longValue() : q63Var.A();
        if (z2) {
            listP0 = nc8.I(ex.UNTAR);
        } else {
            listP0 = x50.p0(new ex[]{ex.UNPACK, z ? ex.DECOMPRESS : null, ex.UNTAR});
        }
        this.f = listP0;
        this.g = new CopyOnWriteArrayList();
        this.h = q63Var.A();
        Iterator it2 = listP0.iterator();
        while (it2.hasNext()) {
            jC += c((ex) it2.next());
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
        exVar.getClass();
        if (this.d) {
            return vm4.a(this.f, exVar, this.e);
        }
        return tu0.w(exVar.getTaskProgressRatio() * this.h);
    }

    public final void d(ex exVar) {
        exVar.getClass();
        if (this.f.contains(exVar)) {
            this.g.add(exVar);
        }
    }
}
