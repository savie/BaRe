package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qm5 {
    public static final pm5 a;
    public static final pm5 b;

    static {
        s96 s96Var = s96.c;
        pm5 pm5Var = null;
        try {
            pm5Var = (pm5) Class.forName("androidx.datastore.preferences.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        a = pm5Var;
        b = new pm5();
    }
}
