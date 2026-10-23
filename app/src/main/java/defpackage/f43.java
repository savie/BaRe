package defpackage;

import java.text.ParsePosition;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class f43 extends h43 {
    public final int a;

    public f43(int i) {
        this.a = i;
    }

    @Override // defpackage.h43
    public final boolean a() {
        return true;
    }

    @Override // defpackage.h43
    public final boolean b(l43 l43Var, Calendar calendar, String str, ParsePosition parsePosition, int i) {
        int index = parsePosition.getIndex();
        int length = str.length();
        if (i == 0) {
            while (index < length && Character.isWhitespace(str.charAt(index))) {
                index++;
            }
            parsePosition.setIndex(index);
        } else {
            int i2 = i + index;
            if (length > i2) {
                length = i2;
            }
        }
        while (index < length && Character.isDigit(str.charAt(index))) {
            index++;
        }
        if (parsePosition.getIndex() == index) {
            parsePosition.setErrorIndex(index);
            return false;
        }
        int i3 = Integer.parseInt(str.substring(parsePosition.getIndex(), index));
        parsePosition.setIndex(index);
        calendar.set(this.a, c(l43Var, i3));
        return true;
    }

    public final String toString() {
        return xs1.m(new StringBuilder("NumberStrategy [field="), this.a, "]");
    }

    public int c(l43 l43Var, int i) {
        return i;
    }
}
