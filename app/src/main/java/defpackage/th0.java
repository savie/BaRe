package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class th0 implements w {
    public final z1 a;
    public rt1 b;

    public th0(z1 z1Var) {
        this.a = z1Var;
    }

    public static sh0 a(z1 z1Var) {
        rt1 rt1Var = new rt1(z1Var);
        return new sh0(iz1.v(rt1Var), rt1Var.c);
    }

    @Override // defpackage.b0
    public final q1 d() {
        try {
            return a(this.a);
        } catch (IOException e) {
            q.e("IOException converting stream to byte array: ", e.getMessage(), e);
            return null;
        }
    }

    @Override // defpackage.w
    public final InputStream e() {
        rt1 rt1Var = new rt1(this.a);
        this.b = rt1Var;
        return rt1Var;
    }

    @Override // defpackage.w
    public final int f() {
        return this.b.c;
    }

    @Override // defpackage.cb4
    public final q1 g() {
        return a(this.a);
    }
}
