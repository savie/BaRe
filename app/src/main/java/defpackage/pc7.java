package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pc7 implements tu1 {
    public final String a;
    public final bc b;
    public final ArrayList c;
    public final ac d;
    public final dc e;
    public final bc f;
    public final int g;
    public final int h;
    public final float i;
    public final boolean j;

    public pc7(String str, bc bcVar, ArrayList arrayList, ac acVar, dc dcVar, bc bcVar2, int i, int i2, float f, boolean z) {
        this.a = str;
        this.b = bcVar;
        this.c = arrayList;
        this.d = acVar;
        this.e = dcVar;
        this.f = bcVar2;
        this.g = i;
        this.h = i2;
        this.i = f;
        this.j = z;
    }

    @Override // defpackage.tu1
    public final gu1 a(c35 c35Var, am0 am0Var) {
        return new wq7(c35Var, am0Var, this);
    }
}
