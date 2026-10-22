package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fc0 {
    public String a;
    public String b;
    public String c;
    public long d;
    public Long e;
    public boolean f;
    public jz1 g;
    public a02 h;
    public zz1 i;
    public kz1 j;
    public List k;
    public int l;
    public byte m;

    public final gc0 a() {
        String str;
        String str2;
        jz1 jz1Var;
        if (this.m == 7 && (str = this.a) != null && (str2 = this.b) != null && (jz1Var = this.g) != null) {
            return new gc0(str, str2, this.c, this.d, this.e, this.f, jz1Var, this.h, this.i, this.j, this.k, this.l);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" generator");
        }
        if (this.b == null) {
            sb.append(" identifier");
        }
        if ((this.m & 1) == 0) {
            sb.append(" startedAt");
        }
        if ((this.m & 2) == 0) {
            sb.append(" crashed");
        }
        if (this.g == null) {
            sb.append(" app");
        }
        if ((this.m & 4) == 0) {
            sb.append(" generatorType");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }
}
