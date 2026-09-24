package defpackage;

import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zh6 extends cu3 implements mt3 {
    public static final zh6 a = new zh6(1, u75.class, "next", "next()Lkotlin/text/MatchResult;", 0);

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        u75 u75Var = (u75) obj;
        u75Var.getClass();
        CharSequence charSequence = u75Var.b;
        Matcher matcher = u75Var.a;
        int iEnd = matcher.end() + (matcher.end() == matcher.start() ? 1 : 0);
        if (iEnd > charSequence.length()) {
            return null;
        }
        Matcher matcher2 = matcher.pattern().matcher(charSequence);
        matcher2.getClass();
        if (matcher2.find(iEnd)) {
            return new u75(matcher2, charSequence);
        }
        return null;
    }
}
