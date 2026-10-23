package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class gl3 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[pj3.values().length];
        try {
            iArr[pj3.BaseBackup.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[pj3.IncrementalBackups.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        a = iArr;
    }
}
