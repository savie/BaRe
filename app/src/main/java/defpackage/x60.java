package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x60 implements Runnable {
    public final /* synthetic */ List a;
    public final /* synthetic */ List b;
    public final /* synthetic */ int c;
    public final /* synthetic */ z60 d;

    public x60(z60 z60Var, List list, List list2, int i) {
        this.d = z60Var;
        this.a = list;
        this.b = list2;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.d.c.execute(new i8(2, this, ji8.c(new w60(this))));
    }
}
