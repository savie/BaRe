package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class vb1 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[ec1.values().length];
        try {
            iArr[ec1.CompleteConnection.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[ec1.RetryWithBrowserSignIn.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[ec1.ClearCloudPrefs.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        a = iArr;
    }
}
