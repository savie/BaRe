package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class k54 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[u54.values().length];
        try {
            iArr[u54.APPS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[u54.FOLDERS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[u54.SHORTCUTS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[u54.QUICK_ACTIONS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        a = iArr;
    }
}
