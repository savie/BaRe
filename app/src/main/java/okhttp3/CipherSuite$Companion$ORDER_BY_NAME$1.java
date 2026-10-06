package okhttp3;

import defpackage.pe4;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CipherSuite$Companion$ORDER_BY_NAME$1 implements Comparator<String> {
    @Override // java.util.Comparator
    public final int compare(String str, String str2) {
        String str3 = str;
        String str4 = str2;
        str3.getClass();
        str4.getClass();
        int iMin = Math.min(str3.length(), str4.length());
        for (int i = 4; i < iMin; i++) {
            char cCharAt = str3.charAt(i);
            char cCharAt2 = str4.charAt(i);
            if (cCharAt != cCharAt2) {
                return pe4.f(cCharAt, cCharAt2) < 0 ? -1 : 1;
            }
        }
        int length = str3.length();
        int length2 = str4.length();
        if (length != length2) {
            return length < length2 ? -1 : 1;
        }
        return 0;
    }
}
