package defpackage;

import java.text.ParsePosition;
import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g43 extends h43 {
    public Pattern a;

    @Override // defpackage.h43
    public final boolean a() {
        return false;
    }

    @Override // defpackage.h43
    public final boolean b(l43 l43Var, Calendar calendar, String str, ParsePosition parsePosition, int i) {
        Matcher matcher = this.a.matcher(str.substring(parsePosition.getIndex()));
        if (!matcher.lookingAt()) {
            parsePosition.setErrorIndex(parsePosition.getIndex());
            return false;
        }
        parsePosition.setIndex(matcher.end(1) + parsePosition.getIndex());
        c(calendar, matcher.group(1));
        return true;
    }

    public abstract void c(Calendar calendar, String str);

    public String toString() {
        return getClass().getSimpleName() + " [pattern=" + this.a + "]";
    }
}
