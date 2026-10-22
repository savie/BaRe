package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class ny {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[oy.values().length];
        try {
            iArr[oy.Launch.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[oy.EnableDisable.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[oy.Uninstall.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[oy.ForceStop.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[oy.ClearData.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[oy.PlayStore.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[oy.AppInfo.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr[oy.ShareApk.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        a = iArr;
    }
}
