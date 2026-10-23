package defpackage;

import android.content.Context;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Uninstall' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oy {
    private static final /* synthetic */ jx2 $ENTRIES;
    private static final /* synthetic */ oy[] $VALUES;
    public static final oy AppInfo;
    public static final oy ClearData;
    public static final my Companion;
    public static final oy ForceStop;
    public static final oy PlayStore;
    public static final oy ShareApk;
    public static final oy Uninstall;
    private final int appActionItemId;
    private final int iconRes;
    private final String id;
    private final int titleRes;
    private final ry tone;
    public static final oy Launch = new oy("Launch", 0, "launch", 1, R.string.launch, R.drawable.ic_launch_mini, ry.Positive);
    public static final oy EnableDisable = new oy("EnableDisable", 1, "enable_disable", 2, R.string.enable_disable_apps, R.drawable.ic_disable, null, 16, null);

    private static final /* synthetic */ oy[] $values() {
        return new oy[]{Launch, EnableDisable, Uninstall, ForceStop, PlayStore, ClearData, AppInfo, ShareApk};
    }

    static {
        ry ryVar = ry.Destructive;
        Uninstall = new oy("Uninstall", 2, "uninstall", 3, R.string.uninstall, R.drawable.ic_delete, ryVar);
        ForceStop = new oy("ForceStop", 3, "force_stop", 4, R.string.force_stop, R.drawable.ic_force_stop, null, 16, null);
        PlayStore = new oy("PlayStore", 4, "play_store", 5, R.string.play_store, R.drawable.ic_google_play, null, 16, null);
        ClearData = new oy("ClearData", 5, "clear_data", 6, R.string.clear_data, R.drawable.ic_clear_data, ryVar);
        AppInfo = new oy("AppInfo", 6, "app_info", 7, R.string.app_info, R.drawable.ic_information, null, 16, null);
        ShareApk = new oy("ShareApk", 7, "share_apk", 8, R.string.share_apk, R.drawable.ic_share, null, 16, null);
        oy[] oyVarArr$values = $values();
        $VALUES = oyVarArr$values;
        $ENTRIES = ly8.q(oyVarArr$values);
        Companion = new my();
    }

    public /* synthetic */ oy(String str, int i, String str2, int i2, int i3, int i4, ry ryVar, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, i2, i3, i4, (i5 & 16) != 0 ? ry.Neutral : ryVar);
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public static /* synthetic */ String title$default(oy oyVar, Context context, ji jiVar, int i, Object obj) {
        if (obj != null) {
            g84.j("Super calls with default arguments not supported in this target, function: title");
            return null;
        }
        if ((i & 2) != 0) {
            jiVar = null;
        }
        return oyVar.title(context, jiVar);
    }

    public static oy valueOf(String str) {
        return (oy) Enum.valueOf(oy.class, str);
    }

    public static oy[] values() {
        return (oy[]) $VALUES.clone();
    }

    public final int getAppActionItemId() {
        return this.appActionItemId;
    }

    public final int getIconRes() {
        return this.iconRes;
    }

    public final String getId() {
        return this.id;
    }

    public final int getTitleRes() {
        return this.titleRes;
    }

    public final ry getTone() {
        return this.tone;
    }

    public final int iconResFor(ji jiVar) {
        jiVar.getClass();
        return (this != EnableDisable || jiVar.getEnabled()) ? this.iconRes : R.drawable.ic_enable;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x005d A[RETURN] */
    public final boolean isAvailable(ji jiVar) {
        jiVar.getClass();
        switch (ny.a[ordinal()]) {
            case 1:
                if (jiVar.isInstalled() && jiVar.getEnabled() && jiVar.isLaunchable()) {
                    return true;
                }
                return false;
            case 2:
                mp6 mp6Var = mp6.a;
                if (mp6.f() && jiVar.isInstalled()) {
                    return true;
                }
                return false;
            case 3:
                if (!jiVar.isInstalled() || jiVar.isBundled()) {
                    return false;
                }
                return true;
            case 4:
            case 5:
                mp6 mp6Var2 = mp6.a;
                if (mp6.f() && jiVar.isInstalled() && jiVar.getEnabled()) {
                    return true;
                }
                return false;
            case 6:
                return true;
            case 7:
            case 8:
                return jiVar.isInstalled();
            default:
                q.j();
                return false;
        }
    }

    public final String title(Context context, ji jiVar) {
        context.getClass();
        if (this != EnableDisable || jiVar == null) {
            String string = context.getString(this.titleRes);
            string.getClass();
            return string;
        }
        String string2 = context.getString(jiVar.getEnabled() ? R.string.disable : R.string.enable);
        string2.getClass();
        return string2;
    }

    private oy(String str, int i, String str2, int i2, int i3, int i4, ry ryVar) {
        super(str, i);
        this.id = str2;
        this.appActionItemId = i2;
        this.titleRes = i3;
        this.iconRes = i4;
        this.tone = ryVar;
    }
}
