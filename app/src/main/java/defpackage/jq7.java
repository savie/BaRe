package defpackage;

import java.util.regex.Pattern;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class jq7 {
    public static final /* synthetic */ int a = 0;

    static {
        Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
    }

    public static String a(String str, String str2, String str3) {
        int iIndexOf;
        int iIndexOf2;
        if (!Stream.of(str, str2, str3).noneMatch(new ur5()) || (iIndexOf = str.indexOf(str2)) == -1 || (iIndexOf2 = str.indexOf(str3, str2.length() + iIndexOf)) == -1) {
            return null;
        }
        return str.substring(str2.length() + iIndexOf, iIndexOf2);
    }
}
