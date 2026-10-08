package defpackage;

import java.text.ParsePosition;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d43 extends h43 {
    public final String a;

    public d43(String str) {
        this.a = str;
    }

    @Override // defpackage.h43
    public final boolean a() {
        return false;
    }

    @Override // defpackage.h43
    public final boolean b(l43 l43Var, Calendar calendar, String str, ParsePosition parsePosition, int i) {
        int i2 = 0;
        while (true) {
            String str2 = this.a;
            if (i2 >= str2.length()) {
                parsePosition.setIndex(parsePosition.getIndex() + str2.length());
                return true;
            }
            int index = parsePosition.getIndex() + i2;
            if (index == str.length()) {
                parsePosition.setErrorIndex(index);
                return false;
            }
            if (str2.charAt(i2) != str.charAt(index)) {
                parsePosition.setErrorIndex(index);
                return false;
            }
            i2++;
        }
    }

    public final String toString() {
        return dj7.n(new StringBuilder("CopyQuotedStrategy [formatField="), this.a, "]");
    }
}
