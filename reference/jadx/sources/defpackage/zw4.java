package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zw4 {
    public static final yw4 a;
    public static final yw4 b;

    static {
        s96 s96Var = s96.c;
        yw4 yw4Var = null;
        try {
            yw4Var = (yw4) Class.forName("androidx.datastore.preferences.protobuf.ListFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        a = yw4Var;
        b = new yw4();
    }
}
