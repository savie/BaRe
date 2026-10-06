package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class hp3 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[hk6.values().length];
        try {
            iArr[hk6.Empty.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[hk6.DriveNotConnected.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[hk6.CloudError.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[hk6.NetworkError.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        a = iArr;
    }
}
