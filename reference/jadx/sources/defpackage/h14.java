package defpackage;

import android.graphics.Path;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h14 implements tu1 {
    public final int a;
    public final Path.FillType b;
    public final cc c;
    public final dc d;
    public final fc e;
    public final fc f;
    public final String g;
    public final boolean h;

    public h14(String str, int i, Path.FillType fillType, cc ccVar, dc dcVar, fc fcVar, fc fcVar2, boolean z) {
        this.a = i;
        this.b = fillType;
        this.c = ccVar;
        this.d = dcVar;
        this.e = fcVar;
        this.f = fcVar2;
        this.g = str;
        this.h = z;
    }

    @Override // defpackage.tu1
    public final gu1 a(c35 c35Var, am0 am0Var) {
        return new i14(c35Var, am0Var, this);
    }
}
