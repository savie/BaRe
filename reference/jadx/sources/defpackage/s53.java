package defpackage;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s53 {
    public static final Pattern a = Pattern.compile("^(?:(?i)GMT)?([+-])?(\\d\\d?)?(:?(\\d\\d?))?$");
    public static final iz3 b = new iz3(0, 0, false);

    public static iz3 a(String str) {
        if (!"Z".equals(str) && !"UTC".equals(str)) {
            Matcher matcher = a.matcher(str);
            if (!matcher.matches()) {
                return null;
            }
            String strGroup = matcher.group(2);
            boolean z = false;
            int i = strGroup != null ? Integer.parseInt(strGroup) : 0;
            String strGroup2 = matcher.group(4);
            int i2 = strGroup2 != null ? Integer.parseInt(strGroup2) : 0;
            if (i != 0 || i2 != 0) {
                String strGroup3 = matcher.group(1);
                if (strGroup3 != null && strGroup3.charAt(0) == '-') {
                    z = true;
                }
                return new iz3(i, i2, z);
            }
        }
        return b;
    }
}
