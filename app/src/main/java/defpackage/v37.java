package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class v37 extends qo0 {
    public boolean e;
    public List f;
    public List g;
    public final ex6 h;

    public v37() {
        ov2 ov2Var = ov2.a;
        this.f = ov2Var;
        this.g = ov2Var;
        this.h = new ex6();
    }

    public final void j(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return;
        }
        List list = this.g;
        this.g = eq3.p(z ? el1.f1(str, list) : el1.e1(list, str));
        zn4.c(new as4(this, 13));
    }
}
