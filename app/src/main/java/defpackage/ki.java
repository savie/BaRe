package defpackage;

import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ki extends pi {
    public final int a;
    public final String b;
    public final String c;
    public final qt3 d;
    public final int e;
    public final Integer f;
    public final Integer g;
    public final Integer h;
    public final boolean i;
    public final Boolean j;
    public final boolean k;

    public ki(int i, String str, String str2, qt3 qt3Var, int i2, Integer num, Integer num2, Integer num3, boolean z, Boolean bool, boolean z2, int i3) {
        str2 = (i3 & 16) != 0 ? null : str2;
        qt3Var = (i3 & 32) != 0 ? null : qt3Var;
        num = (i3 & 128) != 0 ? null : num;
        num2 = (i3 & 256) != 0 ? null : num2;
        num3 = (i3 & 512) != 0 ? null : num3;
        z = (i3 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? false : z;
        bool = (i3 & 4096) != 0 ? null : bool;
        z2 = (i3 & 8192) != 0 ? false : z2;
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = qt3Var;
        this.e = i2;
        this.f = num;
        this.g = num2;
        this.h = num3;
        this.i = z;
        this.j = bool;
        this.k = z2;
    }

    @Override // defpackage.pi
    public final int a() {
        return this.a;
    }
}
