package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m67 {
    public final byte[] a;
    public int b;
    public int c;
    public boolean d;
    public final boolean e;
    public m67 f;
    public m67 g;

    public m67(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        bArr.getClass();
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = z2;
    }

    public final m67 a() {
        m67 m67Var = this.f;
        if (m67Var == this) {
            m67Var = null;
        }
        m67 m67Var2 = this.g;
        m67Var2.getClass();
        m67Var2.f = this.f;
        m67 m67Var3 = this.f;
        m67Var3.getClass();
        m67Var3.g = this.g;
        this.f = null;
        this.g = null;
        return m67Var;
    }

    public final void b(m67 m67Var) {
        m67Var.getClass();
        m67Var.g = this;
        m67Var.f = this.f;
        m67 m67Var2 = this.f;
        m67Var2.getClass();
        m67Var2.g = m67Var;
        this.f = m67Var;
    }

    public final m67 c() {
        this.d = true;
        return new m67(this.a, this.b, this.c, true, false);
    }

    public final void d(m67 m67Var, int i) {
        m67Var.getClass();
        if (!m67Var.e) {
            l0.e("only owner can write");
            return;
        }
        int i2 = m67Var.c;
        int i3 = i2 + i;
        if (i3 > 8192) {
            if (m67Var.d) {
                c6.b();
                return;
            }
            int i4 = m67Var.b;
            if (i3 - i4 > 8192) {
                c6.b();
                return;
            }
            byte[] bArr = m67Var.a;
            x50.j0(bArr, bArr, 0, i4, i2, 2);
            m67Var.c -= m67Var.b;
            m67Var.b = 0;
        }
        byte[] bArr2 = m67Var.a;
        int i5 = m67Var.c;
        int i6 = this.b;
        x50.h0(this.a, i5, i6, bArr2, i6 + i);
        m67Var.c += i;
        this.b += i;
    }

    public m67() {
        this.a = new byte[8192];
        this.e = true;
        this.d = false;
    }
}
