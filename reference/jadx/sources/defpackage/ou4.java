package defpackage;

import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class ou4 extends InputStream {
    public final InputStream a;
    public final int b;

    public ou4(InputStream inputStream, int i) {
        this.a = inputStream;
        this.b = i;
    }

    public final void a() {
        InputStream inputStream = this.a;
        if (inputStream instanceof hb4) {
            hb4 hb4Var = (hb4) inputStream;
            hb4Var.f = true;
            hb4Var.b();
        }
    }
}
