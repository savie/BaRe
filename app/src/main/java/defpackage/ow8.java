package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ow8[], still in use, count: 1, list:
  (r0v1 ow8[]) from 0x0038: CONSTRUCTOR (r0v1 ow8[]) A[MD:(java.lang.Enum[]):void (m), WRAPPED] (LINE:57) call: kx2.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ow8 {
    OBJ('{', '}'),
    LIST('[', ']'),
    MAP('{', '}'),
    POLY_OBJ('[', ']');

    public static final /* synthetic */ kx2 n;
    public final char a;
    public final char b;

    static {
        n = new kx2(ow8VarArr);
    }

    public ow8(char c, char c2) {
        super(str, i);
        this.a = c;
        this.b = c2;
    }

    public static ow8 valueOf(String str) {
        return (ow8) Enum.valueOf(ow8.class, str);
    }

    public static ow8[] values() {
        return (ow8[]) k.clone();
    }
}
