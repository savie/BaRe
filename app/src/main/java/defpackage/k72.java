package defpackage;

import android.graphics.drawable.Drawable;
import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k72 implements px7 {
    public final int a;
    public final int b;
    public kk6 c;

    public k72(int i, int i2) {
        if (!xh8.u(i, i2)) {
            c6.f(dj7.i("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ", i, i2, " and height: "));
            throw null;
        }
        this.a = i;
        this.b = i2;
    }

    @Override // defpackage.px7
    public final void c(fh7 fh7Var) {
        fh7Var.m(this.a, this.b);
    }

    @Override // defpackage.px7
    public final void d(kk6 kk6Var) {
        this.c = kk6Var;
    }

    @Override // defpackage.px7
    public final kk6 k() {
        return this.c;
    }

    @Override // defpackage.du4
    public final void e() {
    }

    @Override // defpackage.du4
    public final void h() {
    }

    @Override // defpackage.du4
    public final void m() {
    }

    @Override // defpackage.px7
    public final void a(fh7 fh7Var) {
    }

    @Override // defpackage.px7
    public void g(Drawable drawable) {
    }

    @Override // defpackage.px7
    public void j(Drawable drawable) {
    }

    public k72() {
        this(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
    }
}
