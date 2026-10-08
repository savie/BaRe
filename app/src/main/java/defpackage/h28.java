package defpackage;

import android.content.Context;
import android.os.Build;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v2 h28, still in use, count: 1, list:
  (r0v2 h28) from 0x0032: INVOKE (r0v2 h28) DIRECT call: h28.getValidatedMode():h28 A[MD:():h28 (m), WRAPPED] (LINE:51)
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
public final class h28 {
    LIGHT(0),
    DARK(1),
    SYSTEM_DEFAULT(3);

    private final int themeId;
    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final f28 Companion = new f28();
    private static final h28 DEFAULT_THEME_MODE = new h28(3).getValidatedMode();

    static {
    }

    private h28(int i) {
        super(str, i);
        this.themeId = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final h28 getValidatedMode() {
        return (this != SYSTEM_DEFAULT || Build.VERSION.SDK_INT >= 28) ? this : LIGHT;
    }

    public static h28 valueOf(String str) {
        return (h28) Enum.valueOf(h28.class, str);
    }

    public static h28[] values() {
        return (h28[]) $VALUES.clone();
    }

    public final String asString() {
        int i;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        int i2 = g28.a[ordinal()];
        if (i2 == 1) {
            i = R.string.light_theme;
        } else if (i2 == 2) {
            i = R.string.dark_theme;
        } else {
            if (i2 != 3) {
                q.j();
                return null;
            }
            i = R.string.system_default;
        }
        String string = contextC.getString(i);
        string.getClass();
        return string;
    }

    public final int getThemeId() {
        return this.themeId;
    }
}
