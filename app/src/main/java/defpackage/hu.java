package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class hu {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[iu.values().length];
        try {
            iArr[iu.APP.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[iu.DATA.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[iu.EXTDATA.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[iu.EXPANSION.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[iu.MEDIA.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        a = iArr;
    }
}
