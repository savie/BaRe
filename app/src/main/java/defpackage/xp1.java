package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 xp1, still in use, count: 1, list:
  (r0v1 xp1) from 0x0052: SPUT (r0v1 xp1) (LINE:83) xp1.DEFAULT xp1
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
/* JADX INFO: loaded from: classes2.dex */
public final class xp1 {
    NO_COMPRESSION(0),
    FASTEST(1),
    FAST(3),
    NORMAL(5),
    MAXIMUM(7),
    ULTRA(9);

    private final int level;
    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final wp1 Companion = new wp1();
    private static final xp1 DEFAULT = new xp1(1);

    static {
    }

    private xp1(int i) {
        super(str, i);
        this.level = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public static xp1 valueOf(String str) {
        return (xp1) Enum.valueOf(xp1.class, str);
    }

    public static xp1[] values() {
        return (xp1[]) $VALUES.clone();
    }

    public final int getLevel() {
        return this.level;
    }
}
