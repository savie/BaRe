package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xg9 {
    public static final wg9 a = new wg9();
    public static final wg9 b;

    static {
        wg9 wg9Var = null;
        try {
            wg9Var = (wg9) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        b = wg9Var;
    }
}
