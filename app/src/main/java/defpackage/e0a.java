package defpackage;

import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e0a extends v39 {
    public final /* synthetic */ km5 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0a(fu fuVar, CharSequence charSequence, km5 km5Var) {
        super(fuVar, charSequence);
        this.f = km5Var;
    }

    @Override // defpackage.v39
    public final int a(int i) {
        return ((Matcher) this.f.b).end();
    }

    @Override // defpackage.v39
    public final int b(int i) {
        Matcher matcher = (Matcher) this.f.b;
        if (matcher.find(i)) {
            return matcher.start();
        }
        return -1;
    }
}
