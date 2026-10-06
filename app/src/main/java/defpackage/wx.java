package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class wx {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[sx.values().length];
        try {
            iArr[sx.Name.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[sx.InstallDate.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[sx.UpdateDate.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[sx.BackupDate.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[sx.AppSize.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[sx.BackupSize.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[sx.DateUsed.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        a = iArr;
    }
}
