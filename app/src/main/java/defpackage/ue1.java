package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class ue1 {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[sd1.values().length];
        try {
            iArr[sd1.INTERNET_CONNECTIVITY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[sd1.FIREBASE_BACKEND_ACCESS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[sd1.ACCESS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[sd1.BACKUP_SCAN.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[sd1.SMALL_ROUND_TRIP.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[sd1.LARGE_ROUND_TRIP.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[sd1.PROVIDER_TRANSFER_PIPELINE.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr[sd1.MULTITHREADED_DOWNLOAD.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr[sd1.THUMBNAIL_DOWNLOAD.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr[sd1.VERSION_UPLOAD.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        a = iArr;
        int[] iArr2 = new int[dd1.values().length];
        try {
            iArr2[dd1.Dropbox.ordinal()] = 1;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr2[dd1.OneDrive.ordinal()] = 2;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr2[dd1.S3.ordinal()] = 3;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            iArr2[dd1.WebDav.ordinal()] = 4;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            iArr2[dd1.CloudMailRu2.ordinal()] = 5;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            iArr2[dd1.Box.ordinal()] = 6;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            iArr2[dd1.TeraBox.ordinal()] = 7;
        } catch (NoSuchFieldError unused17) {
        }
        b = iArr2;
    }
}
