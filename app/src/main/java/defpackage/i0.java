package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class i0 extends IOException {
    public final RuntimeException a;

    public i0(RuntimeException runtimeException, String str) {
        super(str);
        this.a = runtimeException;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.a;
    }
}
