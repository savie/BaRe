package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class wh0 implements l1 {
    public final z1 a;

    public wh0(z1 z1Var) {
        this.a = z1Var;
    }

    public static vh0 a(z1 z1Var) {
        return new vh0(iz1.v(new st1(z1Var)), null);
    }

    @Override // defpackage.l1
    public final InputStream c() {
        return new st1(this.a);
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

    @Override // defpackage.cb4
    public final q1 g() {
        return a(this.a);
    }
}
