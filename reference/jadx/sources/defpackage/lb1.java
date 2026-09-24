package defpackage;

import android.text.InputFilter;
import android.text.Spanned;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lb1 implements InputFilter {
    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        for (int i5 = i; i5 < i2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if (Character.isLetterOrDigit(cCharAt) || Character.isWhitespace(cCharAt) || cCharAt == '-') {
                sb.append(cCharAt);
            }
        }
        if (sb.length() == i2 - i) {
            return null;
        }
        return nq7.H0(el1.Y0(nq7.x0(sb.toString(), new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER, "\n"}, 6), TokenAuthenticationScheme.SCHEME_DELIMITER, null, null, null, 62)).toString();
    }
}
