package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class dy6 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[b27.values().length];
        try {
            iArr[b27.File.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[b27.Directory.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[b27.SymbolicLink.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[b27.Hardlink.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[b27.Fifo.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[b27.CharacterDevice.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[b27.BlockDevice.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr[b27.Other.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        a = iArr;
    }
}
