package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 vk3, still in use, count: 1, list:
  (r0v0 vk3) from 0x0027: SPUT (r0v0 vk3) (LINE:40) vk3.default vk3
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
public final class vk3 {
    Asc,
    Desc;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final uk3 Companion = new uk3();

    /* JADX INFO: renamed from: default, reason: not valid java name */
    private static final vk3 f3default = new vk3();

    static {
    }

    private vk3() {
        super(str, i);
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public static vk3 valueOf(String str) {
        return (vk3) Enum.valueOf(vk3.class, str);
    }

    public static vk3[] values() {
        return (vk3[]) $VALUES.clone();
    }
}
