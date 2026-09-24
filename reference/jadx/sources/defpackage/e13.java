package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e13 {
    public static final d13 a = new d13();
    public static final d13 b;

    static {
        s96 s96Var = s96.c;
        d13 d13Var = null;
        try {
            d13Var = (d13) Class.forName("androidx.datastore.preferences.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        b = d13Var;
    }
}
