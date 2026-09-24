package defpackage;

import java.util.Enumeration;

/* JADX INFO: loaded from: classes.dex */
public final class u1 implements Enumeration {
    public int a = 0;
    public final /* synthetic */ v1 b;

    public u1(v1 v1Var) {
        this.b = v1Var;
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return this.a < this.b.a.length;
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        int i = this.a;
        b0[] b0VarArr = this.b.a;
        if (i < b0VarArr.length) {
            this.a = i + 1;
            return b0VarArr[i];
        }
        m0.d();
        return null;
    }
}
