package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 xk3, still in use, count: 1, list:
  (r0v0 xk3) from 0x003a: SPUT (r0v0 xk3) (LINE:59) xk3.default xk3
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
public final class xk3 {
    Name(R.string.name),
    BackupDate(R.string.backup_date),
    SetupDate(R.string.folder_setup_creation_date);

    private final int stringRes;
    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final wk3 Companion = new wk3();

    /* JADX INFO: renamed from: default, reason: not valid java name */
    private static final xk3 f4default = new xk3(R.string.name);

    static {
    }

    private xk3(int i) {
        super(str, i);
        this.stringRes = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public static xk3 valueOf(String str) {
        return (xk3) Enum.valueOf(xk3.class, str);
    }

    public static xk3[] values() {
        return (xk3[]) $VALUES.clone();
    }

    public final String displayString() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(this.stringRes);
        string.getClass();
        return string;
    }

    public final int getStringRes() {
        return this.stringRes;
    }
}
