package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sc2 implements ra2 {
    public final String a;
    public ByteArrayInputStream b;

    public sc2(String str, lv1 lv1Var) {
        this.a = str;
    }

    @Override // defpackage.ra2
    public final Class a() {
        return InputStream.class;
    }

    @Override // defpackage.ra2
    public final void c() {
        try {
            this.b.close();
        } catch (IOException unused) {
        }
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) {
        try {
            ByteArrayInputStream byteArrayInputStreamD = lv1.d(this.a);
            this.b = byteArrayInputStreamD;
            qa2Var.f(byteArrayInputStreamD);
        } catch (IllegalArgumentException e) {
            qa2Var.b(e);
        }
    }

    @Override // defpackage.ra2
    public final int e() {
        return 1;
    }

    @Override // defpackage.ra2
    public final void cancel() {
    }
}
