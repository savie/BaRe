package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zp7 implements i98 {
    public final Pattern a = Pattern.compile(",");
    public final String b = ",";

    @Override // defpackage.i98
    public final Object a(String str) {
        String[] strArrSplit = this.a.split(str);
        for (int i = 0; i < strArrSplit.length; i++) {
            String str2 = strArrSplit[i];
            if (str2 != null) {
                strArrSplit[i] = str2.trim();
            }
        }
        return strArrSplit;
    }

    @Override // defpackage.i98
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String b(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            if (str != null) {
                if (sb.length() > 0) {
                    sb.append(this.b);
                    sb.append(' ');
                }
                sb.append(str);
            }
        }
        return sb.toString();
    }
}
