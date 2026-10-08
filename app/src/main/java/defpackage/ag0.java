package defpackage;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ag0 implements zc3, yc3 {
    public final long a;
    public final int b;

    public ag0(long j, byte[] bArr) throws hf8 {
        this.a = j;
        if (bArr.length == 0) {
            this.b = 0;
            return;
        }
        if (bArr.length != 4) {
            y5.h("Unsupported BCJ filter properties");
            throw null;
        }
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i |= (bArr[i2] & 255) << (i2 * 8);
        }
        this.b = i;
    }

    @Override // defpackage.yc3
    public final boolean a() {
        return true;
    }

    @Override // defpackage.zc3
    public final InputStream b(InputStream inputStream, v40 v40Var) {
        gg7 rv6Var;
        long j = this.a;
        int i = this.b;
        if (j == 4) {
            rv6Var = new ex8(i, false);
        } else if (j == 5) {
            rv6Var = new o(i, 1, false);
        } else if (j == 6) {
            rv6Var = new l74(i, false);
        } else if (j == 7) {
            rv6Var = new m(i, false);
        } else if (j == 8) {
            rv6Var = new o(i, 0, false);
        } else if (j == 9) {
            rv6Var = new rv6(i, false);
        } else if (j == 10) {
            j15 j15Var = new j15();
            j15Var.a = i;
            rv6Var = j15Var;
        } else if (j == 11) {
            me6 me6Var = new me6();
            me6Var.a = i;
            rv6Var = me6Var;
        } else {
            rv6Var = null;
        }
        return new ig7(inputStream, rv6Var);
    }

    @Override // defpackage.yc3
    public final boolean c() {
        return false;
    }

    @Override // defpackage.zc3
    public final int d() {
        int i = ig7.q;
        return 5;
    }

    @Override // defpackage.yc3
    public final boolean e() {
        return false;
    }
}
