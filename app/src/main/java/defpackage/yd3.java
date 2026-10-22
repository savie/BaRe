package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class yd3 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[zd3.values().length];
        try {
            iArr[zd3.All.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[zd3.MultipleBackups.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[zd3.ProtectedBackups.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[zd3.BackupsWithNotes.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[zd3.BackupOld.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[zd3.BackupNew.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[zd3.InstalledFromGooglePlay.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr[zd3.NotInstalledFromGooglePlay.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        a = iArr;
    }
}
