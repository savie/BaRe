package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c84 implements AutoCloseable {
    public final Object a;
    public final qw0 b;
    public final mp7 d;
    public byte[] e;
    public char[] f;
    public boolean c = true;
    public boolean k = false;

    public c84(mp7 mp7Var, qw0 qw0Var, vu1 vu1Var) {
        this.d = mp7Var;
        this.b = qw0Var;
        this.a = vu1Var.a;
    }

    public final void a(byte[] bArr) {
        byte[] bArr2 = this.e;
        if (bArr != bArr2 && bArr.length < bArr2.length) {
            c6.f("Trying to release buffer smaller than original");
            return;
        }
        this.e = null;
        AtomicReferenceArray atomicReferenceArray = this.b.a;
        byte[] bArr3 = (byte[]) atomicReferenceArray.get(3);
        if (bArr3 == null || bArr.length > bArr3.length) {
            atomicReferenceArray.set(3, bArr);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.k) {
            return;
        }
        this.k = true;
        if (this.c) {
            this.c = false;
            this.b.getClass();
        }
    }
}
