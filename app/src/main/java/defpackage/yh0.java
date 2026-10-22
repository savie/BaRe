package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class yh0 implements b0, cb4 {
    public final /* synthetic */ int a;
    public z1 b;

    public /* synthetic */ yh0(int i) {
        this.a = i;
    }

    @Override // defpackage.b0
    public final q1 d() {
        switch (this.a) {
            case 0:
                try {
                    return new xh0(this.b.c());
                } catch (IOException e) {
                    l0.e(e.getMessage());
                    return null;
                }
            default:
                try {
                    return g();
                } catch (IOException e2) {
                    l0.e(e2.getMessage());
                    return null;
                }
        }
    }

    @Override // defpackage.cb4
    public final q1 g() {
        switch (this.a) {
            case 0:
                return new xh0(this.b.c());
            default:
                return f92.a(this.b.c());
        }
    }
}
