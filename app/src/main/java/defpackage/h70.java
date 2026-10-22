package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h70 {
    public static final h70 a = new h70();

    public static String a(String str) {
        String strReplace = str.replace('\\', '/');
        strReplace.getClass();
        String strK0 = nq7.K0(strReplace, '/');
        return strK0.length() == 0 ? "/" : strK0;
    }
}
