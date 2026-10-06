package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m65 {
    public static final l65 a;
    public static final l65 b;

    static {
        s96 s96Var = s96.c;
        l65 l65Var = null;
        try {
            l65Var = (l65) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        a = l65Var;
        b = new l65();
    }
}
