package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.compress.Packer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yw extends gx {
    public final q63 a;
    public final q63 b;
    public final boolean c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;
    public final long k;

    public yw(q63 q63Var, q63 q63Var2) {
        q63Var.getClass();
        q63Var2.getClass();
        this.a = q63Var;
        this.b = q63Var2;
        i40 i40VarC = q63Var2.j() ? Packer.c(q63Var2) : null;
        boolean z = false;
        if (i40VarC != null) {
            ArrayList arrayList = i40VarC.b;
            arrayList.getClass();
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (nq7.B0((String) it.next(), '.').equals("compressed")) {
                        z = true;
                        break;
                    }
                }
            }
        }
        this.c = z;
        q63Var = q63Var.j() ? q63Var : null;
        long jH = io4.h(q63Var != null ? Long.valueOf(q63Var.A()) : null);
        this.d = jH;
        q63Var2 = q63Var2.j() ? q63Var2 : null;
        long jH2 = io4.h(q63Var2 != null ? Long.valueOf(q63Var2.A()) : null);
        this.e = jH;
        this.f = jH2;
        long jH3 = io4.h(z ? Long.valueOf(jH2) : null);
        this.g = jH3;
        this.h = jH2;
        long j = jH + jH2;
        long jW = tu0.w((j + jH2) / 10.0f);
        this.i = jW;
        this.j = j;
        this.k = j + jH3 + jH2 + jW;
    }

    @Override // defpackage.gx
    public final long a() {
        return this.k;
    }
}
