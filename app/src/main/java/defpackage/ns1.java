package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ns1 implements fw6, kj5 {
    public final fw6 a;
    public final kj5 b;
    public ox1 c;
    public Throwable d;
    public final ms1 e;

    public ns1(fw6 fw6Var) {
        mj5 mj5Var = new mj5();
        fw6Var.getClass();
        this.a = fw6Var;
        this.b = mj5Var;
        this.e = new ms1(this);
    }

    @Override // defpackage.kj5
    public final Object a(kv1 kv1Var) {
        return this.b.a(kv1Var);
    }

    @Override // defpackage.fw6
    public final boolean a0() {
        return this.a.a0();
    }

    @Override // defpackage.kj5
    public final void b(Object obj) {
        this.b.b(null);
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws Exception {
        ms1 ms1Var = this.e;
        if (ms1Var != null) {
            ms1Var.m(-1);
        }
        this.a.close();
    }

    public final void g(StringBuilder sb) {
        int i;
        if (this.c == null && this.d == null) {
            sb.append("\t\tStatus: Free connection");
            sb.append('\n');
        } else {
            sb.append("\t\tStatus: Acquired connection");
            sb.append('\n');
            ox1 ox1Var = this.c;
            if (ox1Var != null) {
                sb.append("\t\tCoroutine: " + ox1Var);
                sb.append('\n');
            }
            Throwable th = this.d;
            if (th != null) {
                sb.append("\t\tAcquired:");
                sb.append('\n');
                Iterator it = el1.N0(1, nq7.m0(yc9.g0(th))).iterator();
                while (it.hasNext()) {
                    sb.append("\t\t" + ((String) it.next()));
                    sb.append('\n');
                }
            }
        }
        if (this.e != null) {
            StringBuilder sb2 = new StringBuilder("\t\tPrepared Statement Cache Size: ");
            ms1 ms1Var = this.e;
            synchronized (((q34) ms1Var.g)) {
                i = ms1Var.c;
            }
            sb2.append(i);
            sb.append(sb2.toString());
            sb.append('\n');
        }
    }

    @Override // defpackage.fw6
    public final nw6 p0(String str) {
        str.getClass();
        ms1 ms1Var = this.e;
        if (ms1Var == null) {
            return this.a.p0(str);
        }
        Object objH = ms1Var.h(str);
        objH.getClass();
        return new ls1((nw6) objH);
    }

    public final String toString() {
        return this.a.toString();
    }
}
