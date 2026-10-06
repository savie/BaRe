package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zh2 implements f77 {
    public final CharSequence a;
    public final int b;
    public final qt3 c;

    public zh2(CharSequence charSequence, int i, qt3 qt3Var) {
        charSequence.getClass();
        this.a = charSequence;
        this.b = i;
        this.c = qt3Var;
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        return new yh2(this);
    }
}
