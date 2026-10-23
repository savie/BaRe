package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ci0 implements b0, cb4 {
    public final int a;
    public final int b;
    public final z1 c;

    public ci0(int i, int i2, z1 z1Var) {
        this.a = i;
        this.b = i2;
        this.c = z1Var;
    }

    @Override // defpackage.b0
    public final q1 d() {
        try {
            return g();
        } catch (IOException e) {
            throw new p1(e.getMessage(), 0);
        }
    }

    @Override // defpackage.cb4
    public q1 g() {
        return this.c.b(this.a, this.b);
    }
}
