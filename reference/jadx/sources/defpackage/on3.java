package defpackage;

import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class on3 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[FolderRestoreStrategy.values().length];
        try {
            iArr[FolderRestoreStrategy.MISSING_ONLY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[FolderRestoreStrategy.OVERWRITE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[FolderRestoreStrategy.FULL_RESTORE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        a = iArr;
    }
}
