package defpackage;

import java.security.spec.KeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class q45 implements KeySpec {
    public final byte[] a;
    public final byte[] b;
    public final n45 c;
    public final boolean d;

    public q45(n45 n45Var, byte[] bArr) {
        if (bArr.length != 64) {
            c6.f("incorrect length for seed");
            throw null;
        }
        this.d = true;
        this.c = n45Var;
        this.a = ms8.k(bArr);
        this.b = null;
    }

    public q45(n45 n45Var, byte[] bArr, byte[] bArr2) {
        this.d = false;
        this.c = n45Var;
        this.a = ms8.k(bArr);
        this.b = ms8.k(bArr2);
    }
}
