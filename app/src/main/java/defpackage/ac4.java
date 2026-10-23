package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ac4 {
    public static final Pattern a;
    public static final Pattern b;
    public static final Pattern c;

    static {
        Pattern.compile("^(([1-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){1}(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){2}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$");
        Pattern.compile("^::[fF]{4}:(([1-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){1}(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){2}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$");
        a = Pattern.compile("^[0-9a-fA-F]{1,4}(:[0-9a-fA-F]{1,4}){7}$");
        b = Pattern.compile("^(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)::(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)$");
        c = Pattern.compile("^[a-zA-Z0-9\\-]+$");
    }

    public static boolean a(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (charSequence.charAt(i2) == ':') {
                i++;
            }
        }
        return i >= 2 && i <= 7;
    }

    public static boolean b(CharSequence charSequence) {
        int i = 0;
        while (true) {
            if (i >= charSequence.length()) {
                i = -1;
                break;
            }
            if (charSequence.charAt(i) == '%') {
                break;
            }
            i++;
        }
        Pattern pattern = b;
        Pattern pattern2 = a;
        if (i == -1) {
            if (a(charSequence) && pattern2.matcher(charSequence).matches()) {
                return true;
            }
            return a(charSequence) && pattern.matcher(charSequence).matches();
        }
        CharSequence charSequenceSubSequence = charSequence.subSequence(0, i);
        if ((a(charSequenceSubSequence) && pattern2.matcher(charSequenceSubSequence).matches()) || (a(charSequenceSubSequence) && pattern.matcher(charSequenceSubSequence).matches())) {
            CharSequence charSequenceSubSequence2 = charSequence.subSequence(i + 1, charSequence.length());
            if (charSequenceSubSequence2.length() != 0 && c.matcher(charSequenceSubSequence2).matches()) {
                return true;
            }
        }
        return false;
    }
}
