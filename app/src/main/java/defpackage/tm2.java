package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tm2 implements oy5 {
    public final /* synthetic */ fi7 a;
    public final /* synthetic */ Set b;
    public final /* synthetic */ Set c;
    public final /* synthetic */ Set d;
    public final /* synthetic */ int e;
    public final /* synthetic */ Set f;
    public final /* synthetic */ wm2 k;

    public tm2(wm2 wm2Var, fi7 fi7Var, Set set, Set set2, Set set3, int i, Set set4) {
        this.k = wm2Var;
        this.a = fi7Var;
        this.b = set;
        this.c = set2;
        this.d = set3;
        this.e = i;
        this.f = set4;
    }

    @Override // defpackage.oy5
    public final Object b(fi7 fi7Var) {
        String str = fi7Var.b;
        wm2 wm2Var = this.k;
        j87 j87VarH = wm2Var.d;
        fi7 fi7Var2 = this.a;
        String str2 = fi7Var2.a;
        String str3 = fi7Var.a;
        if (!w13.h(str2, str3)) {
            j87VarH = j87VarH.h(fi7Var);
        }
        if (!w13.h(str2, str3) || !w13.h(fi7Var2.b, str)) {
            wm2Var = (wm2) j87VarH.a(str);
        }
        wm2 wm2Var2 = wm2Var;
        if (fi7Var2.equals(fi7Var)) {
            return null;
        }
        return wm2.g(wm2Var2, fi7Var, this.b, this.c, this.d, this.e, this.f);
    }
}
