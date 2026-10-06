package okhttp3.internal.idn;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class IdnaMappingTableKt {
    public static final int a(int i, String str) {
        str.getClass();
        char cCharAt = str.charAt(i);
        return (cCharAt << 7) + str.charAt(i + 1);
    }
}
