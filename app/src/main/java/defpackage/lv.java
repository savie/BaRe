package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class lv {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[fq.values().length];
        try {
            iArr[fq.Restored.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[fq.ArchivePreservedAppNotInstalled.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[fq.ArchivePreservedRestoreFailed.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        a = iArr;
    }
}
