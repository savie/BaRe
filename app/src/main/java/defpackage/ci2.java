package defpackage;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ci2 implements zc3, yc3, xv6 {
    public final int a;

    public ci2(byte[] bArr) throws hf8 {
        if (bArr.length == 1) {
            this.a = (bArr[0] & 255) + 1;
        } else {
            y5.h("Unsupported Delta filter properties");
            throw null;
        }
    }

    @Override // defpackage.yc3
    public boolean a() {
        return true;
    }

    @Override // defpackage.zc3
    public InputStream b(InputStream inputStream, v40 v40Var) {
        return new gi2(inputStream, this.a);
    }

    @Override // defpackage.yc3
    public boolean c() {
        return false;
    }

    @Override // defpackage.zc3
    public int d() {
        return 1;
    }

    @Override // defpackage.yc3
    public boolean e() {
        return false;
    }

    @Override // defpackage.xv6
    public int getN() {
        return this.a;
    }

    public ci2(int i) {
        this.a = i;
    }
}
