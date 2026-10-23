package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f08 {
    public static String a(String str) {
        str.getClass();
        String strK0 = nq7.K0(nq7.H0(str).toString(), '/');
        if (nq7.j0(strK0)) {
            return "https://www.terabox.com";
        }
        return (uq7.V(strK0, "http://", false) || uq7.V(strK0, "https://", false)) ? strK0 : "https://".concat(strK0);
    }
}
