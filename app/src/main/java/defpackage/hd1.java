package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class hd1 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[fd1.values().length];
        try {
            iArr[fd1.HTTP.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[fd1.HTTPS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[fd1.FTP.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[fd1.FTPS_EXPLICIT.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[fd1.FTPS_IMPLICIT.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        a = iArr;
    }
}
