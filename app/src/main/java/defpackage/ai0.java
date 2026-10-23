package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ai0 implements b0, cb4 {
    public final /* synthetic */ int a;
    public z1 b;

    @Override // defpackage.b0
    public final q1 d() {
        switch (this.a) {
            case 0:
                try {
                    return new zh0(this.b.c());
                } catch (IOException e) {
                    throw new p1(e.getMessage(), e);
                }
            default:
                try {
                    return g();
                } catch (IOException e2) {
                    throw new p1(e2.getMessage(), e2);
                }
        }
    }

    @Override // defpackage.cb4
    public final q1 g() {
        switch (this.a) {
            case 0:
                return new zh0(this.b.c());
            default:
                return f92.b(this.b.c());
        }
    }
}
