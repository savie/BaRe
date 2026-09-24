package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class oj2 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[xj2.values().length];
        try {
            iArr[xj2.Loading.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[xj2.NoBackup.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[xj2.DriveNotConnected.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[xj2.NetworkError.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[xj2.BackedUp.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        a = iArr;
    }
}
