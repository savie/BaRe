package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.compress.Packer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fx extends gx {
    public final q63 a;
    public final i40 b;
    public final boolean c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;

    public fx(q63 q63Var) {
        q63Var.getClass();
        this.a = q63Var;
        i40 i40VarC = Packer.c(q63Var);
        this.b = i40VarC;
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
        this.e = jH;
        long jH2 = io4.h(z ? Long.valueOf(jH) : null);
        this.f = jH2;
        this.g = jH;
        this.h = jH2 + jH + jH;
    }

    @Override // defpackage.gx
    public final long a() {
        return this.h;
    }
}
