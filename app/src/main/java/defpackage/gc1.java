package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class gc1 {
    public static final ai6 a = new ai6("^[A-Za-z][A-Za-z0-9+.-]*://");

    public static String a(String str) {
        String string = str != null ? nq7.H0(str).toString() : null;
        if (string == null) {
            string = "";
        }
        while (true) {
            ai6 ai6Var = a;
            if (!ai6Var.a.matcher(string).find()) {
                return string;
            }
            string = ai6Var.a.matcher(string).replaceFirst("");
            string.getClass();
        }
    }
}
