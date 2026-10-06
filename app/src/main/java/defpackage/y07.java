package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class y07 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[l27.values().length];
        try {
            iArr[l27.None.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[l27.SevenZipAes.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[l27.Aes256Gcm.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[l27.Aes256GcmSiv.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[l27.Aegis256.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[l27.Aegis128X2.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        a = iArr;
    }
}
