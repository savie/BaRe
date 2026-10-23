package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class e92 implements w {
    public final mg2 a;
    public int b = 0;

    public e92(mg2 mg2Var) {
        this.a = mg2Var;
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

    @Override // defpackage.w
    public final InputStream e() {
        String str;
        mg2 mg2Var = this.a;
        int i = mg2Var.d;
        if (i >= 1) {
            int i2 = mg2Var.read();
            this.b = i2;
            if (i2 > 0) {
                if (i < 2) {
                    str = "zero length data with non-zero pad bits";
                } else if (i2 > 7) {
                    str = "pad bits cannot be greater than 7 or less than 0";
                }
            }
            return mg2Var;
        }
        str = "content octets cannot be empty";
        l0.e(str);
        return null;
    }

    @Override // defpackage.w
    public final int f() {
        return this.b;
    }

    @Override // defpackage.cb4
    public final q1 g() {
        return u.x(this.a.b());
    }
}
