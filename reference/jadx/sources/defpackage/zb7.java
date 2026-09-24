package defpackage;

import android.graphics.Path;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zb7 implements tu1 {
    public final boolean a;
    public final Path.FillType b;
    public final String c;
    public final ac d;
    public final dc e;
    public final boolean f;

    public zb7(String str, boolean z, Path.FillType fillType, ac acVar, dc dcVar, boolean z2) {
        this.c = str;
        this.a = z;
        this.b = fillType;
        this.d = acVar;
        this.e = dcVar;
        this.f = z2;
    }

    @Override // defpackage.tu1
    public final gu1 a(c35 c35Var, am0 am0Var) {
        return new oc3(c35Var, am0Var, this);
    }

    public final String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.a + '}';
    }
}
