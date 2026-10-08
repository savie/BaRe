package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class q82 implements l1 {
    public mg2 a;

    @Override // defpackage.l1
    public final InputStream c() {
        return this.a;
    }

    @Override // defpackage.b0
    public final q1 d() {
        try {
            return g();
        } catch (IOException e) {
            q.e("IOException converting stream to byte array: ", e.getMessage(), e);
            return null;
        }
    }

    @Override // defpackage.cb4
    public final q1 g() {
        return new p82(this.a.b());
    }
}
