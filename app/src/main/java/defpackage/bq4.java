package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bq4 implements zc3, yc3 {
    public int a = PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;

    @Override // defpackage.yc3
    public boolean a() {
        return false;
    }

    @Override // defpackage.zc3
    public InputStream b(InputStream inputStream, v40 v40Var) {
        return new dq4(inputStream, this.a, v40Var);
    }

    @Override // defpackage.yc3
    public boolean c() {
        return true;
    }

    @Override // defpackage.zc3
    public int d() {
        return (dq4.b(this.a) / 1024) + 104;
    }

    @Override // defpackage.yc3
    public boolean e() {
        return true;
    }
}
