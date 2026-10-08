package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q59 {
    public static final k50 a = new k50(0);
    public static final k50 b = new k50(0);

    public static void a(String str) {
        k50 k50Var = a;
        synchronized (k50Var) {
            if (k50Var.get(str) != null) {
                throw new ClassCastException();
            }
        }
        throw new IllegalStateException("Tried to get the emulator widget endpoint, but no emulator endpoint overrides found.");
    }

    public static String b(String str) {
        k50 k50Var = a;
        synchronized (k50Var) {
            if (k50Var.get(str) != null) {
                throw new ClassCastException();
            }
        }
        return "https://".concat("www.googleapis.com/identitytoolkit/v3/relyingparty");
    }
}
