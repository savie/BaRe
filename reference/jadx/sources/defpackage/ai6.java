package defpackage;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ai6 implements Serializable {
    public final Pattern a;

    public ai6(String str, int i) {
        Pattern patternCompile = Pattern.compile(str, 66);
        patternCompile.getClass();
        this.a = patternCompile;
    }

    public final u75 a(int i, String str) {
        str.getClass();
        Matcher matcherRegion = this.a.matcher(str).useAnchoringBounds(false).useTransparentBounds(true).region(i, str.length());
        if (matcherRegion.lookingAt()) {
            return new u75(matcherRegion, str);
        }
        return null;
    }

    public final boolean b(CharSequence charSequence) {
        charSequence.getClass();
        return this.a.matcher(charSequence).matches();
    }

    public final String c(CharSequence charSequence, String str) {
        charSequence.getClass();
        String strReplaceAll = this.a.matcher(charSequence).replaceAll(str);
        strReplaceAll.getClass();
        return strReplaceAll;
    }

    public final String toString() {
        String string = this.a.toString();
        string.getClass();
        return string;
    }

    public ai6(String str) {
        Pattern patternCompile = Pattern.compile(str);
        patternCompile.getClass();
        this.a = patternCompile;
    }
}
