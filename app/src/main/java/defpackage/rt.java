package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class rt {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[hk6.values().length];
        try {
            iArr[hk6.Loading.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[hk6.Success.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[hk6.Empty.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[hk6.DriveNotConnected.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[hk6.CloudError.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[hk6.NetworkError.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        a = iArr;
    }
}
