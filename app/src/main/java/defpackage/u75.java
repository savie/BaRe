package defpackage;

import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u75 {
    public final Matcher a;
    public final CharSequence b;
    public final t75 c;
    public s75 d;

    public u75(Matcher matcher, CharSequence charSequence) {
        charSequence.getClass();
        this.a = matcher;
        this.b = charSequence;
        this.c = new t75(this);
    }

    public final List a() {
        if (this.d == null) {
            this.d = new s75(this);
        }
        s75 s75Var = this.d;
        s75Var.getClass();
        return s75Var;
    }

    public final nd4 b() {
        Matcher matcher = this.a;
        return l73.F(matcher.start(), matcher.end());
    }
}
